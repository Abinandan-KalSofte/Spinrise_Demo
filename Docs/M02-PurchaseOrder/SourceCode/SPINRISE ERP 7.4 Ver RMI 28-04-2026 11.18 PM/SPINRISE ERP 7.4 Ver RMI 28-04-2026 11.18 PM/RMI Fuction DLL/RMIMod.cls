VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "RMIMod"
Attribute VB_GlobalNameSpace = True
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True

Public f1                As String
Public t1                As String
Public addno             As String
Public usrid             As String
Public NewCon            As New Connection
Public connectstring     As String
Public conn              As String
Public butenabrs As New Recordset
Public del_opt As Integer
Public Code As String
Public sDateFrom As String
Public sDateTo As String
Public listfield1 As String
Public listfield2 As String
Public Table As String
Public description As String
Public Rs           As New Recordset
Public rst          As New Recordset

Public pdate As Date
Public loc_RepIndex As Integer
Public mfdate As Date
Public mldate As Date
Public yfdate As Date
Public yldate As Date
Public yearmonth As String
Public DIVNAME As String
Public GSTRDBNAME As String
Public sqluser As String
Public sqlpwd As String
Public divcode As String
Public YearNo  As String
Public divabbr As String

Public ulevel As Integer
Public Repindex As Double 'Used to call reports from menu
Public cn1 As New Connection, Cn As New Connection
Public DB As New Connection
Public qryindex As Integer
Public Error As String
Public recflg As Integer
Public Suplen As String
Public PartyType As String
Public brokertype As String
Public PartyBroker As String
Public EXITflg As String

'Declear the Ini file name
Public Ini_file As String
Public mixindex As Integer
Public UserName As String
Public GSNO As Integer
'Public GSTRDBNAME As String
Public gUserID  As String


Public DBUser As String
Public DBPWD As String
Public GSERVER As String
Dim rs1 As New Recordset
    

Public Sub openconnection()
    On Error GoTo erm
    
    Set Cn = New Connection
    Cn.CursorLocation = adUseClient
    
    If Cn.State = 1 Then
      Cn.Close
    End If

    Cn.ConnectionString = "provider=msdatashape;" & connectstring
   
    If Cn.State = adStateclose Then
        Cn.Open
    End If
    
    Error = 0

erm:
       If Err.Number = -2147467259 Then
            MsgBox "Not a valid Database or valid SQL Server", vbInformation, head
            Error = 200
    ElseIf Err.Number = -2147217843 Then
        MsgBox "Not a valid User ID or Incorrect Password", vbInformation, head
        Error = Err.Number
    End If
End Sub
Public Static Sub QueryCat(sQry As String, Optional ByRef vReturn As Variant)
Dim sBuff As Variant
    If IsMissing(vReturn) Then
        If IsEmpty(sBuff) Then
            sBuff = sQry
        Else
            sBuff = sBuff & vbCrLf & sQry
        End If
    Else
        vReturn = ""
        vReturn = sBuff & vbCrLf & sQry
        sBuff = Empty
    End If
End Sub
Public Sub repproc(recsource, cod, codname, lbcp1, lbcp2, LB1 As Object, LB2 As Object, AD As Object, cb1 As Object, cb2 As Object)
WindowState = 2
AD.ConnectionString = connectstring
AD.RecordSource = "select distinct " & cod & "+' - '+" & codname & " fld  from " & recsource & " order by 1"
AD.Refresh
LB1.Caption = lbcp1
LB2.Caption = lbcp2
WindowState = 2
'Filling the comboboxes  with records  from the table
Set cb1.RowSource = AD
Set cb2.RowSource = AD
cb1.ListField = "fld"
cb2.ListField = "fld"
AD.Recordset.MoveFirst
cb1.Text = AD.Recordset(0)
AD.Recordset.MoveLast
cb2.Text = AD.Recordset(0)
End Sub

Public Sub qrymode(tol As Object, d As Boolean)
tol(5).Enabled = Not d
tol(6).Enabled = Not d
tol(7).Enabled = Not d
tol(8).Enabled = Not d
End Sub
Public Sub adddelmod(tol As Object)
    'This is used to disable the required buttons when add  operation performs
    
    On Error Resume Next
    
    tol(0).Enabled = False  'ADD
    tol(1).Enabled = False  'MOD
    tol(2).Enabled = False  'DEL
    tol(3).Enabled = False  'LIST
    tol(4).Enabled = False  'Find
    tol(5).Enabled = False  'FIRST
    tol(6).Enabled = False  'NEXT
    tol(7).Enabled = False  'PREVIOUS
    tol(8).Enabled = False  'LAST
    tol(9).Enabled = True  'SAVE
    tol(10).Enabled = True  'CANCEL
    tol(11).Enabled = False 'EXIT
    'tol(12).Enabled = False 'PRINT
End Sub

Public Sub Query(tol As Object)
    'This procedure for Query
     tol(0).Enabled = False  'ADD
     tol(1).Enabled = False  'MOD
     tol(2).Enabled = False  'DEL
     'tol(3).Enabled = True  'LIST
     tol(4).Enabled = True  'QUERY
     tol(5).Enabled = True   'FIRST
     tol(6).Enabled = True   'NEXT
     tol(7).Enabled = True   'PREVIOUS
     tol(8).Enabled = True   'LAST
     tol(9).Enabled = False 'SAVE
     tol(10).Enabled = True  'CANCEL
     tol(11).Enabled = True 'EXIT
End Sub

Public Sub NEWFORM(tol As Object)
    'This is used for cancel  and form loadbutton.
    On Error Resume Next
    
    tol(0).Enabled = True
    tol(1).Enabled = True
    tol(2).Enabled = True
    tol(3).Enabled = True 'LIST
    tol(4).Enabled = True  'Find
    tol(5).Enabled = True  'FIRST
    tol(6).Enabled = True  'NEXT
    tol(7).Enabled = True  'PREVIOUS
    tol(8).Enabled = True  'LAST
    tol(9).Enabled = False 'SAVE
    tol(10).Enabled = False 'CANCEL
    tol(11).Enabled = True  'EXIT
'    tol(12).Enabled = True 'Print
    On Error Resume Next
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
Public Sub cancl(tol As Object)
    
    On Error Resume Next
    
    tol(0).Enabled = True 'ADD
    tol(1).Enabled = True 'MOD
    tol(2).Enabled = True 'DEL
    tol(3).Enabled = True 'LIST
    tol(4).Enabled = True 'FIND
    tol(8).Enabled = True  'LAST
    tol(5).Enabled = True  'FIRST
    tol(6).Enabled = True  'NEXT
    tol(7).Enabled = True  'PREVIOUS
    tol(9).Enabled = False 'SAVE
    tol(10).Enabled = False 'CANCEL
    tol(11).Enabled = True  'EXIT
End Sub

Public Sub navi(tol As Object)
    tol(0).Enabled = True 'ADD
    tol(1).Enabled = True 'MOD
    tol(2).Enabled = True 'DEL
    On Error Resume Next
    tol(3).Enabled = True 'LIST
   ' tol(4).Enabled = False 'QUERY
    tol(9).Enabled = False 'SAVE
    tol(10).Enabled = False 'CANCEL
    tol(11).Enabled = True  'EXIT
End Sub
Public Sub Recfound(tol As Object)
    tol(0).Enabled = True 'ADD
    tol(1).Enabled = True 'MOD
    tol(2).Enabled = True 'DEL
    tol(3).Enabled = True 'LIST
    tol(5).Enabled = True 'FIRST
    tol(6).Enabled = True 'NEXT
    tol(7).Enabled = True 'PREVIOUS
    tol(8).Enabled = True  'LAST
    tol(9).Enabled = False 'SAVE
    tol(10).Enabled = False 'cancel
End Sub
Public Sub Norecfound(tol As Object)
    On Error Resume Next
    tol(0).Enabled = True 'ADD
    tol(1).Enabled = False 'MOD
    tol(2).Enabled = False 'DEL
    tol(3).Enabled = False 'LIST
    tol(4).Enabled = False 'Query
    tol(5).Enabled = False 'FIRST
    tol(6).Enabled = False 'NEXT
    tol(7).Enabled = False 'PREVIOUS
    tol(8).Enabled = False  'LAST
    tol(9).Enabled = False  'SAVE
    tol(10).Enabled = False  'CANCEL
    tol(11).Enabled = True
End Sub
Public Sub prev(tol As Object)
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
Set Rs = New Recordset
Rs.Open "select ayfdate from pp_year where ayfdate<='" & Format(dmyr, "yyyy-mm-dd") & "' and ayldate>='" & Format(dmyr, "yyyy-mm-dd") & "'", connectstring, adOpenStatic, adLockBatchOptimistic
If Rs.RecordCount > 0 Then
fnyfdate = Format(Rs(0), "dd/mm/yy")
End If
'c = Mid$(dmyr, 4, 2)
'If c = "01" Or c = "02" Or c = "03" Then
'    fnyfdate = "01/04/" + CStr(Val(Mid$(dmyr, 7, 4)) - 1)
'Else
'   fnyfdate = "01/04/" + Mid$(dmyr, 7, 4)
'End If
End Function
Public Function fnyldate(dmyr)
Set Rs = New Recordset
Rs.Open "select ayldate from pp_year where ayfdate<='" & Format(dmyr, "yyyy-mm-dd") & "' and ayldate>='" & Format(dmyr, "yyyy-mm-dd") & "'", connectstring, adOpenStatic, adLockBatchOptimistic
If Rs.RecordCount > 0 Then
fnyldate = Format(Rs(0), "dd/mm/yyyy")
End If
'c = Mid$(dmyr, 4, 2)
'If c = "01" Or c = "02" Or c = "03" Then
'    fnyldate = "31/03/" + Mid$(dmyr, 7, 4)
'Else
'    fnyldate = "31/03/" + CStr(Val(Mid$(dmyr, 7, 4)) + 1)
'End If
End Function
Public Function fnyopym(dmyr)
Set Rs = New Recordset
Rs.Open "select ayfdate from pp_year where ayfdate<='" & Format(dmyr, "yyyy-mm-dd") & "' and ayldate>='" & Format(dmyr, "yyyy-mm-dd") & "'", connectstring, adOpenStatic, adLockBatchOptimistic
If Rs.RecordCount > 0 Then
fnyopym = Format(Rs(0), "yyyy") & Format(Rs(0), "mm")
End If
'c = Mid$(dmyr, 4, 2)
'If c = "01" Or c = "02" Or c = "03" Then
'    fnyopym = CStr(Val(Mid$(dmyr, 7, 4)) - 1) + "04"
'Else
'    fnyopym = Mid$(dmyr, 7, 4) + "04"
'End If
End Function
Public Function fnmfdate(dmyr)
fnmfdate = "01/" + Mid$(dmyr, 4, 2) + "/" + Mid$(dmyr, 7, 4)
End Function
Public Function fnylastym(dmyr)
Set Rs = New Recordset
Rs.Open "select ayldate from pp_year where ayfdate<='" & Format(dmyr, "yyyy-mm-dd") & "' and ayldate>='" & Format(dmyr, "yyyy-mm-dd") & "'", connectstring, adOpenStatic, adLockBatchOptimistic
If Rs.RecordCount > 0 Then
fnylastym = Format(Rs(0), "dd/mm/yyyy")
End If
'c = Mid$(dmyr, 4, 2)
'If c = "01" Or c = "02" Or c = "03" Then
'    fnylastym = "03" + Mid$(dmyr, 7, 4)
'Else
'    fnylastym = "03" + CStr(Val(Mid$(dmyr, 7, 4) + 1))
'End If
End Function
Public Function fnmldate(dmyr)
'fnmldate = DateAdd("d", -1 * Day(DateAdd("m", 1, dmyr)), DateAdd("m", 1, dmyr))
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
'Public Sub pro1(ad1 As Adodc, TABNAME As String, cod, cMB1 As Object, CMB2 As Object, COL1 As String, COL2 As String)
''procedure to fill comboboxes with data
'ad1.ConnectionString = connectstring
'ad1.RecordSource = "SELECT cast(" & COL1 & " as varchar) +'_'+" & COL2 & " FLD FROM " + TABNAME + " order by " + cod
'ad1.Refresh
'Set cMB1.RowSource = ad1
'Set CMB2.RowSource = ad1
'cMB1.ListField = "FLD"
'CMB2.ListField = "FLD"
'ad1.Recordset.MoveFirst
'cMB1.Text = ad1.Recordset(0)
'ad1.Recordset.MoveLast
'CMB2.Text = ad1.Recordset(0)
'End Sub

Public Sub VIS()
On Error Resume Next
Form2.Combo4.Visible = True
Form2.Combo5.Visible = True
Form2.Label5.Visible = True
Form2.Label6.Visible = True
Form2.Command1.Visible = True
Form2.Frame1.Visible = True
End Sub


Public Sub reppr1(AD As Object, LB1 As Object, LB2 As Object, cb1 As Object, cb2 As Object, Tbl As String, dt As String, LC1 As String, LC2 As String)
 f = Format(yfdate, "dd-mmm-yyyy")
    t = Format(pdate, "dd-mmm-yyyy")
    AD.ConnectionString = connectstring
    AD.RecordSource = "select distinct(" & dt & ") FLD from " & Tbl & " WHERE " & dt & " between '" & f & "' and '" & t & "' and divcode = '" & divcode & "' order by " & dt
    AD.Refresh
    LB1.Caption = LC1
    LB2.Caption = LC2
    'Filling the comboboxes  with records  from the table
    Set cb1.RowSource = AD
    Set cb2.RowSource = AD
    cb1.ListField = "FLD"
    cb2.ListField = "FLD"
    If Not AD.Recordset.BOF Then
      AD.Recordset.MoveFirst
      cb1.Text = AD.Recordset(0)
      AD.Recordset.MoveLast
      cb2.Text = AD.Recordset(0)
   End If
End Sub

Public Sub repproc1(recsource, cod, codname, lbcp1, lbcp2, LB1 As Object, LB2 As Object, dt As Object, cb1 As Object, cb2 As Object)
dt.ConnectionString = connectstring
dt.RecordSource = "select " & cod & "+' - '+" & codname & "  FLD from " & recsource & " order by " & cod
dt.Refresh
LB1.Caption = lbcp1
LB2.Caption = lbcp2
WindowState = 2
'Filling the comboboxes  with records  from the table
Set cb1.RowSource = dt
Set cb2.RowSource = dt
cb1.ListField = "FLD"
cb2.ListField = "FLD"
If Not dt.Recordset.BOF Then
  dt.Recordset.MoveFirst
  cb1.Text = dt.Recordset(0)
  dt.Recordset.MoveLast
  cb2.Text = dt.Recordset(0)
End If
End Sub

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
      'Return 'Cannot Print this Number'
    Exit Function
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
   'Return c_word
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
Set butenabrs = New Recordset
Call openconnection
butenabrs.Open "select addition,modification,deletion,additionno,modificationno,deletionno from ALEVELS where ALEVEL = " & ulevel & " ", DB, adOpenStatic, adLockBatchOptimistic
    If butenabrs("addition").Value = "N" Then
        tol(0).Enabled = False  'ADD
    ElseIf butenabrs("addition").Value = "Y" And butenabrs("additionno").Value = "Y" Then
        tol(0).Enabled = False  'ADD
    ElseIf butenabrs("addition").Value = "Y" Then
        tol(0).Enabled = True  'ADD
    End If
    
    If butenabrs("modification").Value = "N" Then
        tol(1).Enabled = False  'MOD
    ElseIf butenabrs("modification").Value = "N" Then
        tol(1).Enabled = True  'MOD
    End If
    
    If butenabrs("deletion").Value = "N" Then
        tol(2).Enabled = False  'DEL
    Else
        tol(2).Enabled = True  'DEL
    End If
End Sub

Public Sub reppr2(AD As Object, LB1 As Object, LB2 As Object, cb1 As Object, cb2 As Object, TC1 As String, TC2 As String, LC1 As String, LC2 As String)
 f = Format(yfdate, "yyyy-mm-dd")
    t = Format(pdate, "yyyy-mm-dd")
    AD.ConnectionString = connectstring
    AD.RecordSource = "select distinct(docno) FLD from IN_TRNHEAD ,IN_PARA where docdt between '" + f + "' and '" + t + "' and tc between " & TC1 & " and " & TC2 & "  order by docno"
    AD.Refresh
    LB1.Caption = LC1
    LB2.Caption = LC2
    'Filling the comboboxes  with records  from the table
    Set cb1.RowSource = AD
    Set cb2.RowSource = AD
    cb1.ListField = "fld"
    cb2.ListField = "fld"
    
    AD.Recordset.MoveFirst
    cb1.Text = AD.Recordset(0)
    AD.Recordset.MoveLast
    cb2.Text = AD.Recordset(0)
End Sub

Public Sub ToUpCase(Ofld As Object, KeyAscii As Integer)
    If (KeyAscii >= 97 And KeyAscii <= 122) Then
        KeyAscii = KeyAscii - 32
    End If
End Sub

Public Sub ToLowCase(Ofld As Object, KeyAscii As Integer)
    If (KeyAscii >= 65 And KeyAscii <= 90) Then
        KeyAscii = KeyAscii + 32
    End If
End Sub

Public Sub ToAlphaNumber(Ofld As Object, maxlength As Integer, KeyAscii As Integer)
    If Not ((KeyAscii >= 48 And KeyAscii <= 57) Or _
            KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
            (KeyAscii >= 97 And KeyAscii <= 122) Or _
            KeyAscii = 32 Or KeyAscii = 45 Or KeyAscii = 9 Or KeyAscii = 95 Or _
            KeyAscii = 47 Or KeyAscii = 46 Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 44) Then
        KeyAscii = 0
    End If
    If Len(Ofld) = maxlength And KeyAscii <> 9 And KeyAscii <> 8 Then KeyAscii = 0
End Sub
Public Sub ToAlphaNumberOnly(Ofld As Object, maxlength As Integer, KeyAscii As Integer)
    If Not ((KeyAscii >= 48 And KeyAscii <= 57) Or _
            KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
            (KeyAscii >= 97 And KeyAscii <= 122) Or _
            KeyAscii = 32 Or KeyAscii = 9 Or KeyAscii = 95 Or _
            KeyAscii = 40 Or KeyAscii = 41) Then
        KeyAscii = 0
    End If
    If Len(Ofld) = maxlength And KeyAscii <> 9 And KeyAscii <> 8 Then KeyAscii = 0
End Sub

Public Sub ToAlphaNumberName(Ofld As Object, maxlength As Integer, KeyAscii As Integer)
    If Not ((KeyAscii >= 48 And KeyAscii <= 57) Or _
            KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
            (KeyAscii >= 97 And KeyAscii <= 122) Or _
            KeyAscii = 32 Or KeyAscii = 45 Or KeyAscii = 9 Or KeyAscii = 95 Or _
            KeyAscii = 47 Or KeyAscii = 46 Or KeyAscii = 40 Or KeyAscii = 41 Or _
            KeyAscii = 44 Or KeyAscii = 39 Or KeyAscii = 91 Or KeyAscii = 93 Or _
            KeyAscii = 123 Or KeyAscii = 125) Then
        KeyAscii = 0
    End If
    If Len(Ofld) = maxlength And KeyAscii <> 9 And KeyAscii <> 8 Then KeyAscii = 0
End Sub

Public Sub ToAlphaNumberWeb(Ofld As Object, maxlength As Integer, KeyAscii As Integer)
    If Not ((KeyAscii >= 48 And KeyAscii <= 57) Or _
            KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
            (KeyAscii >= 97 And KeyAscii <= 122) Or _
            KeyAscii = 32 Or KeyAscii = 45 Or KeyAscii = 9 Or KeyAscii = 95 Or _
            KeyAscii = 47 Or KeyAscii = 46 Or KeyAscii = 44) Then
        KeyAscii = 0
    End If
    If Len(Ofld) = maxlength And KeyAscii <> 9 And KeyAscii <> 8 Then KeyAscii = 0
End Sub

Public Sub ToAlphaNumberEmail(Ofld As Object, maxlength As Integer, KeyAscii As Integer)
    If Not ((KeyAscii >= 48 And KeyAscii <= 57) Or _
            KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
            (KeyAscii >= 97 And KeyAscii <= 122) Or _
            KeyAscii = 32 Or KeyAscii = 45 Or KeyAscii = 9 Or KeyAscii = 95 Or _
            KeyAscii = 47 Or KeyAscii = 46 Or KeyAscii = 64 Or KeyAscii = 44) Then
        KeyAscii = 0
    End If
    If Len(Ofld) = maxlength And KeyAscii <> 9 And KeyAscii <> 8 Then KeyAscii = 0
End Sub

Public Sub ToAlpha(fld As Object, KeyAscii As Integer)
    If Not (KeyAscii = 8 Or KeyAscii = 9 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
           (KeyAscii >= 97 And KeyAscii <= 122) Or _
            KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 44) Then
         KeyAscii = 0
    End If
End Sub
Public Sub ToAlphaOnly(fld As Object, KeyAscii As Integer)
    If Not (KeyAscii = 8 Or KeyAscii = 9 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
           (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 32) Then
         KeyAscii = 0
    End If
End Sub
Public Sub ToNumber(obj As Object, KeyAscii As Integer)
    If Not ((KeyAscii >= 48 And KeyAscii <= 57) Or _
             KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 46) Then
        KeyAscii = 0
    End If
End Sub
Public Sub ToDateNumber(obj As Object, KeyAscii As Integer)
    If Not ((KeyAscii >= 48 And KeyAscii <= 57) Or _
             KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 46 Or KeyAscii = 47) Then
        KeyAscii = 0
    End If
End Sub

 Public Sub ToNumb(obj As Object, maxlen As Integer, KeyAscii As Integer)
    If Len(obj) = maxlen And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
   End If
End Sub
 
Public Sub todate(obj As Object, KeyAscii As Integer)
    If Not ((KeyAscii >= 47 And KeyAscii <= 57) Or _
             KeyAscii = 8 Or KeyAscii = 9) Then
        KeyAscii = 0
    End If
    If KeyAscii = 47 And Not (Len(obj) = 2 Or Len(obj) = 5) Then KeyAscii = 0
    If (KeyAscii >= 48 And KeyAscii <= 57) And (Len(obj) = 2 Or Len(obj) = 5) Then KeyAscii = 0
    If Len(obj) = 10 And KeyAscii <> 9 And KeyAscii <> 8 Then KeyAscii = 0
End Sub
Public Sub ToFloatNo(obj As Object, KeyAscii As Integer)
    If Not ((KeyAscii >= 48 And KeyAscii <= 57) Or _
             KeyAscii = 8 Or KeyAscii = 46) Then
        KeyAscii = 0
    End If
End Sub
Public Sub ToNumPhone(obj As Object, KeyAscii As Integer)
    If Not ((KeyAscii >= 48 And KeyAscii <= 57) Or _
             KeyAscii = 8 Or KeyAscii = 47 Or KeyAscii = 40 Or KeyAscii = 32 Or KeyAscii = 41 Or KeyAscii = 43 Or KeyAscii = 44 Or _
                             KeyAscii = 45 Or KeyAscii = 95) Then
        KeyAscii = 0
    End If
End Sub
Public Sub Initials(obj As Object, KeyAscii As Integer)
    If (KeyAscii >= 65 And KeyAscii <= 90 Or _
        KeyAscii >= 97 And KeyAscii <= 122 Or _
        KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9) Then
        If (Len(obj) = 0 And (KeyAscii >= 97 And KeyAscii <= 122)) Then
                KeyAscii = KeyAscii - 32
        ElseIf Len(obj) <= 2 And (KeyAscii = 46 Or KeyAscii = 32) Then
                KeyAscii = 0
        ElseIf Len(obj) > 3 Then
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
Public Sub tonum(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)
     If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
    'to allow numbers,decimal pt and backspace
    Else
        KeyAscii = 0
    End If
    If Not (InStr(obj, ".") = 0) And KeyAscii = 46 Then
    'to check for 2nd occurence of decimal pt
    KeyAscii = 0
    End If
    If Not (InStr(obj, ".") = 0) And Len(obj) - InStr(obj, ".") = 4 And Not (KeyAscii = 8) And Not (KeyAscii = 9) And Not (obj.SelLength = Len(obj)) Then
         KeyAscii = 0
    End If
    If Len(obj) = maxlen And KeyAscii <> 46 And (InStr(obj, ".") = 0) And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
   End If
   
End Sub

Public Function gomonth(gdate As Date, calm As Integer)
Dim mmt As Integer, mmc As Integer, mmt1 As Integer
Dim ddt As Integer
Dim yyt As Integer, yt As Integer
Dim ayt As Integer
ddt = Day(gdate)
mmt = Month(gdate)
yyt = Year(gdate)
mmc = calm
If Abs(mmc) >= 12 Then
   yt = Int(Abs(mmc) / 12)
   mmc = Abs(mmc) - (yt * 12)
End If

If calm > 0 Then
   yyt = yyt + yt
   mmt = mmt + mmc
   If mmt > 12 Then
      yt = Int(mmt / 12)
      mmt = mmt - (yt * 12)
   Else
      yt = 0
   End If
   yyt = yyt + yt
Else
   yyt = yyt - yt
    mmt1 = mmt - Abs(mmc)
      If mmt1 = 0 Then
         mmt = 12
         yyt = yyt - 1
         GoTo a:
      ElseIf mmt1 < 0 Then
        yyt = yyt - 1
        Call submonth(mmt1)
        mmt = mmt1
        GoTo a:
      Else
        mmt = mmt1
        yyt = yyt
        GoTo a:
      End If
      'yyt = yyt + yt
         
 End If
a:
If Round(yyt / 100) = yyt / 100 Then
If (Round(yyt / 400) <> yyt / 400) And mmt = 2 And ddt >= 29 Then
   ddt = 28
End If
ElseIf Round(yyt / 4) <> yyt / 4 And mmt = 2 And ddt = 29 Then
  ddt = 28
ElseIf mmt = 2 And ddt >= 30 Then
  ddt = 29
End If
If ddt = 31 And (mmt = 4 Or mmt = 6 Or mmt = 9 Or mmt = 11) Then
    ddt = 30
ElseIf ddt = 30 And (mmt = 1 Or mmt = 3 Or mmt = 5 Or mmt = 7 Or mmt = 12) Then
    ddt = 31
End If
gomonth = ddt & " / " & mmt & " / " & yyt
End Function
Public Function submonth(mmt1 As Integer)
If Abs(mmt1) = 1 Then
  mmt1 = 12
  Exit Function
ElseIf Abs(mmt1) = 2 Then
  mmt1 = 11
  Exit Function
ElseIf Abs(mmt1) = 3 Then
  mmt1 = 10
  Exit Function
ElseIf Abs(mmt1) = 4 Then
  mmt1 = 9
  Exit Function
ElseIf Abs(mmt1) = 5 Then
  mmt1 = 8
  Exit Function
ElseIf Abs(mmt1) = 6 Then
  mmt1 = 7
  Exit Function
ElseIf Abs(mmt1) = 7 Then
  mmt1 = 6
  Exit Function
ElseIf Abs(mmt1) = 8 Then
  mmt1 = 5
  Exit Function
ElseIf Abs(mmt1) = 9 Then
  mmt1 = 4
  Exit Function
ElseIf Abs(mmt1) = 10 Then
  mmt1 = 3
  Exit Function
ElseIf Abs(mmt1) = 11 Then
  mmt1 = 3
  Exit Function
ElseIf Abs(mmt1) = 12 Then
  mmt1 = 1
  Exit Function
End If
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
        TStr = " "
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
'Public Function INF(Inval As Variant, dLen As Integer)
'    '--- INF Function Developed by Mr. C. Sivakumar
'    '--- on behalf of M/s. Kalpatharu Software Limited
'    '--- Tested and Corrected by N.Senthilchinnappa (09/04/2002)
'
'    If IsNull(Inval) Then
'        Inval = 0
'    End If
'
'    Dim cDecimals As String
'    Dim cInteger As String
'    Dim cMoney As String
'    Dim nIntLen As Integer
'    Dim ndecimals As Variant
'
'    If val(Inval) <> 0 Then
'
'      If Inval < 0 Then
'        ndecimals = Round(-Inval - Int(-Inval), dLen)
'      Else
'        ndecimals = Round(Inval - Int(Inval), dLen)
'      End If
'
'       If Int(Inval) = Inval Then
'            cDecimals = "." + String(dLen, "0")
'            cInteger = Format(Inval, "##")
'        Else
'            If Inval < 0 Then
'                cDecimals = Format(-Inval - Int(-Inval), "##." + String(dLen, "0"))
'                cInteger = "-" + Format(Int(-Inval), "##")
'            Else
'                cDecimals = Format(Inval - Int(Inval), "##." + String(dLen, "0"))
'                cInteger = Format(Int(Inval), "##")
'            End If
'        End If
'
'        nIntLen = Len(cInteger)
'
'        If nIntLen < 4 Then
'            cInteger = cInteger
'        ElseIf nIntLen < 6 Then
'            cInteger = Left(cInteger, 2 - (5 - Len(cInteger))) + "," + Right(cInteger, 3)
'        ElseIf nIntLen < 8 Then
'            cInteger = Left(cInteger, 2 - (7 - Len(cInteger))) + "," + Mid(cInteger, 3 - (7 - Len(cInteger)), 2) + "," + Right(cInteger, 3)
'        ElseIf nIntLen < 11 Then
'            cInteger = Left(cInteger, 3 - (10 - Len(cInteger))) + "," + Mid(cInteger, 4 - (10 - Len(cInteger)), 2) + "," + Mid(cInteger, 6 - (10 - Len(cInteger)), 2) + "," + Right(cInteger, 3)
'        ElseIf nIntLen < 13 Then
'            cInteger = Left(cInteger, 2 - (12 - Len(cInteger))) + "," + Mid(cInteger, 3 - (12 - Len(cInteger)), 3) + "," + Mid(cInteger, 6 - (12 - Len(cInteger)), 2) + "," + Mid(cInteger, 8 - (12 - Len(cInteger)), 2) + "," + Right(cInteger, 3)
'        ElseIf nIntLen < 15 Then
'            cInteger = Left(cInteger, 2 - (14 - Len(cInteger))) + "," + Mid(cInteger, 3 - (14 - Len(cInteger)), 2) + "," + Mid(cInteger, 5 - (14 - Len(cInteger)), 3) + "," + Mid(cInteger, 8 - (14 - Len(cInteger)), 2) + "," + Mid(cInteger, 10 - (14 - Len(cInteger)), 2) + "," + Right(cInteger, 3)
'        End If
'
'        If nIntLen < 15 Then
'            If Not dLen = 0 Then
'                INF = cInteger + cDecimals
'            Else
'                INF = cInteger
'            End If
'        Else
'            INF = "*** Overflow ***"
'        End If
'    Else
'            INF = " "
'    End If
'End Function
Public Function INF(Inval As Variant, dlen As Integer)
On Error Resume Next
    '--- Tested and Corrected By Mr.R.Suresh B.E
    '--- INF Function Developed by Mr.C. Sivakumar
    '--- on behalf of M/s. Kalpatharu Software Limited

    
    
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
        ndecimals = Round(-Inval - Int(-Inval), dlen)
      Else
        ndecimals = Round(Inval - Int(Inval), dlen)
      End If
      
       If Int(Inval) = Inval Then
            cDecimals = "." + String(dlen, "0")
            cInteger = Format(Inval, "##")
        Else
            If Inval < 0 Then
                cDecimals = Format(-Inval - Int(-Inval), "##." + String(dlen, "0"))
                cInteger = "-" + Format(Int(-Inval), "##")
            Else
                cDecimals = Format(Inval - Int(Inval), "##." + String(dlen, "0"))
                cInteger = Format(Int(Inval), "##")
            End If
        End If
        
        If Val(cDecimals) >= 1 Then
            cInteger = Val(cInteger) + Val(cDecimals)
            cDecimals = "." + String(dlen, "0")
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
            If Not dlen = 0 Then
                INF = cInteger + cDecimals
            Else
                INF = cInteger
            End If
        Else
            INF = "*** Overflow ***"
        End If
    Else
            INF = " "
    End If
    
    
    '--------------------------------------
        If Trim(INF) <> Empty Then
        If Left(INF, 1) = "." Then
            INF = "0" & INF
        End If
    End If
    '-=----------------------------------
End Function

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

Public Function Table_Exists(Table_Name As String) As Boolean
    On Error GoTo Err1
    Table_Name = UCase(Table_Name)
    Dim TDb As New Connection
    Dim trs As New Recordset
    TDb.CursorLocation = adUseClient
    TDb.Open connectstring
    trs.Open "SELECT * FROM dbo.sysobjects WHERE UPPER(name) = '" & Table_Name & "'", TDb, adOpenStatic, adLockReadOnly
    If trs.RecordCount > 0 Then
        trs.Close
        TDb.Close
        Table_Exists = True
        Exit Function
    End If
    trs.Close
    TDb.Close
    Table_Exists = False
    Exit Function
    
Err1:
    MsgBox "Unable To Test Existence Of Table", vbInformation, head
    'Exit Sub
End Function

Public Sub NEWFORM1(tol As Object, NO As Integer)
'This is used for cancel  and form load button.
On Error Resume Next
If NO <> 0 Then
On Error Resume Next
Dim DB As New Connection
DB.Open connectstring
Dim Rs As New Recordset
Rs.Open "SELECT SNO,FORM_NAME,ADD_FLG,MOD_FLG,DEL_FLG FROM USERLEVEL WHERE DIVCODE = '" & divcode & "' AND MODULE =6 AND ULEVEL = " & ulevel & " AND SNO = " & NO, DB
    If Rs("ADD_FLG") = "Y" Then tol(0).Enabled = True Else tol(0).Enabled = False
    If Rs("MOD_FLG") = "Y" Then tol(1).Enabled = True Else tol(1).Enabled = False
    If Rs("DEL_FLG") = "Y" Then tol(2).Enabled = True Else tol(2).Enabled = False
    tol(3).Enabled = True   'LIST
    tol(4).Enabled = True   'FIND
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
    tol(4).Enabled = True   'FIND
    tol(5).Enabled = True   'FIRST
    tol(6).Enabled = True   'NEXT
    tol(7).Enabled = True   'PREVIOUS
    tol(8).Enabled = True   'LAST
    tol(9).Enabled = False  'SAVE
    tol(10).Enabled = False 'CANCEL
    tol(11).Enabled = True  'EXIT
 End If
End Sub
Public Sub cancl1(tol As Object, NO As Integer)
On Error Resume Next
If Opt = 0 Then
Dim DB As New Connection
DB.Open connectstring
Dim Rs As New Recordset
Rs.Open "SELECT SNO,FORM_NAME,ADD_FLG,MOD_FLG,DEL_FLG FROM USERLEVEL WHERE DIVCODE = '" & divcode & "' AND MODULE =6 AND ULEVEL = " & ulevel & "  AND SNO = " & NO, DB
    If Rs("ADD_FLG") = "Y" Then tol(0).Enabled = True Else tol(0).Enabled = False
    If Rs("MOD_FLG") = "Y" Then tol(1).Enabled = True Else tol(1).Enabled = False
    If Rs("DEL_FLG") = "Y" Then tol(2).Enabled = True Else tol(2).Enabled = False
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
Public Sub ToNumber1(obj As Object, maxlen As Integer, KeyAscii As Integer)
 On Error Resume Next
    If Not (((KeyAscii >= 48 And KeyAscii <= 57) Or _
             KeyAscii = 8) Or KeyAscii = 9) Then
        KeyAscii = 0
    ElseIf Len(obj) = maxlen And KeyAscii <> 8 And KeyAscii <> 9 Then
        KeyAscii = 0
    End If
End Sub
Public Sub ToNumberYear(obj As Object, maxlen As Integer, KeyAscii As Integer)
 On Error Resume Next
    If Not (((KeyAscii >= 48 And KeyAscii <= 57) Or _
             KeyAscii = 8) Or KeyAscii = 9 Or KeyAscii = 45 Or KeyAscii = 47) Then
        KeyAscii = 0
    ElseIf Len(obj) = maxlen And KeyAscii <> 8 And KeyAscii <> 9 Then
        KeyAscii = 0
    End If
End Sub

Public Sub ToUpCase1(Ofld As Object, KeyAscii As Integer, Optional maxlen As Integer)
    If maxlen = 0 Then maxlen = 50
    'If Len(Trim(Ofld)) < maxlen Then
    If (KeyAscii >= 97 And KeyAscii <= 122) Then
        KeyAscii = KeyAscii - 32
    End If
    If (KeyAscii = 9 Or KeyAscii = 13) Then
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
Public Sub ToAlpha1(fld As Object, maxlen As Integer, KeyAscii As Integer)
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


Public Sub ToNumberAssign(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer, Optional dlen As Integer)
    If dlen <> 0 Then
        If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or KeyAscii = 45 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
        'to allow numbers,decimal pt and backspace
        Else
            KeyAscii = 0
            Beep
        End If
    Else
        If KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
        'nOT to allow numbers,decimal pt and backspace
        Else
            KeyAscii = 0
            Beep
        End If
    End If
    If Not (InStr(obj.Text, ".") = 0) And KeyAscii = 46 Then
    'to check for 2nd occurence of decimal pt
    Beep
    KeyAscii = 0
    End If
    If Not (InStr(obj, ".") = 0) And Len(obj) - InStr(obj, ".") = dlen And Not (KeyAscii = 8) And Not (KeyAscii = 9) Then
         KeyAscii = 0
         Beep
    End If
    If Len(obj) = maxlen And KeyAscii <> 46 And (InStr(obj, ".") = 0) And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
    Beep
    End If
End Sub
Public Function FOOTER_PRINT(PAPERWIDTH As Integer, FILENAME1 As Integer, FRONTSPACE As Integer)
Dim cnt As Integer
Dim Spe As Integer
Set DB = New Connection
DB.Open connectstring
Set NewRs = New Recordset
NewRs.Open "SELECT  ISNULL(DESC1,'') AS DESC1,ISNULL(DESC2,'') AS DESC2,ISNULL(DESC3,'') AS DESC3,ISNULL(DESC4,'') AS DESC4,ISNULL(DESC5,'') AS DESC5,ISNULL(DESC6,'') AS DESC6  FROM SFOOT ", DB, adOpenStatic, adLockBatchOptimistic
If NewRs.RecordCount > 0 Then
    cnt = 0
    If NewRs("desc1") <> "" Then cnt = cnt + 1
    If NewRs("desc2") <> "" Then cnt = cnt + 1
    If NewRs("desc3") <> "" Then cnt = cnt + 1
    If NewRs("desc4") <> "" Then cnt = cnt + 1
    If NewRs("desc5") <> "" Then cnt = cnt + 1
    If NewRs("desc6") <> "" Then cnt = cnt + 1
    
    If cnt > 0 Then
        Spe = PAPERWIDTH / cnt
    Else
        Spe = 0
    End If
    Print #FILENAME1, Space(FRONTSPACE);
    For i = 0 To 6 - 1
        If NewRs(i) <> "" Then
        Print #FILENAME1, CENTRE(NewRs(i), CDbl(Spe), " ");
        End If
    Next
    Print #FILENAME1,
Else
    MsgBox "PLEASE DEFINE FOOTER IN SETUP", vbInformation, head
End If
End Function
'Public Function GetText(Spd As fpSpread, ByVal iCOL As Integer, ByVal irow As Integer) As String
'On Error GoTo GetText_Error
'   With Spd
'        .Col = iCOL: .Row = irow: GetText = .Text
'   End With
'Exit Function
'GetText_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure GetText of Module RMIMod"
'End Function
'Public Sub SetSpreadCol(Spd As fpSpread, ByVal Col As Integer, ByVal head As String, ByVal CellType As CellTypeConstants, Optional ByVal DecWth As Integer = 0, Optional MinVal As Double = 0, Optional Maxval As Double = 9999999.99)
'On Error GoTo SetSpreadCol_Error
'    With Spd
'        .Row = -1: .Col = Col: .CellType = CellType:
'
'
'        .TypeNumberDecPlaces = DecWth
'
'
'        If CellType = CellTypeNumber Then
'            .TypeNumberMin = MinVal
'            .TypeNumberMax = Maxval
'        End If
'
'        .ColHeaderRows = 1
'        .SetText Col, 0, head
'    End With
'Exit Sub
'SetSpreadCol_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure SetSpreadCol of Module RMIMod"
'End Sub
'Public Sub SetSpreadCol1(Spd As fpSpread, ByVal Col As Integer, ByVal head As String, ByVal CellType As CellTypeConstants, Optional ByVal iColWth As Integer = 0, Optional ByVal DecWth As Integer = 0, Optional ByVal HideCol As Boolean = False, Optional ByVal isLock As Boolean = True)
'On Error GoTo SetSpreadCol1_Error
'    With Spd
'        .Col = Col
'        .Row = -1: .CellType = CellType
'        If iColWth <> 0 Then .ColWidth(Col) = iColWth
'        If HideCol = True Then
'          .ColHidden = True
'        Else
'          .ColHidden = False
'        End If
'        .Protect = True
'        If isLock = True Then .Lock = True Else .Lock = False
'        If CellType = CellTypeNumber And DecWth > 0 Then .TypeNumberDecPlaces = DecWth
'        .ColHeaderRows = 1
'        .SetText Col, 0, head
'    End With
'Exit Sub
'SetSpreadCol1_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure SetSpreadCol of Module RMIMod"
'End Sub
Public Sub Tolen(obj As Object, maxlen As Integer, KeyAscii As Integer)
    If Len(obj) = maxlen And Not (KeyAscii = 8 Or KeyAscii = 9) Then KeyAscii = 0
End Sub


Public Sub ToAlphanumNoSp(obj As Object, maxlen As Integer, KeyAscii As Integer)
'On Error Resume Next
    If (KeyAscii >= 97 And KeyAscii <= 122) Then
    ElseIf Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
         KeyAscii = 32 Or KeyAscii >= 48 And KeyAscii <= 57) Then
         KeyAscii = 0
    End If
    If Len(obj) = maxlen And KeyAscii <> 8 And KeyAscii <> 9 Then
       KeyAscii = 0
    End If
End Sub


Public Sub ToValidPercent(dValue As Double, Optional Message As String)
If Val(dValue) > 100 Then
    If Trim(Message) = "" Then
        MsgBox Message, vbInformation, head
        Exit Sub
    End If
    
End If

End Sub

Public Function ToValidFinYear(divcode As String) As Boolean
    Dim rstYear As Recordset
    Set rstYear = New Recordset

    rstYear.Open "Select max(lotyear) from rm_lot where divcode='" & divcode & "'", DB, adOpenStatic
    If rstYear.EOF = False Then
        If rstYear(0) > Year(yfdate) Then
            MsgBox "Transaction is Closed in this Finanical Year", vbInformation, head
            ToValidFinYear = False
            Exit Function
        Else
            ToValidFinYear = True
            Exit Function
        End If
    End If
    ToValidFinYear = True
    rstYear.Close
End Function

Public Sub ToAlphaNumberProperties(Ofld As Object, maxlength As Integer, KeyAscii As Integer)
    If Not ((KeyAscii >= 48 And KeyAscii <= 57) Or _
            KeyAscii = 8 Or KeyAscii = 32 Or KeyAscii = 9 Or _
            KeyAscii = 46 Or KeyAscii = 45 Or KeyAscii = 60 Or KeyAscii = 62) Then
        KeyAscii = 0
    End If
    If Len(Ofld) = maxlength And KeyAscii <> 9 And KeyAscii <> 8 Then KeyAscii = 0
End Sub



Public Sub PPCUserLevel(ByVal FrmMDIName As Object, ByVal ModuleNo As Long)

Dim GrpNo As Integer
Dim SqlIns As String
Dim grpname As String
Dim TmpGrp As String
Dim FrmName As String
Dim MnuCtrl As Menu
Dim AdmFlg As String * 1
Dim ParaRs As Recordset

On Error GoTo PPCUserLevel_Error
    
    cnt = 0
    For i = 0 To FrmMDIName.Controls.Count - 1
        If TypeOf FrmMDIName.Controls(i) Is Menu Then
            FrmName = Trim(FrmMDIName.Controls(i).Caption)
            If FrmName <> "-" And FrmName <> "" And FrmMDIName.Controls(i).Visible = True Then
                If FrmName = "&Exit" Then
                    Exit For
                End If
                cnt = cnt + 1
            End If
        End If
    Next i
    
    
    Set rs1 = New Recordset
    rs1.Open "Select * from ModuleMenu Where Module = " & ModuleNo & "", DB, adOpenStatic, adLockReadOnly
    
    If Not rs1.EOF Then
        
        If rs1.RecordCount <> cnt Then
            GoTo Insert
        Else
            Exit Sub
        End If
    Else
        GoTo Insert
    End If
    
Insert:
    SqlIns = ""
    
    SqlIns = "Delete from ModuleMenu Where Module = " & ModuleNo
    DB.Execute SqlIns
    
    SqlIns = ""
    
    For i = 0 To FrmMDIName.Controls.Count - 1
        If TypeOf FrmMDIName.Controls(i) Is Menu Then
        
            Set MnuCtrl = FrmMDIName.Controls(i)
            
            FrmName = Mid(Trim(MnuCtrl.Caption), 2, Len(Trim(MnuCtrl.Caption)))
            
            AdmFlg = "Y"
            
            If FrmName = "Masters" Or FrmName = "Transactions" Or FrmName = "Reports" _
                Or FrmName = "Queries" Or FrmName = "Views" Or FrmName = "Setup" Or FrmName = "HouseKeeping" _
                Or FrmName = "Windows" Or FrmName = "Exit" Then
                
                grpname = "Groups"
                TmpGrp = FrmName
                
                AdmFlg = "N"
                GrpNo = GrpNo + 1
            Else
                grpname = TmpGrp
                
                If grpname = "Reports" Or grpname = "Queries" Or grpname = "Views" Or grpname = "HouseKeeping" _
                    Or grpname = "Windows" Or grpname = "Exit" Then
                        
                    AdmFlg = "N"
                        
                End If
                
            End If
            
                        
            If InStr(1, FrmName, " ", vbTextCompare) > 0 Then
                FrmName = Mid(FrmName, InStr(1, FrmName, " ", vbTextCompare))
            End If
            
            FrmName = Trim(FrmName)
            MnuName = FrmMDIName.Controls(i).Name
            
            If IsIndex(FrmMDIName.Controls(i)) Then
                MnuName = MnuName & "_" & FrmMDIName.Controls(i).Index
            End If
            
            '==================
            'MsgBox UCase(FrmMDIName.Controls(i).Name)
            Select Case UCase(FrmMDIName.Controls(i).Name)
               Case "MNUHKEEP"
                  grpname = "Groups"
                   AdmFlg = "N"
               Case "MNUPARAM", "MNUPARAMFA", "MNUOPENSTK", "MNUYEARHK", "MNUCHANGEPASSWORD", "PROCESSDATE"
                    grpname = "HouseKeeping"
                   AdmFlg = "Y"
                Case "MNU_PENDINFDATEWISE1", "MNU_SUPPLIERWISE1", "MNU_PENDBROKERWISE1"
                    grpname = "Pending Orders"
                    AdmFlg = "N"
                Case "MNUPURBILL"
                    grpname = "Purchase Bills Entry"
                    AdmFlg = "Y"
               Case "MNUYEAREND"
                  grpname = "Year End Housekeeping"
                  If UCase(Trim(FrmName)) = "ACCOUNTING YEAR" Then
                     AdmFlg = "Y"
                  End If
               Case "MNUOPEN", "MUNWASTESTOCK"
                  grpname = "Opening Stock"
                  AdmFlg = "Y"
               Case "MNUPARAM", "MNUPARAMFA", "MNUOPENSTK", "MNUCHANGEPASSWORD"
                 AdmFlg = "Y"
               Case "MNUPURCHASEORDER", "MNUORDERCANCEL"
                 grpname = "Purchase Order"
               Case "MNU_ARRIVAL", "MNU_TRANRECEIPT"
                 grpname = "Arrival"
               
               Case "MNIARRIVAL", "MNU_CONTRACT"
                 AdmFlg = "N"
               Case "MNU_LOTSTOKPOSI", "MNUVARSTKPOS", "MNUSUPPLIERLOTWISE"
                 grpname = "Stock Position"
               Case "MNIISSREG", "MNILOTWISEISSUEREG"
                 grpname = "Issue Register"
                 
               Case "MNUSINGBROK", "MNUSUPASS"
                 grpname = "Broker Assessment Record"
               Case "MNUISSUEREGDWLW", "MNUISSREGUNITWISE"
                 grpname = "Stcottex Issue Register"
               
               Case Is = "MNUSTKPOSITION", "MNU_ISSREGISTER", "MNU_PENDCONT", "MNUCOTTONSTK", "MNU_COTTONRECEIVEDNOTE"
                 grpname = "Daily"
               Case "MNUCONTRACTREGISTER", "MNU_ARRIV_REG", "MNU_RECEIP_REG", "MNU_PENDINGORDERSFR", "MNU_ISSUEREG", "MNI_MIXING", _
                    "MNU_TRANISSUE", "MNU_STOCK_STAT", "MNU_STOCKLED", "MNUVATREPORT", "MNU_MARK_COMMREP", "FRMWASTE"
                 grpname = "Periodicals"
               Case "MNU_VARIETY_PURCHA", "MNU_BROKDATE_PURCHA", "MNU_AREAPARTY_PURCHA", "MNU_SUPASS_RECORD", "MNUPA", "MNU_LOTWEIGHT_DIFF", "MNUMIXGRPSTOCK", "MNUMISDASHBOARD", "MNUADUITREPORT", _
                    "MNUCONSUMPTIONFORECASTRPT", "MNUCOMPANYREPORT", "MNUCOTTONMISREPORT"
                 grpname = "M.I.S."
               Case "MNUCUSTOMISEDSTCOTTEX", "MNUBANNARIREPORT", "MNUBANNARIREPORT", "MNUBANNARIREPORT", "MNUBANNARIREPORT", "MNUBANNARICUSTREPORT", "MNUAGEING", "MNUFRGTDET", _
                    "MNUISSUEREGDWLW", "MNUISSREGUNITWISE", "MNUCUSTOMISEDSTCOTTEX", "MNUCUSTOMISEDSTCOTTEX ", "MNUCUSTOMISEDSTCOTTEX", "MNUCUSTOMISEDSTCOTTEX", "MNUCUSTOMISEDSTCOTTEX", "MNUCUSTOMISEDSTCOTTEX", _
                    "MNICATWISE", "MNIMIXINGREP", "MNISTKRCD_CNSMP", "MNURMSTOCKSTMT", "MNUCUSTOMISEDSTCOTTEX1", "MNUCUSTLOTWISE", "MNUCUSTOMISEDSTCOTTEX", "MNICATWISE", "MNUFRGTDET"
                 grpname = "Customised Reports"
               Case "MNUPURCHASEDAYBOOKABSTRACT", "MNUPENDINGBILLENTRY", "MNUNOTBILLREGISTER", "MNUCOTTONSTOCKSTMTDE"
                 grpname = "Periodicals"
               Case "MNU_QUALITYPARAMTR", "MNUPLTBI", "MNUTRANSFER", "MNU_COTTONWGT", "MNUINSQTYPARAMATER", _
                    "MNUPURCHASEREGISTER", "MNU_PURCHASE_DAYBOOK", "MNURPTADJUSTREGISTER", _
                    "MNU_COTTONBINCARD", "MNU_COTTON_RECONCILATION", "MNUMIXINGCOST", "MNU_REJECTEDARR", "MNU_FORMIV", _
                    "MNUCOTTONSTOCKSTMT", "MNUCOTTONSTOCKSTMT_4", "MNU_INSURANCEREPORT"
                  grpname = "Periodicals"
                  
               Case "MNURMLOTWISE", "MNURMVARIETYWISE", "MNURMISSUETYPEWISE", "MNURMSUPPLIERWISE"
                 grpname = "Raw Material Stock Statement"
               Case "MNUORDERREGISTER", "MNUORDERCANCELLATIONREPORT"
                 grpname = "Purchase Order Register"
               Case "MNUPENDING", "MNU_PENDINFDATEWISE", "MNU_SUPPLIERWISE", "MNU_PENDBROKERWISE"
                 grpname = "Pending Orders"
               Case "MNU_ARR_DATEWISE", "MNU_ARR_VARIETYWISE", "MNUSPREG", "MNU_ARR_BROKERWISE"
                 grpname = "Arrival Register"
               Case "MNU_DATEWISEREP", "MNUVERIETYWISE", "MNURECTPTY", "MNU_BROKERWISEREP", "MNUYEARLYREPORT"
                 grpname = "Receipt Register"
               Case "MNIMIXREGNEW", "MNIMIXINGSTOCK", "MNI_WASTEMIXSTK"
                 grpname = "Mixing Issue."
               Case "MNUPARTYWISE", "MNUVARIETYWISE", "MNUVARIETYWISE"
                 grpname = "Transfer Issue Register"
               Case "MNIDATEWISE", "MNU_VARITYW", "MNU_COUNTWI", "MNU_MIXNOWISE", "MNUALLISSREGISTER", "MNULOTWISEISSREGISTER"
                 grpname = "Issue  Register."
               Case "MNU_LOTWISE", "MNUBALE", "MNU_VARIETYWISE", "MNUSTKDET", "MNUSTKWEEK", "MNU_GODOWNWISE", "MNUSTKSTATION", "MNU_STKABSTRACT1", "MNUUNTOUCHLOTS", "MNURLISSUETYPEWISE", "MNU_INDLOTWISE"
                 grpname = "Stock Statement"
               Case "MNUSTKLEGLOT", "MNIITEMLEDGER"
                 grpname = "Stock Ledger"
               Case "MNRMIPURCHASE", "MNURMISALESVATREPORT"
                 grpname = "Vat Report"
               Case "ARRREG", "MNUREPREUSE", "MNUSTSTATUS"
                  grpname = "Waste."
               Case "MNUMAKISS", "MNUMAKRECPT", "REPWASTESALES"
                  grpname = "Market Committee Report"
              
            End Select
            '==================
            
            If FrmName <> "Exit" And grpname <> "Exit" And FrmName <> "" And FrmMDIName.Controls(i).Visible = True Then   'And FrmMDIName.Controls(i).Enabled = True
                SqlIns = "Insert Into ModuleMenu Values(" & ModuleNo & ", '" & grpname & "', '" & FrmName & "', '" & MnuName & "', " & i + 1 & " , '" & AdmFlg & "', " & GrpNo & " )"
                DB.Execute SqlIns
            End If

        End If
    Next i
Exit Sub
PPCUserLevel_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure PPCUserLevel of Form FrmMDI", vbInformation, head
End Sub
Public Function IsIndex(mn As Object) As Boolean
On Error GoTo isIndexErr
    ss = mn.Index
    IsIndex = True
Exit Function
isIndexErr:
    IsIndex = False
End Function

Public Sub dis(ByVal FrmMDIName As Object, ByVal ModuleNo As Long, ByVal divcode As String, ByVal ulevel As Integer)
  'Menu level disables for database already entered
  Dim Rs As Recordset
  Dim i As Integer
  Dim menu_name As String
  
  Set Rs = New Recordset
  Rs.Open "SELECT MENU_NAME FROM USERLEVEL WHERE MODULE = " & ModuleNo & " AND DIVCODE = '" & divcode & "' AND ULEVEL = " & ulevel & " AND (GROUP_FLG = 'N' OR FORM_FLG = 'N')", DB, adOpenStatic
  If Rs.RecordCount = 0 Then Exit Sub
    For i = 0 To FrmMDIName.Controls.Count - 1
        If IsIndex(FrmMDIName.Controls(i)) Then
            menu_name = FrmMDIName.Controls(i).Name & "_" & FrmMDIName.Controls(i).Index
        Else
            menu_name = FrmMDIName.Controls(i).Name
        End If
    Set Rs = New Recordset
    Rs.Open "SELECT MENU_NAME FROM USERLEVEL WHERE menu_name = '" & menu_name & "' and MODULE = " & ModuleNo & " AND DIVCODE = '" & divcode & "' AND ULEVEL = " & ulevel & " AND (GROUP_FLG = 'N' OR FORM_FLG = 'N')", DB, adOpenStatic, adLockReadOnly
    If Rs.RecordCount > 0 Then
        FrmMDIName.Controls(i).Enabled = False
    Else
        FrmMDIName.Controls(i).Enabled = True
    End If
    Next
End Sub
