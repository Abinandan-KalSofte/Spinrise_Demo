Attribute VB_Name = "Spinmod"
Global Const head As String = " Kalsoft "
Global rnd As Double
Global divcode As String
Global REPINDEX As Integer
Global connectstring As String
Global YearNo  As String
Global yfdate As String
Global yldate As String
Global OpgStk As String
Global pdate As Date
Global divname, DivAbbr As String
Global usrid As String
Global ulevel As Integer
Global abc As Long
Global mfdate As Date
Global mldate As Date
Global rh As String
Global rh1 As String
Global ln As String
Global SP As String
Global deltype As String     'Deletion type
Global DelOrdType As String  'Delivery order type
Global ConType As String     'Contract type
Global TrnType As String
Global YarnType As String    'Yarn Type
Global CrType As String      'Credit Type
Global AdjType As String     'Adjustment type
Global SalType
Global Label As String
Global Invoicetype As String 'Invoice type
Global SoldInvType As String 'Sold invoice type
Global InvPrnType As String  'Invoice plain format Print
Global trnyearflg As String 'check for Tranyear empty
Global TypeInd As Integer
Global Prod As String
'Global dv As New DataEnvironment1
'Dim dv1 As New DataEnvironment1
Global MIS_InvType As String
Public nullcheck
'Define the Backend
Global Const backend As String = "Sql Server"
'Define the Module
Global Const Module As String = "Invoicing"
'Declear the Ini file name
Global Const Ini_file As String = "Thambbi_Wsales"
Public Const pagelen As Integer = 64

Public Function NWord(num As Long) As String
Select Case num
    Case Is = 1
        NWord = "One"
    Case Is = 2
        NWord = "Two"
    Case Is = 3
        NWord = "Three"
    Case Is = 4
        NWord = "Four"
    Case Is = 5
        NWord = "Five"
    Case Is = 6
        NWord = "Six"
    Case Is = 7
        NWord = "Seven"
    Case Is = 8
        NWord = "Eight"
    Case Is = 9
        NWord = "Nine"
    Case Is = 10
        NWord = "Ten"
    Case Is = 11
        NWord = "Eleven"
    Case Is = 12
        NWord = "Twelve"
    Case Is = 13
        NWord = "Thirteen"
    Case Is = 14
        NWord = "Fourteen"
    Case Is = 15
        NWord = "Fifteen"
    Case Is = 16
        NWord = "Sixteen"
    Case Is = 17
        NWord = "Seventeen"
    Case Is = 18
        NWord = "Eighteen"
    Case Is = 19
        NWord = "Nineteen"
    Case Is = 20
        NWord = "Twenty"
    Case Is = 30
        NWord = "Thirty"
    Case Is = 40
        NWord = "Forty"
    Case Is = 50
        NWord = "Fifty"
    Case Is = 60
        NWord = "Sixty"
    Case Is = 70
        NWord = "Seventy"
    Case Is = 80
        NWord = "Eighty"
    Case Is = 90
        NWord = "Ninety"
    Case Is = 100
        NWord = "Hundred"
End Select
End Function
Public Sub adddelmod(tol As Object)
On Error Resume Next
'This is used to disable the required buttons when add  operation performs
    tol(0).Enabled = False  'ADD
    tol(1).Enabled = False  'MOD
    tol(2).Enabled = False  'DEL
    tol(3).Enabled = False  'LIST
    tol(4).Enabled = False  'QUERY
    tol(5).Enabled = False  'FIRST
    tol(6).Enabled = False  'NEXT
    tol(7).Enabled = False  'PREVIOUS
    tol(8).Enabled = False  'LAST
    tol(9).Enabled = True   'SAVE
    tol(10).Enabled = True  'CANCEL
    tol(11).Enabled = False 'EXIT
End Sub
Public Sub query(tol As Object)
    On Error Resume Next
    'This procedure for Query
     tol(0).Enabled = True      'ADD
     tol(1).Enabled = True      'MOD
     tol(2).Enabled = True      'DEL
     tol(3).Enabled = True      'LIST
     tol(4).Enabled = True      'QUERY
     tol(5).Enabled = True      'FIRST
     tol(6).Enabled = True      'NEXT
     tol(7).Enabled = True      'PREVIOUS
     tol(8).Enabled = True      'LAST
     tol(9).Enabled = False     'SAVE
     tol(10).Enabled = False    'CANCEL
     tol(11).Enabled = True     'EXIT
End Sub
Public Sub NEWFORM(tol As Object, NO As Integer)
'This is used for cancel  and form load button.
On Error Resume Next
If NO <> 0 Then
On Error Resume Next
Dim DB As New Connection
DB.Open connectstring
Dim rs As New Recordset
rs.Open "SELECT SNO,FORM_NAME,ADD_FLG,MOD_FLG,DEL_FLG FROM USERLEVEL WHERE DIVCODE = '" & divcode & "' AND MODULE =5 AND ULEVEL = " & ulevel & " AND SNO = " & NO, DB
    If rs("ADD_FLG") = "Y" Then tol(0).Enabled = True Else tol(0).Enabled = False
    If rs("MOD_FLG") = "Y" Then tol(1).Enabled = True Else tol(1).Enabled = False
    If rs("DEL_FLG") = "Y" Then tol(2).Enabled = True Else tol(2).Enabled = False
    tol(3).Enabled = True   'LIST
    tol(4).Enabled = True   'LIST
    tol(5).Enabled = True   'FIRST
    tol(6).Enabled = True   'NEXT
    tol(7).Enabled = True   'PREVIOUS
    tol(8).Enabled = True   'LAST
    tol(9).Enabled = False  'SAVE
    tol(10).Enabled = False 'CANCEL
    tol(11).Enabled = True  'EXIT
 Else
    tol(0).Enabled = True   'add
    tol(1).Enabled = True   'mod
    tol(2).Enabled = True   'del
    tol(3).Enabled = True   'LIST
    tol(5).Enabled = True   'FIRST
    tol(6).Enabled = True   'NEXT
    tol(7).Enabled = True   'PREVIOUS
    tol(8).Enabled = True   'LAST
    tol(9).Enabled = False  'SAVE
    tol(10).Enabled = False 'CANCEL
    tol(11).Enabled = True  'EXIT
 End If
End Sub

Public Sub las(tol As Object)
       tol(6).Enabled = False
       tol(8).Enabled = False
       tol(5).Enabled = True
       tol(7).Enabled = True
End Sub
Public Sub FIR(tol As Object)
       tol(5).Enabled = False
       tol(7).Enabled = False
       tol(6).Enabled = True
       tol(8).Enabled = True
End Sub
Public Sub cancl(tol As Object, NO As Integer)
On Error Resume Next
If Opt = 0 Then
Dim DB As New Connection
DB.Open connectstring
Dim rs As New Recordset
rs.Open "SELECT SNO,FORM_NAME,ADD_FLG,MOD_FLG,DEL_FLG FROM USERLEVEL WHERE DIVCODE = '" & divcode & "' AND MODULE =5 AND ULEVEL = " & ulevel & "  AND SNO = " & NO, DB
    If rs("ADD_FLG") = "Y" Then tol(0).Enabled = True Else tol(0).Enabled = False
    If rs("MOD_FLG") = "Y" Then tol(1).Enabled = True Else tol(1).Enabled = False
    If rs("DEL_FLG") = "Y" Then tol(2).Enabled = True Else tol(2).Enabled = False
    tol(3).Enabled = True  'LIST
    tol(5).Enabled = True  'FIRST
    tol(6).Enabled = True  'NEXT
    tol(7).Enabled = True  'PREVIOUS
    tol(8).Enabled = True  'LAST
    tol(9).Enabled = False 'SAVE
    tol(10).Enabled = True 'CANCEL
    tol(11).Enabled = True 'EXIT
Else
    tol(0).Enabled = True  'add
    tol(1).Enabled = True  'mod
    tol(2).Enabled = True  'del
    tol(3).Enabled = True  'LIST
    tol(5).Enabled = True  'FIRST
    tol(6).Enabled = True  'NEXT
    tol(7).Enabled = True  'PREVIOUS
    tol(8).Enabled = True  'LAST
    tol(9).Enabled = False 'SAVE
    tol(10).Enabled = True 'CANCEL
    tol(11).Enabled = True 'EXIT
End If
End Sub

Public Sub navi(tol As Object)
On Error Resume Next
    tol(0).Enabled = False 'ADD
    tol(1).Enabled = False 'MOD
    tol(2).Enabled = False 'DEL
    tol(3).Enabled = False 'LIST
    tol(9).Enabled = False 'SAVE
    tol(10).Enabled = True 'CANCEL
    tol(11).Enabled = True 'EXIT
End Sub
Public Sub PREV(tol As Object)
    tol(5).Enabled = False
    tol(7).Enabled = False
    tol(6).Enabled = True
    tol(8).Enabled = True
End Sub
Public Sub NEX(tol As Object)
    tol(6).Enabled = False
    tol(8).Enabled = False
    tol(5).Enabled = True
    tol(7).Enabled = True
End Sub
Public Function fnyfdate(dmyr)
c = Mid$(dmyr, 4, 2)
If c = "01" Or c = "02" Or c = "03" Then
    fnyfdate = "01/04/" + CStr(Val(Mid$(dmyr, 7, 4)) - 1)
Else
   fnyfdate = "01/04/" + Mid$(dmyr, 7, 4)
End If
End Function

Public Function fnyldate(dmyr)
c = Mid$(dmyr, 4, 2)
If c = "01" Or c = "02" Or c = "03" Then
    fnyldate = "31/03/" + Mid$(dmyr, 7, 4)
Else
    fnyldate = "31/03/" + CStr(Val(Mid$(dmyr, 7, 4)) + 1)
End If
End Function

Public Function fnyopym(dmyr)
c = Mid$(dmyr, 4, 2)
If c = "01" Or c = "02" Or c = "03" Then
    fnyopym = CStr(Val(Mid$(dmyr, 7, 4)) - 1) + "04"
Else
    fnyopym = Mid$(dmyr, 7, 4) + "04"
End If
End Function

Public Function fnmfdate(dmyr)
fnmfdate = "01/" + Mid$(dmyr, 4, 2) + "/" + Mid$(dmyr, 7, 4)
End Function

Public Function fnylastym(dmyr)
c = Mid$(dmyr, 4, 2)
If c = "01" Or c = "02" Or c = "03" Then
    fnylastym = "03" + Mid$(dmyr, 7, 4)
Else
    fnylastym = "03" + CStr(Val(Mid$(dmyr, 7, 4) + 1))
End If
End Function
Public Function fnmldate(dmyr)
Select Case Val(Mid$(dmyr, 4, 2))
Case 1, 3, 5, 7, 8, 10, 12
    fnmldate = "31/" + Mid$(dmyr, 4, 7)
Case 4, 6, 9, 11
    fnmldate = "30/" + Mid$(dmyr, 4, 7)
Case 2
    If Val(Mid$(dmyr, 7, 4)) Mod 4 = 0 Then
        fnmldate = "29/" + Mid$(dmyr, 4, 7)
    Else
        fnmldate = "28/" + Mid$(dmyr, 4, 7)
    End If
End Select
End Function
Public Function Num_To_Word(what_num As Double) As String
'Parameter what_num
   Dim n_hcrore As Double
   Dim n_bcrore As Double
   Dim n_crores As Double
   Dim n_lacs As Double
   Dim n_thousand As Double
   Dim n_hundred As Double
   Dim n_lt100 As Double
   Dim n_paise As Double
   
   
   'STORE 0 TO n_crores, n_lacs, n_thousand, n_hundred, n_lt100, n_paise
   
   ' Maximum Number is 999,99,99,999.99
   
   If what_num <= 0 Or what_num > 9999999999.99 Then
'      Return  'Cannot Print this Number'
   End If
   
   'SET DECIMALS TO 18
   
   If what_num >= 10000000 Then    ' && 1,00,00,000
      n_crores = Int(what_num / 10000000)
   End If
   
   If what_num >= 100000 Then   '  && 1,00,000 THEN
      n_lacs = Int((what_num - (n_crores * 10000000)) / 100000)
   End If
   
   If what_num >= 1000 Then     '&& 1,000
      n_thousand = Int((what_num - (n_crores * 10000000) - (n_lacs * 100000)) / 1000)
   End If
   
   If what_num >= 100 Then     ''&& 100
      n_hundred = Int((what_num - (n_crores * 10000000) - (n_lacs * 100000) - (n_thousand * 1000)) / 100)
   End If
   
   n_lt100a = what_num - (n_crores * 10000000) - (n_lacs * 100000) - (n_thousand * 1000) - (n_hundred * 100)
   
   n_lt100 = Int(n_lt100a)
   
   n_paise = Round(((n_lt100a - n_lt100) * 100), 0)
   
   'SET DECIMALS TO 2
   
   '-------------------
   
   all_word = " "
   
   If Int(what_num) > 0 Then
      If Int(what_num) > 1 Then
         all_word = "Rupees."
      Else
         all_word = "Rupee."
      End If
   End If
   
   '------------- CRORES
   
   If n_crores > 0 Then
      
      If n_crores > 99 Then
         
         n_hcrore = Int(n_crores / 100)             ''&& HUNDRED CRORES
         n_bcrore = n_crores - (n_hcrore * 100)     ''&& BALANCE CRORES
         
         all_word = all_word + " " + base_num(n_hcrore) + "HUNDRED"
         
         If n_bcrore > 0 Then
            all_word = all_word + " " + base_num(n_bcrore)
         End If
         
      Else
         all_word = all_word + " " + base_num(n_crores)
      End If
      
      If n_crores = 1 Then
         all_word = all_word + " CRORE"
      Else
         all_word = all_word + " CRORES"
      End If
      
   End If
   
   
   '------------- LAKHS
   
   If n_lacs > 0 Then
      
      all_word = all_word + " " + base_num(n_lacs)
      
      If n_lacs = 1 Then
         all_word = all_word + " LAKH"
      Else
         all_word = all_word + " LAKHS"
      End If
      
   End If
   
   '------------- THOUSANDS
   
   If n_thousand > 0 Then
      all_word = all_word + " " + base_num(n_thousand) + " THOUSAND"
   End If
   
   '------------- HUNDREDS
   
   If n_hundred > 0 Then
      all_word = all_word + " " + base_num(n_hundred) + " HUNDRED"
   End If
   
   '------------- LESS THAN HUNDRED
   
   If n_lt100 > 0 Then
      all_word = all_word + " " + base_num(n_lt100)
   End If
   
   '------------- PAISE
   
   If n_paise > 0 Then
      
      all_word = all_word + IIf(Int(what_num) > 0, " AND ", "") + "PAISE " + base_num(n_paise)
      
   End If
   
   '------------
   
   all_word = all_word + " ONLY"
   
  ' RETURN (all_word)
  Num_To_Word = all_word



End Function
'!*****************************************************************************
'!
'!       Function: BASE_NUM()
'!
'!*****************************************************************************
Public Function base_num(n_number As Double) As String
Dim n_tens As Double
Dim n_lt19 As Double

  ' Parameter n_number
   
   c_word = ""
   
   If n_number <> 0 Then
      
      c_tens = ""
      c_lt19 = ""
      n_tens = 0
      n_lt19 = 0
      
      If n_number > 19 Then
         n_tens = Int((n_number / 10)) * 10
         n_lt19 = n_number - n_tens
      Else
         n_lt19 = n_number
      End If
      
      If n_tens <> 0 Then
         c_tens = num_inword(n_tens) + IIf(n_lt19 <> 0, " ", "")
      End If
      
      c_lt19 = num_inword(n_lt19)
      
      c_word = c_tens + c_lt19
      
   End If
   
   base_num = c_word
   
   End Function



'!*****************************************************************************
'!
'!       Function: NUM_INWORD()
'!
'!*****************************************************************************
Public Function num_inword(in_num As Double) As String
 '  Parameter in_num
   out_word = ""
 
   Select Case in_num
   Case 1
      out_word = "ONE"
   Case 2
      out_word = " TWO"
   Case 3
      out_word = " THREE"
   Case 4
      out_word = "FOUR"
   Case 5
      out_word = "FIVE"
   Case 6
      out_word = "SIX"
   Case 7
      out_word = "SEVEN"
   Case 8
      out_word = "EIGHT"
   Case 9
      out_word = "NINE"
   Case 10
      out_word = "TEN"
   Case 11
      out_word = "ELEVEN"
   Case 12
      out_word = "TWELVE"
   Case 13
      out_word = "THIRTEEN"
   Case 14
      out_word = "FOURTEEN"
   Case 15
      out_word = "FIFTEEN"
   Case 16
      out_word = "SIXTEEN"
   Case 17
      out_word = "SEVENTEEN"
   Case 18
      out_word = "EIGHTEEN"
   Case 19
      out_word = "NINETEEN"
   Case 20
      out_word = "TWENTY"
   Case 30
      out_word = "THIRTY"
   Case 40
      out_word = "FORTY"
   Case 50
      out_word = "FIFTY"
   Case 60
      out_word = "SIXTY"
   Case 70
      out_word = "SEVENTY"
   Case 80
      out_word = "EIGHTY"
   Case 90
      out_word = "NINETY"
   End Select
      'RETURN (out_word)
  '    out_word = "SIXTY"
    num_inword = out_word
      
End Function
': EOF: TSAYWORD.PRG


Public Sub enabdisab(tol)
Set NewCon = New Connection
NewCon.Open connectstring
Set butenabrs = New Recordset
butenabrs.Open "select addition,modification,deletion,additionno,modificationno,deletionno from pp_level where alevel = " & ulevel & " ", NewCon, adOpenStatic
    'addno
    If butenabrs(0).Value = "N" Then
        tol(0).Enabled = False  'ADD
    ElseIf butenabrs(0).Value = "Y" And butenabrs(3).Value = "Y" And addno = "Y" Then
        tol(0).Enabled = False  'ADD
    ElseIf butenabrs(0).Value = "Y" Then
        tol(0).Enabled = True  'ADD
    End If
    
    If butenabrs(1).Value = "N" Then
        tol(1).Enabled = False  'MOD
    Else: butenabrs(1).Value = "N"
        tol(1).Enabled = True  'MOD
    End If
    
    If butenabrs(2).Value = "N" Then
        tol(2).Enabled = False  'DEL
    Else
        tol(2).Enabled = True  'DEL
    End If
    

End Sub


Public Sub Norecfound(tol As Object)
'This is used to disable the required buttons when add  operation performs
    tol(0).Enabled = True 'ADD
    tol(1).Enabled = False  'MOD
    tol(2).Enabled = False  'DEL
    tol(3).Enabled = False  'LIST
    'TOL(4).Enabled = False  'QUERY
    tol(5).Enabled = False  'FIRST
    tol(6).Enabled = False  'NEXT
    tol(7).Enabled = False  'PREVIOUS
    tol(8).Enabled = False  'LAST
    tol(9).Enabled = False  'SAVE
    tol(10).Enabled = False  'CANCEL
    tol(11).Enabled = True 'EXIT
End Sub

Public Sub ToAlphanum1(obj As Object, maxlen As Integer, KeyAscii As Integer)
   If (KeyAscii >= 97 And KeyAscii <= 122) Then
    ElseIf Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
             KeyAscii = 32 Or KeyAscii >= 44 And KeyAscii <= 59) Then
         KeyAscii = 0
    End If
    If Len(obj) = maxlen And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
    Beep
    End If
End Sub
Public Sub validlen(obj As Object, maxlen As Integer, KeyAscii As Integer)
 If (KeyAscii >= 97 And KeyAscii <= 122) Then
    ElseIf Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
             KeyAscii = 32 Or KeyAscii >= 49 And KeyAscii <= 59) Then
         KeyAscii = 0
    End If
    If Len(obj) = maxlen And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
    Beep
    End If
End Sub
Public Sub ToUpCase(Ofld As Object, KeyAscii As Integer, Optional maxlen As Integer)
    If maxlen = 0 Then maxlen = 50
    'If Len(Trim(Ofld)) < maxlen Then
    If (KeyAscii >= 97 And KeyAscii <= 122) Then
        KeyAscii = KeyAscii - 32
    End If
    If (KeyAscii = 9 Or KeyAscii = 13) Then
        KeyAscii = 0
    End If
End Sub
Public Sub tonumary(obj As Object, maxlen As Integer, KeyAscii As Integer, Index As Integer)
 If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
    'to allow numbers,decimal pt and backspace
    Else
        KeyAscii = 0
        
    End If
    If Not (InStr(obj(Index).Text, ".") = 0) And KeyAscii = 46 Then
    'to check for 2nd occurence of decimal pt
    KeyAscii = 0
    End If
    If Not (InStr(obj(Index).Text, ".") = 0) And Len(obj(Index)) - InStr(obj(Index), ".") = 2 And Not (KeyAscii = 8) And Not (KeyAscii = 9) Then
         KeyAscii = 0
    End If
    If Len(obj(Index)) = maxlen And KeyAscii <> 46 And (InStr(obj(Index), ".") = 0) And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
    End If
End Sub
Public Sub ToDate(obj As Object, KeyAscii As Integer)
    If Not ((KeyAscii >= 47 And KeyAscii <= 57) Or _
             KeyAscii = 8 Or KeyAscii = 9) Then
        KeyAscii = 0
    End If
    If KeyAscii = 47 And Not (Len(obj) = 2 Or Len(obj) = 5) Then KeyAscii = 0
    If (KeyAscii >= 48 And KeyAscii <= 57) And (Len(obj) = 2 Or Len(obj) = 5) Then KeyAscii = 0
End Sub
Public Sub ToNum(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)

    If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Or KeyAscii = 13 Then
    Else
        KeyAscii = 0
    End If
    If Not (InStr(obj.Text, ".") = 0) And KeyAscii = 46 Then
    KeyAscii = 0
    End If
    If Not (InStr(obj, ".") = 0) And Len(obj) - InStr(obj, ".") = 2 And Not (KeyAscii = 8) And Not (KeyAscii = 9) Then
         KeyAscii = 0
    End If
    If Len(obj) = maxlen And KeyAscii <> 46 And (InStr(obj, ".") = 0) And Not (KeyAscii = 13) And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
   End If

End Sub
Public Sub ToWeight(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)

    If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Or KeyAscii = 13 Then
    Else
        KeyAscii = 0
    End If
    If Not (InStr(obj.Text, ".") = 0) And KeyAscii = 46 Then
    KeyAscii = 0
    End If
    If Not (InStr(obj, ".") = 0) And Len(obj) - InStr(obj, ".") = 3 And Not (KeyAscii = 8) And Not (KeyAscii = 9) Then
         KeyAscii = 0
    End If
    If Len(obj) = maxlen And KeyAscii <> 46 And (InStr(obj, ".") = 0) And Not (KeyAscii = 13) And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
   End If

End Sub

Public Sub Tomarks(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)
    If KeyAscii = 46 Or KeyAscii = 65 Or KeyAscii = 97 Or KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Or KeyAscii = 13 Then
    Else
        KeyAscii = 0
    End If
    If Not (InStr(obj.Text, ".") = 0) And KeyAscii = 46 Then
    KeyAscii = 0
    End If
    If Not (InStr(obj, ".") = 0) And Len(obj) - InStr(obj, ".") = 2 And Not (KeyAscii = 8) And Not (KeyAscii = 9) Then
         KeyAscii = 0
    End If
    If Len(obj) = maxlen And KeyAscii <> 46 And (InStr(obj, ".") = 0) And Not (KeyAscii = 13) And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
   End If
End Sub
Public Sub tolowcase(Ofld As Object, KeyAscii As Integer)
    If (KeyAscii >= 65 And KeyAscii <= 90) Then
        KeyAscii = KeyAscii + 32
    End If
End Sub

Public Sub ToAlphaNumber(Ofld As Object, maxlen As Integer, KeyAscii As Integer)
If Len(Ofld) < maxlen Then
    If Not ((KeyAscii >= 48 And KeyAscii <= 57) Or _
             (KeyAscii >= 65 And KeyAscii <= 90) Or _
            (KeyAscii >= 97 And KeyAscii <= 122) Or _
            KeyAscii = 32 Or KeyAscii = 45 Or KeyAscii = 95 Or _
            KeyAscii = 47 Or KeyAscii = 37 Or KeyAscii = 9 Or KeyAscii = 8) Then
        KeyAscii = 0
    End If
 Else
    If Not (KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13) Then KeyAscii = 0
 End If
End Sub

Public Sub ToAlpha(fld As Object, maxlen As Integer, KeyAscii As Integer)
If Len(fld) < maxlen Then
    If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
           (KeyAscii >= 97 And KeyAscii <= 122) Or _
            KeyAscii = 32 Or KeyAscii = 9 Or KeyAscii = 46 Or KeyAscii = 44 Or KeyAscii = 13) Then
            KeyAscii = 0
    End If
Else
    KeyAscii = 0
End If
End Sub
Public Sub Tochar(fld As Object, KeyAscii As Integer)
    If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
           (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 32 Or KeyAscii = 9 Or KeyAscii = 46 Or KeyAscii = 44 Or KeyAscii = 13) Then
        KeyAscii = 0
    End If

End Sub

Public Sub ToNumber(obj As Object, maxlen As Integer, KeyAscii As Integer)
 On Error Resume Next
    If Not (((KeyAscii >= 48 And KeyAscii <= 57) Or _
             KeyAscii = 8) Or KeyAscii = 9) Then
        KeyAscii = 0
    ElseIf Len(obj) = maxlen And KeyAscii <> 8 And KeyAscii <> 9 Then
        KeyAscii = 0
    End If
End Sub

Public Sub ToFloatNo(obj As Object, KeyAscii As Integer)
    If Not ((KeyAscii >= 48 And KeyAscii <= 57) Or _
             KeyAscii = 8 Or KeyAscii = 46) Then
        KeyAscii = 0
    End If
End Sub

Public Sub ToNumPhone(obj As Object, KeyAscii As Integer)
    If Not ((KeyAscii >= 48 And KeyAscii <= 57) Or _
             KeyAscii = 8 Or KeyAscii = 47 Or KeyAscii = 44 Or _
                             KeyAscii = 45 Or KeyAscii = 95) Then
        KeyAscii = 0
    End If
End Sub
Public Sub Initials(obj As Object, KeyAscii As Integer)
    If (KeyAscii >= 65 And KeyAscii <= 90 Or _
        KeyAscii >= 97 And KeyAscii <= 122 Or _
        KeyAscii >= 48 And KeyAscii <= 57 Or KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9) Then
        On Error Resume Next
        If (Len(obj) = 0 And (KeyAscii >= 97 And KeyAscii <= 122)) Then
                KeyAscii = KeyAscii - 32
        ElseIf Len(obj) <= 2 And (KeyAscii = 13) Then
                KeyAscii = 0
        ElseIf Len(obj) >= 2 Then
            If Mid(obj, Len(obj), 1) = "." Or _
                Mid(obj, Len(obj), 1) = " " _
                And (KeyAscii >= 97 And KeyAscii <= 122) Then
                 If Not KeyAscii = 8 Then KeyAscii = KeyAscii - 32
            End If
        End If
    Else
        KeyAscii = 0
    End If
End Sub
'prevents entry of all special characters
Public Sub fchar(obj As Object, KeyAscii As Integer)
   If (KeyAscii > 32 And KeyAscii <= 47 Or _
        KeyAscii >= 58 And KeyAscii <= 64 Or _
        KeyAscii >= 91 And KeyAscii <= 96 Or _
        KeyAscii >= 123 And KeyAscii <= 126) Then
        On Error Resume Next
        KeyAscii = 0
    End If
End Sub
Public Sub ToAlphanum(obj As Object, maxlen As Integer, KeyAscii As Integer)
    If (KeyAscii >= 97 And KeyAscii <= 122) Then
    ElseIf Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
             KeyAscii = 32 Or KeyAscii >= 44 And KeyAscii <= 59) Then
         KeyAscii = 0
    End If
    If Len(obj) = maxlen And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
    Beep
    End If
End Sub
Public Function Record_Exists(tname As String, Optional Message As String) As Boolean
On Error Resume Next
Set cn2 = New Connection
cn2.Open connectstring
Set rs = New Recordset
rs.Open "select count(*) from " & tname & "", cn2
 If rs(0) = 0 Then
     If Trim(Message) = "" Then
        MsgBox "No Records Found ", vbInformation, head
     Else
        MsgBox Message, vbInformation, head
     End If
        Screen.MousePointer = 0
        Opt = ""
        Record_Exists = False
        Exit Function
    End If

Record_Exists = True
End Function
Public Function Padr(TStr As Variant, Tlen As Integer, Tchar As String) As String
    Dim lnlen As Integer
    If Tchar = "" Then Tchar = " "
    If IsNull(TStr) Then
        TStr = ""
    End If
    TStr = Trim(TStr)
    lnlen = Len(TStr)
    Select Case lnlen
        Case Is < Tlen
            Padr = TStr & String(Tlen - lnlen, Tchar)
        Case Is >= Tlen
            Padr = Left(TStr, Tlen)
    End Select
End Function
Public Function Padl(TStr As Variant, Tlen As Integer, Tchar As String) As String
On Error Resume Next
    Dim lnlen As Integer
    If Tchar = "" Then Tchar = " "
    If IsNull(TStr) Then
        TStr = ""
     End If
    TStr = Trim(TStr)
    lnlen = Len(TStr)
    Select Case lnlen
        Case Is < Tlen
              Padl = String(Tlen - lnlen, Tchar) & TStr
        Case Is >= Tlen
            Padl = Left(TStr, Tlen)
    End Select
End Function
Public Function Table_Exists(table_name As String) As Boolean
    On Error GoTo err1
    table_name = UCase(table_name)
    Dim TDb As New Connection
    Dim tRs As New Recordset
    TDb.CursorLocation = adUseClient
    TDb.Open connectstring
    tRs.Open "SELECT * FROM dbo.sysobjects WHERE UPPER(name) = '" & table_name & "'", TDb, adOpenStatic, adLockReadOnly
    If tRs.RecordCount > 0 Then
        tRs.Close
        TDb.Close
        Table_Exists = True
        Exit Function
    End If
    tRs.Close
    TDb.Close
    Table_Exists = False
    Exit Function
    
err1:
    MsgBox "Unable To Test Existence Of Table", vbInformation, head
    'Exit Sub
End Function
Public Function CENTRE(TStr As Variant, Tlen As Double, Tchar As String) As String
    If Tchar = "" Then Tchar = " "
    If IsNull(TStr) Then
        TStr = ""
    End If
    TStr = CStr(TStr)
    Dim Lstr As String
    Lstr = String(Round(Tlen - Len(TStr)) / 2, Tchar) + TStr + String(Round(Tlen - Len(TStr)) / 2, Tchar)
    CENTRE = Lstr
End Function
Public Function GiveMonthName(mth As Variant)
    mth = Padl(mth, 2, "0")
    Select Case mth
        Case "01"
            GiveMonthName = "January"
        Case "02"
            GiveMonthName = "February"
        Case "03"
            GiveMonthName = "March"
        Case "04"
            GiveMonthName = "April"
        Case "05"
            GiveMonthName = "May"
        Case "06"
            GiveMonthName = "June"
        Case "07"
            GiveMonthName = "July"
        Case "08"
            GiveMonthName = "August"
        Case "09"
            GiveMonthName = "September"
        Case "10"
            GiveMonthName = "October"
        Case "11"
            GiveMonthName = "November"
        Case "12"
            GiveMonthName = "December"
        Case Else
            GiveMonthName = "Invalid"
    End Select
End Function
Public Function INF(Inval As Variant, dLen As Integer)
    
    '--- INF Function Developed by Mr. C. Sivakumar
    '--- on behalf of M/s. Kalpatharu Software Limited
    '--- Tested and Corrected by N.Senthilchinnappa (09/04/2002)
    
    If IsNull(Inval) Then
        Inval = 0
    End If
    
    Dim cDecimals As String
    Dim cInteger As String
    Dim cMoney As String
    Dim nIntLen As Integer
    Dim ndecimals As Variant
    
    If Val(Inval) <> 0 Then
        
      If Inval < 0 Then
        ndecimals = Round(-Inval - Int(-Inval), dLen)
      Else
        ndecimals = Round(Inval - Int(Inval), dLen)
      End If
      
       If Int(Inval) = Inval Then
            cDecimals = "." + String(dLen, "0")
            cInteger = Format(Inval, "##")
        Else
            If Inval < 0 Then
                cDecimals = Format(-Inval - Int(-Inval), "##." + String(dLen, "0"))
                cInteger = "-" + Format(Int(-Inval), "##")
            Else
                cDecimals = Format(Inval - Int(Inval), "##." + String(dLen, "0"))
                cInteger = Format(Int(Inval), "##")
            End If
        End If
        
        If Val(cDecimals) >= 1 Then
            cInteger = Val(cInteger) + Val(cDecimals)
            cDecimals = "." + String(dLen, "0")
        End If
        
        
        
        If Val(cInteger) < 0 Then
            nIntLen = Len(CStr(-Val(cInteger)))
        Else
            nIntLen = Len(cInteger)
        End If
        
        If nIntLen < 4 Then
            cInteger = cInteger
        ElseIf nIntLen < 6 Then
            cInteger = Left(cInteger, 2 - (5 - Len(cInteger))) + "," + Right(cInteger, 3)
        ElseIf nIntLen < 8 Then
            cInteger = Left(cInteger, 2 - (7 - Len(cInteger))) + "," + Mid(cInteger, 3 - (7 - Len(cInteger)), 2) + "," + Right(cInteger, 3)
        ElseIf nIntLen < 11 Then
            cInteger = Left(cInteger, 3 - (10 - Len(cInteger))) + "," + Mid(cInteger, 4 - (10 - Len(cInteger)), 2) + "," + Mid(cInteger, 6 - (10 - Len(cInteger)), 2) + "," + Right(cInteger, 3)
        ElseIf nIntLen < 13 Then
            cInteger = Left(cInteger, 2 - (12 - Len(cInteger))) + "," + Mid(cInteger, 3 - (12 - Len(cInteger)), 3) + "," + Mid(cInteger, 6 - (12 - Len(cInteger)), 2) + "," + Mid(cInteger, 8 - (12 - Len(cInteger)), 2) + "," + Right(cInteger, 3)
        ElseIf nIntLen < 15 Then
            cInteger = Left(cInteger, 2 - (14 - Len(cInteger))) + "," + Mid(cInteger, 3 - (14 - Len(cInteger)), 2) + "," + Mid(cInteger, 5 - (14 - Len(cInteger)), 3) + "," + Mid(cInteger, 8 - (14 - Len(cInteger)), 2) + "," + Mid(cInteger, 10 - (14 - Len(cInteger)), 2) + "," + Right(cInteger, 3)
        End If
        
        If nIntLen < 15 Then
            If Not dLen = 0 Then
                INF = cInteger + cDecimals
            Else
               ' INF = Format(cInteger, "#0.00")
                INF = cInteger
            End If
        Else
            INF = "*** Overflow ***"
        End If
    Else
            INF = " "
    End If
End Function



