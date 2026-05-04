Attribute VB_Name = "RMIMod"
Global Const SpdHlightClr = &HC0FFFF
Global Const SpdOrdClr = 16777215
Global Const unitcode As String = "A"
Global Const pagelen As Integer = 60
Global Const STBARmsg As String = "Kalsofte"
Public Const EncryptKey As Integer = 4
Global Const backend As String = "Sql Server"
Global Const Module As String = "Raw Material Inventory"
Global Const ModuleNo As Integer = 6
Global Const head = " Kalsofte "
Global REPID As String
Global PartyTypeStr As String
Global sCatType As String
Global sVarcode As String
Global parameter1 As String
Global parameter2 As String
Global parameter3 As String
Global parameter4 As String
Global parameter5 As String
Global parameter6 As String
Global parameter7 As String
Global parameter8 As String
Global parameter9 As String
Global parameter10 As String
Global parameter11 As String
Global parameter12 As String
Global parameter13 As String
Global parameter14 As String
Global parameter15 As String
Global parameter16 As String
Global parameter17 As String
Global parameter18 As String
Global parameter19 As String
Global parameter20 As String
Global Openkeyloanflg As String
Global Transflg As String
Global reqflg As String
Global iParameter1 As Double
Global rephead As String
Global Foot As String
Global selectformula As String

 Global GlobActwt As String
 Global globnetwt As String
Global gl_Database As String
Global gl_Server As String
Global gl_userId As String
Global gl_Passwd As String
Global gl_Driver As String
Global gl_Cmpnylst As Integer
Global gl_Divlst As Integer
Global gl_db As String
Global custgrp As String
Public fcash, tcash, fbank, tbank, fpur, tpur, fjv, tjv, fsal, tsal, llisch, lassch, linsch, lexsch, lsasch, lpusch, lst, est, frin, frex, dpjv, Drtc, Crtc As Variant

Public Function IssLoad(Cmb As ComboBox)
    Cmb.Clear
    Set rsa = New Recordset
    rsa.Open "select  issue_code + '-' + issue_desc as type from rm_issuetype union select DISTINCT 'A -ALL' AS TYPE FROM RM_ISSUETYPE", cn, adOpenStatic, adLockBatchOptimistic
    Do While rsa.EOF = False
        If Repindex = 66 Or Repindex = 3066 Then
            If rsa(0) <> "SA-SALES" And rsa(0) <> "BT-TRANSFER" Then Cmb.AddItem rsa(0)
        Else
            Cmb.AddItem rsa(0)
        End If
        rsa.MoveNext
    Loop
    Cmb.ListIndex = 0

End Function
Public Function GetText(Spd As fpSpread, ByVal iCOL As Integer, ByVal iRow As Integer) As String
On Error GoTo GetText_Error
   With Spd
        .Col = iCOL: .Row = iRow: GetText = .Text
   End With
Exit Function
GetText_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GetText of Module RMIMod"
End Function

Public Sub SetSpreadCol(Spd As fpSpread, ByVal Col As Integer, ByVal head As String, ByVal celltype As CellTypeConstants, Optional ByVal DecWth As Integer = 0, Optional MinVal As Double = 0, Optional Maxval As Double = 9999999.99)
On Error GoTo SetSpreadCol_Error
    With Spd
        .Row = -1: .Col = Col: .celltype = celltype:


        .TypeNumberDecPlaces = DecWth


        If celltype = CellTypeNumber Then
            .TypeNumberMin = MinVal
            .TypeNumberMax = Maxval
        End If

        .ColHeaderRows = 1
        .SetText Col, 0, head
    End With
Exit Sub
SetSpreadCol_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetSpreadCol of Module RMIMod"
End Sub

Public Function NextFocus(KeyAscii)
    If KeyAscii = 13 Then
        SendKeys "{Tab}"
    End If
End Function
Public Sub SetSpreadCol_RMI(Spd As fpSpread, ByVal Col As Integer, ByVal head As String, ByVal celltype As CellTypeConstants, Optional ByVal iColWth As Integer = 0, Optional ByVal DecWth As Integer = 0, Optional ByVal HideCol As Boolean = False, Optional ByVal IsLock As Boolean = True)
On Error GoTo SetSpreadCol_Error
    With Spd
        .Col = Col
        .Row = -1: .celltype = celltype
        If iColWth <> 0 Then .ColWidth(Col) = iColWth
        If HideCol = True Then
          .ColHidden = True
        Else
          .ColHidden = False
        End If
        .Protect = True
        If IsLock = True Then .Lock = True Else .Lock = False
        If celltype = CellTypeNumber And DecWth >= 0 Then .TypeNumberDecPlaces = DecWth
        .ColHeaderRows = 1
        .SetText Col, 0, head
        
    End With
Exit Sub
SetSpreadCol_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetSpreadCol of Module RMIMod"
End Sub
Public Sub SpdHighlight_RMI(ByRef Spd As fpSpread, NewRow As Long, NewCol As Long, Optional OldRow As Long, Optional OldCol As Long)
On Error GoTo ErrPath
    Spd.BlockMode = True
    'DoEvents
    Spd.Row = 1
    Spd.Col = 1
    Spd.Row2 = Spd.MaxRows
    Spd.Col2 = Spd.MaxCols
    Spd.BackColor = SpdOrdClr
    Spd.FontBold = False
    If NewRow > 0 Then
        Spd.Row = NewRow
        Spd.Col = NewCol
        Spd.Row2 = NewRow
        Spd.Col2 = NewCol
        sOldClr = Spd.BackColor
        
        Spd.BackColor = SpdHlightClr
        Spd.FontBold = True
    End If
    Spd.BlockMode = False
    
Exit Sub
ErrPath:
    MsgBox Err.Description
End Sub


Public Sub SetSpreadCol_H2(Spd As fpSpread, ByVal Col As Integer, ByVal head As String, ByVal celltype As CellTypeConstants, Optional ByVal iColWth As Integer = 0, Optional ByVal DecWth As Integer = 0, Optional ByVal HideCol As Boolean = False, Optional ByVal IsLock As Boolean = True)
On Error GoTo SetSpreadCol_Error
    With Spd
    
        .Col = Col
        .Row = -1: .celltype = celltype
        If iColWth <> 0 Then .ColWidth(Col) = iColWth
        If HideCol = True Then
          .ColHidden = True
        Else
          .ColHidden = False
        End If
        .Protect = True
        If IsLock = True Then .Lock = True Else .Lock = False
        If celltype = CellTypeNumber And DecWth >= 0 Then .TypeNumberDecPlaces = DecWth
'        .ColHeaderRows = 1
        .SetText Col, 0, head
    End With
Exit Sub
SetSpreadCol_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetSpreadCol of Module RMIMod"
End Sub

Public Sub SetSpreadCol1(Spd As fpSpread, ByVal Col As Integer, ByVal head As String, ByVal celltype As CellTypeConstants, Optional ByVal iColWth As Integer = 0, Optional ByVal DecWth As Integer = 0, Optional ByVal HideCol As Boolean = False, Optional ByVal IsLock As Boolean = True)
On Error GoTo SetSpreadCol_Error
    With Spd
        .Col = Col
        .Row = -1: .celltype = celltype
        If iColWth <> 0 Then .ColWidth(Col) = iColWth
        If HideCol = True Then
          .ColHidden = True
        Else
          .ColHidden = False
        End If
        .Protect = True
        If IsLock = True Then .Lock = True Else .Lock = False
        If celltype = CellTypeNumber And DecWth >= 0 Then .TypeNumberDecPlaces = DecWth
        .ColHeaderRows = 1
        .SetText Col, 0, head
    End With
Exit Sub
SetSpreadCol_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetSpreadCol of Module RMIMod"
End Sub

Public Sub SetTag(Spd As fpSpread, ByVal sValue As String, ByVal iCOL As Integer, ByVal iRow As Integer)

On Error GoTo SetTag_Error
   With Spd
        .Col = iCOL: .Row = iRow: .CellTag = sValue
   End With
Exit Sub
SetTag_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetTag of Module Module1"
End Sub
Public Function GetTag(Spd As fpSpread, ByVal iCOL As Integer, ByVal iRow As Integer) As String
On Error GoTo GetTag_Error
   With Spd
        .Col = iCOL: .Row = iRow: GetTag = .CellTag
   End With
Exit Function
GetTag_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GetTag of Module RMIMod"
End Function


Public Sub repproc2(r As Object)
Dim l1, l2 As RptLabel
'To display division name and date as labels in the report
r.Title = divname
On Error Resume Next
Set LB1 = r.Sections(2).Controls("pdate")
LB1.Caption = pdate
End Sub
Public Function getMasterName(ByVal Fieldname As String, ByVal TableName As String, ByVal WhereFieldName As String, ByVal txtName As String) As String
Dim strQuery As String
Dim rstQuery As New ADODB.Recordset

    strQuery = "SELECT " & Fieldname & " FROM " & TableName & " WHERE " & WhereFieldName & " = '" & txtName & "'"
    rstQuery.Open strQuery, DB, adOpenStatic
    If Not rstQuery.EOF Then
        getMasterName = IIf(IsNull(rstQuery(0)), "", rstQuery(0))
    Else
        getMasterName = ""
    End If
    rstQuery.Close
End Function
Public Function EXIST_ITC_TAX(DB As Connection, taxcode As String)
Set NewRs = New Recordset
NewRs.Open "SELECT ISNULL(ITCTAXSTATUS,'N') AS VAT FROM iG_TAX WHERE TAX_CODE='" & taxcode & "'", DB, adOpenStatic
If NewRs.RecordCount > 0 Then
If UCase(NewRs("VAT")) = "Y" Then
    EXIST_ITC_TAX = True
Else
    EXIST_ITC_TAX = False
End If
Else
EXIST_ITC_TAX = False
End If

End Function

'---------
Public Function EXIST_STAT_PARA(party As String, DB As Connection)
Set NewRs = New Recordset
NewRs.Open "SELECT a.state_code as Stat FROM pp_divmas a,fa_slmas b where a.state_code=b.state_code and a.state_code is not null and b.state_code is not null and slcode='" & party & "'", DB, adOpenStatic
If NewRs.RecordCount > 0 Then
    EXIST_STAT_PARA = True
Else
    EXIST_STAT_PARA = False
End If

End Function
Public Function ITC_TAX(Taxper As Double, Taxamt As Double, TAX_CODE As String) As Double
    Set DB = New Connection
    DB.Open connectstring

    Set NewRs = New Recordset
    NewRs.Open "SELECT ISNULL(ITCPER,0) AS ITC FROM IG_TAX WHERE TAX_CODE='" & TAX_CODE & "'", DB, adOpenStatic
    If NewRs.RecordCount > 0 Then
        If Taxper > 0 Then
            ITC_TAX = (NewRs("ITC") / Taxper) * Taxamt
        Else
            ITC_TAX = 0
        End If
    Else
        ITC_TAX = 0
    End If
End Function
Public Function EXIST_VAT_TINNo(slcode As String, DB As Connection)
Set NewRs = New Recordset
NewRs.Open "SELECT ISNULL(TINNO,'') AS TINNO FROM FA_SLMAS WHERE SLCODE = '" & slcode & "'", DB, adOpenStatic, adLockBatchOptimistic
If NewRs("TINNO") = "" Then
   EXIST_VAT_TINNo = False
Else
   EXIST_VAT_TINNo = True
End If

End Function
Public Sub rep4(AD As Object, TBname As String, f1 As String, f2 As String, LB1 As Object, LB1C As String, DT As Object, com As Object)
On Error GoTo erm
    AD.ConnectionString = connectstring
    AD.RecordSource = "select distinct " & f1 & "+'-'+" & f2 & " fld from " & TBname & " order by fld"
    AD.Refresh
    LB1.Caption = LB1C
    'Filling the comboboxes  with records  from the table
    Set DT.RowSource = AD
    DT.ListField = "fld"
    AD.Recordset.MoveFirst
    DT.Text = AD.Recordset(0)
erm:
    If Err.Number = 3021 Then
        MsgBox ("No Records Found"), vbInformation, head
        recflg = 1
        com.Enabled = False
    Else
        com.Enabled = True
    End If
End Sub


Sub srepproc(lbcp1, lbcp2, LB1 As Object, LB2 As Object, DT As Object, cb1 As Object, cb2 As Object)
Dim Rs As Recordset
Dim st As String
WindowState = 2
DT.ConnectionString = connectstring
Set Rs = New Recordset
Rs.Open "SELECT STSUBCON FROM IN_PARA", connectstring, adOpenStatic
st = Rs(0)
DT.RecordSource = "select slcode+' - '+slname fld from FA_SLMAS WHERE substring(SLCODE,1,2) = '" & Rs(0) & "'"
DT.Refresh
LB1.Caption = lbcp1
LB2.Caption = lbcp2
WindowState = 2
Set cb1.RowSource = DT
Set cb2.RowSource = DT
cb1.ListField = "fld"
cb2.ListField = "fld"
DT.Recordset.MoveFirst
cb1.Text = DT.Recordset(0)
DT.Recordset.MoveLast
cb2.Text = DT.Recordset(0)
End Sub
Public Function EXIST_VAT(slcode As String)
''To check State code is null
Set rsa = New Recordset
rsa.Open "select state_code from fa_slmas where slcode='" & slcode & "'", DB, adOpenStatic
If rsa.RecordCount > 0 Then
    If IsNull(rsa(0)) = True Then
        MsgBox "State Code is Empty for this Supplier", vbInformation, head
        '''EXIST_VAT = 7
        Exit Function
    End If
End If

'' To check supplier are in same state
Set staters = New Recordset
staters.Open "select a.state_code from fa_slmas a,pp_divmas b where a.state_code=b.state_code and a.slcode='" & slcode & "' and  a.state_code is not null and divcode='" & Divcode & "' ", DB, adOpenStatic
If staters.RecordCount > 0 Then
    '''To check TINNO exist for that particular supplier
    Set NewRs = New Recordset
    NewRs.Open "SELECT ISNULL(TINNO,'') AS TINNO FROM FA_SLMAS WHERE SLCODE = '" & slcode & "'", DB, adOpenStatic, adLockBatchOptimistic
    If NewRs("TINNO") = "" Then
       d = MsgBox("VAT NOT EXIST FOR THIS SUPPLIER [ Do You Want To Continue ]", vbYesNo)   ',vbinformation,head
       EXIST_VAT = (d)
    Else
       EXIST_VAT = 0
    End If
End If
End Function
Public Function EXIST_VAT_PARA()
''' To check VAT FLAG exist in Parameter
Set NewRs = New Recordset
NewRs.Open "SELECT ISNULL(VATFLG,'') AS VAT FROM RM_PARAM ", DB, adOpenStatic, adLockBatchOptimistic
If NewRs("VAT") = "Y" Then
    EXIST_VAT_PARA = True
Else
    EXIST_VAT_PARA = False
End If

End Function

Public Function LookuPLoad4(Fld1 As String, Fld2 As String, Fld3 As String, Fld4 As String, Tbl As String, NFocus As Object, CanFocus As Object, Fld1focus As Object, fld2Focus As Object, Caption As String) As Boolean
        LookUp.Clear = True
        LookUp.query = "select " & Fld1 & "," & Fld2 & "," & Fld3 & "," & Fld4 & " from " & Tbl & ""
        LookUp.DefCol = "Area Name"
        LookUp.ALIGN = "1500,3000,2000,2000"
        LookUp.Caption = Caption
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            If Fld1focus <> fld2Focus Then
                fld2Focus.Text = LookUp.Fields(1)
            End If
            Fld1focus.Text = LookUp.Fields(0)
            fld2Focus.Text = LookUp.Fields(1)
            LookUp.Clear = True
            LookuPLoad4 = True
            NFocus.SetFocus
        Else
            CanFocus.SetFocus
            LookuPLoad4 = False
            LookUp.Clear = True
        End If
End Function
Public Function LookuPLoad3(Fld1 As String, Fld2 As String, Fld3 As String, Tbl As String, NFocus As Object, CanFocus As Object, Fld1focus As Object, fld2Focus As Object, Caption As String) As Boolean
        LookUp.Clear = True
        LookUp.query = "select " & Fld1 & "," & Fld2 & "," & Fld3 & " from " & Tbl & ""
        LookUp.DefCol = "Agent Name"
        LookUp.ALIGN = "1450,4000,2000"
        LookUp.Caption = Caption 'l
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            If Fld1focus <> fld2Focus Then
                fld2Focus.Text = LookUp.Fields(1)
            End If
            Fld1focus.Text = LookUp.Fields(0)
            fld2Focus.Text = LookUp.Fields(1)
            LookUp.Clear = True
            LookuPLoad3 = True
            NFocus.SetFocus
        Else
            CanFocus.SetFocus
            LookuPLoad3 = False
            LookUp.Clear = True
        End If
End Function

Public Function LookuPLoad(Fld1 As String, Fld2 As String, Tbl As String, NFocus As Object, CanFocus As Object, Fld1focus As Object, fld2Focus As Object, Caption As String) As Boolean
        LookUp.Clear = True
        LookUp.query = "select " & Fld1 & "," & Fld2 & " from " & Tbl & " where divcode='" & Divcode & "'"
        LookUp.DefCol = "Name"
        LookUp.ALIGN = "2000,6000"
        LookUp.Caption = Captionl
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            If Fld1focus <> fld2Focus Then
                fld2Focus.Text = LookUp.Fields(1)
            End If
            Fld1focus.Text = LookUp.Fields(0)
            fld2Focus.Text = LookUp.Fields(1)
            LookUp.Clear = True
            LookuPLoad = True
            NFocus.SetFocus
        Else
            CanFocus.SetFocus
            LookuPLoad = False
            LookUp.Clear = True
        End If
End Function
Public Sub reppr(AD As Object, LB1 As Object, LB2 As Object, cb1 As Object, cb2 As Object, TC1 As String, TC2 As String, LC1 As String, LC2 As String)
On Error GoTo erm
    f = Format(yfdate, "yyyy-mm-dd")
    t = Format(pdate, "yyyy-mm-dd")
    AD.ConnectionString = connectstring
    AD.RecordSource = "select distinct(docdt) FLD from IN_TRNHEAD ,IN_PARA where docdt between '" + f + "' and '" + t + "' and tc between " & TC1 & " and " & TC2 & "  order by docdt"
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
erm:
    If Err.Number = 3021 Then
        MsgBox ("No Records Found"), vbInformation, head
        recflg = 1
    End If
End Sub
Public Sub rep1(AD As Object, TBname As String, Con As String, f1 As String, f2 As String, LB1 As Object, LB1C As String, DT As Object, com As Object)
On Error GoTo erm
    AD.ConnectionString = connectstring
    AD.RecordSource = "select distinct " & f1 & "+'-'+" & f2 & " fld from " & TBname & " where " & Con & "  order by fld"
    AD.Refresh
    LB1.Caption = LB1C
    'Filling the comboboxes  with records  from the table
    Set DT.RowSource = AD
    DT.ListField = "fld"
    AD.Recordset.MoveFirst
    DT.Text = AD.Recordset(0)
    DT.Visible = True
erm:
    If Err.Number = 3021 Then
        MsgBox ("No Records Found"), vbInformation, head
        recflg = 1
        com.Enabled = False
    Else
        com.Enabled = True
    End If
End Sub
Public Sub rep2(AD As Object, TBname As String, Con As String, f1 As String, LB1 As Object, LB2 As Object, LB1C As String, LB2C As String, dt1 As Object, dt2 As Object, com As Object)
On Error GoTo erm
    AD.ConnectionString = connectstring
    AD.RecordSource = "select distinct " & f1 & " fld from " & TBname & " where " & Con & " order by fld"
    AD.Refresh
    LB1.Caption = LB1C
    LB2.Caption = LB2C
    'Filling the comboboxes  with records  from the table
    Set dt1.RowSource = AD
    Set dt2.RowSource = AD
    dt1.ListField = "fld"
    dt2.ListField = "fld"
    AD.Recordset.MoveFirst
    dt1.Text = AD.Recordset(0)
    AD.Recordset.MoveLast
    dt2.Text = AD.Recordset(0)
    dt1.Visible = True
    dt2.Visible = True
    LB1.Visible = True
    LB2.Visible = True
erm:
    If Err.Number = 3021 Then
        MsgBox ("No Records Found"), vbInformation, head
        recflg = 1
        com.Enabled = False
    Else
        com.Enabled = True
    End If
End Sub
Public Sub rep3(AD As Object, TBname As String, Con As String, f1 As String, f2 As String, LB1 As Object, LB2 As Object, LB1C As String, LB2C As String, datacom1 As Object, datacom2 As Object, com As Object)
On Error GoTo erm
    AD.ConnectionString = connectstring
    AD.RecordSource = "select distinct " & f1 & "+'-'+" & f2 & " fld from " & TBname & " where " & Con & " order by fld"
    AD.Refresh
    LB1.Caption = LB1C
    LB2.Caption = LB2C
    'Filling the comboboxes  with records  from the table
    Set datacom1.RowSource = AD
    datacom1.ListField = "fld"
    Set datacom2.RowSource = AD
    datacom2.ListField = "fld"
    AD.Recordset.MoveFirst
    datacom1.Text = AD.Recordset(0)
    AD.Recordset.MoveLast
    datacom2.Text = AD.Recordset(0)
    datacom1.Visible = True
    datacom2.Visible = True
erm:
    If Err.Number = 3021 Then
        MsgBox ("No Records Found"), vbInformation, head
        recflg = 1
        com.Enabled = False
    Else
        com.Enabled = True
    End If
End Sub
Public Function AdditionalTax() As Boolean
Dim DbTmp As Connection
    Set DbTmp = New Connection
    DbTmp.Open connectstring
    
    AdditionalTax = False
    Set Rs = New Recordset
    Rs.Open "SELECT ADDTAXREQUIRED FROM RM_PARAM", DbTmp, adOpenStatic
    If Rs.EOF = False Then
        If NULLCHECK(Rs!ADDTAXREQUIRED) = "Y" Then
            AdditionalTax = True
        End If
    End If
    
End Function

Public Function Raise_DBNote(slcode As String, amt As Double, DT As Date, n As String, Optional docno As String, Optional DOCDT As String, Optional TC As String) As Long
Dim DbTmp As Connection
Dim RsDb As Recordset
Dim Fatc As String, GL As String
Dim FaInstall, FaTfr As String
Dim Vno As Long


    Set DbTmp = New Connection
    DbTmp.Open connectstring

    Set RsDb = New Recordset
    RsDb.Open "Select Drnote FROM Fa_Param", DbTmp, adOpenStatic
    Fatc = RsDb(0)
    
    Set RsDb = New Recordset
    RsDb.Open "Select ISNULL(Fainstal,'N'), ISNULL(Fatfr,'N') FROM In_Para", DbTmp, adOpenStatic
    FaInstall = RsDb(0): FaTfr = RsDb(1)
    
    GL = ""
    Set RsDb = New Recordset
    RsDb.Open "Select glcode from fa_glmas", DB, adOpenStatic
    If RsDb.RecordCount > 0 Then
        Do While Not GL <> ""
            LookUp.Clear = True
            LookUp.query = "Select glcode as 'GL Code',glhead As 'GL Head' FROM fa_glmas"
            LookUp.Caption = "General Ledger Details"
            LookUp.DefCol = "GL Head"
            LookUp.ALIGN = "2500,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                GL = LookUp.Fields(0)
            End If
        Loop
    Else
        GL = ""
    End If
    If UCase(FaInstall) = "Y" And UCase(FaTfr) = "Y" Then
        Set RsDb = New Recordset
        RsDb.Open "SELECT ISNULL(Max(Vocno),0) FROM Fa_Jvhead WHERE Vocdt BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND Tc = '" & Fatc & "' AND Divcode = '" & Divcode & "'", DbTmp, adOpenStatic
        Vno = RsDb(0) + 1
        
        DbTmp.Execute "INSERT INTO  Fa_Jvhead(Divcode, Tc, Vocno, Vocdt, CurrCode, ConvRate, EntUsrid, EntDate, Docno)VALUES('" & Divcode & "','" & _
                    Fatc & "','" & Vno & "','" & Format(DT, "YYYY-MM-DD") & "','RS',1,'" & usrid & "','" & Format(Date, "YYYY-MM-DD") & "'," & Vno & ")"
        If Mid(amt, 1, 1) = "-" Then
            DbTmp.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, Debit, Credit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                            Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',1,'" & slcode & "','" & n & "'," & Abs(amt) & ",0," & Abs(amt) & "," & Abs(amt) & "," & Vno & ")"
            DbTmp.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, Debit, Credit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                        Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',2,'" & GL & "','" & n & "',0," & Abs(amt) & "," & Abs(amt) & "," & Abs(amt) & "," & Vno & ")"
        Else
            DbTmp.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, Debit, Credit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                            Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',1,'" & slcode & "','" & n & "',0," & Abs(amt) & "," & Abs(amt) & "," & Abs(amt) & "," & Vno & ")"
            DbTmp.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, Debit, Credit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                        Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',2,'" & GL & "','" & n & "'," & Abs(amt) & ",0," & Abs(amt) & "," & Abs(amt) & "," & Vno & ")"

        End If
    End If
    Raise_DBNote = Vno
End Function

Public Function ReturnRecordSetIfExists(ByVal qry As String) As ADODB.Recordset
  Dim TmpCn As New ADODB.Connection
  Dim TmpRs As New ADODB.Recordset
  
   On Error GoTo ReturnRecordSetIfExists_Error
  
   With TmpCn
        .Open connectstring
   End With
   
   If TmpCn.State > 0 Then
      With TmpRs
           .ActiveConnection = TmpCn
           .CursorLocation = adUseClient
           .CursorType = adOpenStatic
           .LockType = adLockReadOnly
           .Source = qry
           .Open
      End With
      Set ReturnRecordSetIfExists = TmpRs
      If TmpRs.State > 0 Then Set TmpRs = Nothing
      If TmpCn.State > 0 Then Set TmpCn = Nothing
      Exit Function
   End If
   
ReturnRecordSetIfExists_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ReturnRecordSetIfExists of Module RMIMod"
    Err.Clear
    Exit Function
End Function

Public Function Record_Exists(tname As String, Optional Message As String) As Boolean
On Error Resume Next
Set cn2 = New Connection
cn2.CursorLocation = adUseClient 'aduseclinet
cn2.Open connectstring
Set Rs = New Recordset
Rs.Open "select count(*) from " & tname & "", cn2
    If Rs(0) = 0 Then
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
Public Function Record_Existstops(tname As String, Optional Message As String) As Boolean
On Error Resume Next
Set cn2 = New Connection
cn2.CursorLocation = aduseclinet
cn2.Open connectstring
Set Rs = New Recordset
Rs.Open "select Top 1 * from " & tname & "", cn2
    If Rs(0) = 0 Then
     If Trim(Message) = "" Then
        MsgBox "No Records Found ", vbInformation, head
     Else
        MsgBox Message, vbInformation, head
     End If
        Screen.MousePointer = 0
        Opt = ""
        Record_Existstops = False
        Exit Function
    End If

Record_Existstops = True
End Function


Public Sub ToNumbernew(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer, Optional dlen As Integer)
    'vv
    If dlen <> 0 Then
        If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
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
'
'Public Function ToValidFinYear() As Boolean
'    Dim rstYear As Recordset
'    Set rstYear = New Recordset
'
'    rstYear.Open "Select max(lotyear) from rm_lot where divcode='" & Divcode & "'", db, adOpenStatic
'    If rstYear.EOF = False Then
'        If rstYear(0) <> Year(yfdate) Then
'            MsgBox "Transaction is Closed in this Finanical Year", vbInformation, head
'            ToValidFinYear = False
'            Exit Function
'        Else
'            ToValidFinYear = True
'            Exit Function
'        End If
'    End If
'    ToValidFinYear = True
'    rstYear.Close
'End Function
'


Public Function getMasterName1(ByVal Fieldname As String, ByVal TableName As String, ByVal WhereFieldName As String, ByVal txtName As String) As String
Dim strQuery As String
Dim rstQuery As New ADODB.Recordset

    strQuery = "SELECT " & Fieldname & " FROM " & TableName & " WHERE " & WhereFieldName & " = '" & txtName & "'"
    rstQuery.Open strQuery, DB, adOpenStatic
    If Not rstQuery.EOF Then
        getMasterName1 = IIf(IsNull(rstQuery(0)), "", rstQuery(0))
    Else
        getMasterName1 = ""
    End If
    rstQuery.Close
End Function



Public Sub NEWFORM3(tol As Object, NO As Integer)

    On Error Resume Next

    If NO <> 0 Then

        DB.Open cnstr

        Dim Rs As New Recordset
        Rs.Open "SELECT SNO,FORM_NAME,ADD_FLG,MOD_FLG,DEL_FLG FROM USERLEVEL WHERE DIVCODE = '" & Divcode & "' AND MODULE = " & ModuleNo & " AND ULEVEL = " & ulevel & " AND SNO = " & NO, DB

        If Rs("ADD_FLG") = "Y" Then tol(0).Enabled = True Else tol(0).Enabled = False
        If Rs("MOD_FLG") = "Y" Then tol(1).Enabled = True Else tol(1).Enabled = False
        If Rs("DEL_FLG") = "Y" Then tol(2).Enabled = True Else tol(2).Enabled = False

        tol(3).Enabled = True 'LIST
        tol(5).Enabled = True  'FIRST
        tol(6).Enabled = True  'NEXT
        tol(7).Enabled = True  'PREVIOUS
        tol(8).Enabled = True  'LAST
        tol(9).Enabled = False 'SAVE
        tol(10).Enabled = False 'CANCEL
        tol(11).Enabled = True  'EXIT
        'tol(12).Enabled = False ' print
    Else
        tol(0).Enabled = True 'add
        tol(1).Enabled = True 'mod
        tol(2).Enabled = True 'del
        tol(3).Enabled = True  'LIST
        tol(5).Enabled = True  'FIRST
        tol(6).Enabled = True  'NEXT
        tol(7).Enabled = True  'PREVIOUS
        tol(8).Enabled = True  'LAST
        tol(9).Enabled = False 'SAVE
        tol(10).Enabled = False 'CANCEL
        tol(11).Enabled = True  'EXIT
        'tol(12).Enabled = False ' print
    End If

End Sub

Public Sub ToAlpha1(fld As Object, maxlenth As Integer, KeyAscii As Integer)
    If Len(fld) = maxlenth And KeyAscii <> 8 And KeyAscii <> 9 Then
        KeyAscii = 0
        Beep
    End If
End Sub

Public Sub ToNumber1(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)
    
    If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
        'to allow numbers,decimal pt and backspace
    Else
        KeyAscii = 0
        Beep
    End If
    
    If Not (InStr(obj.Text, ".") = 0) And KeyAscii = 46 Then
        'to check for 2nd occurence of decimal pt
        Beep
        KeyAscii = 0
    End If
                                                                   
    'If Not (InStr(obj, ".") = 0) And Len(obj) - InStr(obj, ".") = 2 And Not (KeyAscii = 8) And Not (KeyAscii = 9) Then
                                                            
    If Not (InStr(obj, ".") = 0) And Len(obj) - InStr(obj, ".") = 3 And Not (KeyAscii = 8) And Not (KeyAscii = 9) Then
        KeyAscii = 0
        Beep
    End If
    
    If Len(obj) = maxlen And KeyAscii <> 46 And (InStr(obj, ".") = 0) And KeyAscii <> 8 And KeyAscii <> 9 Then
        KeyAscii = 0
        Beep
    End If

End Sub

Public Sub tonumle1(obj As Object, maxlen As Integer, KeyAscii As Integer)
    
    If KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Or KeyAscii = 9 Then
        'to allow numbers,decimal pt and backspace
    Else:  KeyAscii = 0
    End If
    If Len(obj) > maxlen Then KeyAscii = 0
End Sub




Public Sub assigntc()
llisch = 0
lassch = 0
lsasch = 0
linsch = 0
lpusch = 0
lexsch = 0


Dim rsfc As New Recordset

    Set rsfc = New Recordset
    rsfc.Open "select fromcashtc,tocashtc,frombanktc,tobanktc,fromjvtc,tojvtc,fromsalestc,tosalestc,frompurtc,topurtc,lastlisch,lastassch,lastinsch,lastexsch,lastsasch,lastpusch,depjvtc,lstc,estc,frapinsch,frapexsch from FA_PARAM", DB, adOpenStatic
    
    If rsfc.RecordCount > 0 Then
        fcash = rsfc("fromcashtc")
        tcash = rsfc("tocashtc")
        fbank = rsfc("frombanktc")
        tbank = rsfc("tobanktc")
        fjv = rsfc("fromjvtc")
        tjv = rsfc("tojvtc")
        fpur = rsfc("frompurtc")
        tpur = rsfc("topurtc")
        fsal = rsfc("fromsalestc")
        tsal = rsfc("tosalestc")
        dpjv = IIf(IsNull(rsfc("depjvtc")), Null, rsfc("depjvtc"))
        est = rsfc("estc")
        lst = rsfc("lstc")
        frin = rsfc("frapinsch")
        frex = rsfc("frapexsch")
        llisch = rsfc("lastlisch")
        lassch = rsfc("lastassch")
        linsch = rsfc("lastinsch")
        lexsch = rsfc("lastexsch")
        lsasch = rsfc("lastsasch")
        lpusch = rsfc("lastpusch")
        
        'DTPicker1.Value = rsfc("sdate")
        'DTPicker2.Value = rsfc("edate")
        
        
    Else
        MsgBox "No Records found in Parameter table", vbInformation, head
    End If

End Sub
  
Public Function SpdSetFocus(ByRef Spd As fpSpread, sCol As Long, sRow As Long)
On Error GoTo ErrPath
    
    Spd.Row = sRow
    Spd.Col = sCol
    Spd.Action = ActionActiveCell
    Spd.SetFocus
    SpdHighlight Spd, sRow, sCol
Exit Function
ErrPath:
    MsgBox Err.Description
End Function
Public Sub SpdHighlight(ByRef Spd As fpSpread, NewRow As Long, NewCol As Long, Optional OldRow As Long, Optional OldCol As Long)
On Error GoTo ErrPath
    Spd.BlockMode = True
    'DoEvents
    Spd.RowHeight(-1) = 14.5
    Spd.Row = 1
    Spd.Col = 1
    Spd.Row2 = Spd.MaxRows
    Spd.Col2 = Spd.MaxCols
    Spd.BackColor = SpdOrdClr
    Spd.FontBold = False
    If NewRow > 0 Then
        Spd.Row = NewRow
        Spd.Col = NewCol
        Spd.Row2 = NewRow
        Spd.Col2 = NewCol
        sOldClr = Spd.BackColor
        
        Spd.BackColor = SpdHlightClr
        Spd.FontBold = True
    End If
    Spd.BlockMode = False
    Spd.RowHeight(-1) = 14.5
Exit Sub
ErrPath:
    MsgBox Err.Description
End Sub
Public Function LotNoGen() As String
    Dim DbTmp As Connection
    Dim TmpRs As Recordset
    Set DbTmp = New Connection
    DbTmp.Open connectstring

    Set TmpRs = New Recordset
    TmpRs.Open "SELECT isnull(LotNoGen,'S')LotNoGen FROM RM_PARAM ", DbTmp, adOpenStatic, adLockBatchOptimistic
    If Not TmpRs.EOF Then
        LotNoGen = Trim(TmpRs("LotNoGen"))
    End If

End Function


Public Function NULLCHECK(TextVal)
  If IsNull(TextVal) = True Then
    NULLCHECK = vbNullString
  ElseIf IsNull(TextVal) = False Then
    NULLCHECK = Trim$(TextVal)
  End If
End Function

Public Function POApproval() As Boolean
    POApproval = False
    Dim DbTmp As Connection
    Dim TmpRs As Recordset
    Set DbTmp = New Connection
    DbTmp.Open connectstring

    Set TmpRs = New Recordset
    TmpRs.Open "SELECT isnull(PO_Approval,'N')PO_Approval FROM RM_PARAM ", DbTmp, adOpenStatic, adLockBatchOptimistic
    If Not TmpRs.EOF Then
        If TmpRs("PO_Approval") = "Y" Then
            POApproval = True
        End If
    End If

End Function


Public Function POFirstLevelApproalDone(ContNo As String, contdt As String) As Boolean
    POFirstLevelApproalDone = False
    Dim DbTmp As Connection
    Dim TmpRs As Recordset
    Set DbTmp = New Connection
    DbTmp.Open connectstring

    Set TmpRs = New Recordset
    TmpRs.Open "SELECT isnull(FIRST_AppFlg,'N')FIRST_AppFlg FROM RM_CONT " & _
               " WHERE DIVCODE ='" & Divcode & "'" & _
               " AND   CONTNO  ='" & ContNo & "'" & _
               " AND   CONTDT  ='" & Format(contdt, "YYYY-MM-DD") & "'", DbTmp, adOpenStatic, adLockBatchOptimistic
    If Not TmpRs.EOF Then
        If TmpRs("FIRST_AppFlg") = "Y" Then
            POFirstLevelApproalDone = True
        End If
    End If

End Function

Public Sub GetPartyType(Ptype As String, fname As String)
Set DB = New Connection
DB.Open connectstring
    Dim K, p, ag As Integer
    K = 1
    p = 1
    Dim CType, st, PartyType As String
    Dim st1() As String
    Dim rsk As Recordset
    Set rsk = New Recordset
    If UCase(Ptype) = "AGENT" Then
       PartyType = "PTYPE_SALESAGENT"
    ElseIf UCase(Ptype) = "CUSTOMER" Then
        PartyType = "PTYPE_LOCALSALES"
    ElseIf UCase(Ptype) = "BROKER" Then
        PartyType = "PTYPE_SALESBROKER"
     ElseIf UCase(Ptype) = "PTYPE_RECEIPT" Then
        PartyType = "ptypecotton"
    ElseIf UCase(Ptype) = "RMVENDOR" Then
        PartyType = "RMVendor"
   
    End If
    
    rsk.Open "SELECT " & PartyType & "   FROM MASTERLEN ", DB, adOpenStatic, adLockBatchOptimistic
    
    If UCase(Ptype) = "AGENT" Then
       CType = rsk("PTYPE_SALESAGENT")
        ElseIf UCase(Ptype) = "CUSTOMER" Then
            CType = rsk("PTYPE_LOCALSALES")
    ElseIf UCase(Ptype) = "BROKER" Then
        CType = rsk("PTYPE_SALESBROKER")
    ElseIf UCase(Ptype) = "PTYPE_RECEIPT" Then
        CType = rsk(0)
     ElseIf UCase(Ptype) = "RMVENDOR" Then
        CType = rsk("RMVENDOR")
    End If

    PartyTypeStr = ""
    Do While InStr(Mid(CType, K, 20), ",") <> 0
    K = K + InStr(Mid(CType, K, 20), ",")
    p = p + 1
    Loop
    If InStr(CType, ",") Then
         st1() = Split(CType, Chr(44))
    Else
        st = CType
        PartyTypeStr = "Like '" & st & "%' "
    End If
    ag = 1
    If p > 1 Then
        PartyTypeStr = "Like '" & st1(0) & "%' "
    End If
    Do While ag <> p
        PartyTypeStr = PartyTypeStr & " or " & fname & " like '" & st1(ag) & "%'"
        ag = ag + 1
    Loop
  
End Sub

Public Function Raise_DBNoteWithGST(dbdb As Connection, TXNOPT As String, JVVocno As Double, CGSTAMT As Double, SGSTAMT As Double, IGSTAMT As Double, taxabletamt As Double, pjtc As Integer, slcode As String, amt As Double, DT As Date, n As String, Optional Roff As Double, Optional LOT_ALtcsamt As Double, Optional docno As String, Optional DOCDT As String, Optional TC As String) As Long
Dim DbTmp As Connection
Dim RsDb As Recordset
Dim Fatc As String, GL As String
Dim FaInstall, FaTfr As String
Dim Vno As Long


    Set DbTmp = New Connection
    DbTmp.CursorLocation = adUseClient
    DbTmp.Open connectstring

    Set RsDb = New Recordset
    RsDb.Open "Select Drnote FROM Fa_Param", dbdb, adOpenStatic
    Fatc = RsDb(0)
    
    Set RsDb = New Recordset
    RsDb.Open "Select ISNULL(Fainstal,'N'), ISNULL(Fatfr,'N') FROM In_Para", dbdb, adOpenStatic
    FaInstall = RsDb(0): FaTfr = RsDb(1)
    
    GL = ""
    Set RsDb = New Recordset
    RsDb.Open "Select glcode from fa_glmas", dbdb, adOpenStatic
    If RsDb.RecordCount > 0 Then
        Do While Not GL <> ""
            LookUp.Clear = True
            LookUp.query = "Select glcode as 'GL Code',glhead As 'GL Head' FROM fa_glmas"
            LookUp.Caption = "General Ledger Details"
            LookUp.DefCol = "GL Head"
            LookUp.ALIGN = "2500,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                GL = LookUp.Fields(0)
            End If
        Loop
    Else
        GL = ""
    End If
    If UCase(FaInstall) = "Y" And UCase(FaTfr) = "Y" Then
        Set RsDb = New Recordset
        
'            Dim DBCRAMT As Double
'            Dim DCCGSTAMT As Double
'            Dim DCSGSTAMT As Double
'            Dim DCIGSTAMT As Double
'            Dim DCCGSTAC As String
'            Dim DCSGSTAC As String
'            Dim DCIGSTAC As String
'
'            DCCGSTAMT = (val(txtDBCRNt.Text) * val(TXTFIELDS(100).Text) / 100)
'            DCSGSTAMT = (val(txtDBCRNt.Text) * val(TXTFIELDS(101).Text) / 100)
'            DCIGSTAMT = (val(txtDBCRNt.Text) * val(TXTFIELDS(102).Text) / 100)

        Set Rs = New Recordset
        Rs.Open "SELECT CGSTGL,SGSTGL,IGSTGL,ISNULL(TCS_GL,'') TCS_GL ,ISNULL(ADJUSTGL,'') ADJUSTGL FROM RM_PARAM_FA  WHERE divcode = '" & Divcode & "' and TCCODE=" & val(pjtc) & "   ", dbdb
        DCCGSTAC = Rs(0)
        DCSGSTAC = Rs(1)
        DCIGSTAC = Rs(2)
        DTCSAC = Rs(3)
        If UCase(CustID1) = "SCM" Then
            DTADJGLAC = "640009"
        Else
            DTADJGLAC = Rs(4)
        End If

        If TXNOPT = "add" Then
            RsDb.Open "SELECT ISNULL(Max(Vocno),0) FROM Fa_Jvhead WHERE Vocdt BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND Tc = '" & Fatc & "' AND Divcode = '" & Divcode & "'", dbdb, adOpenStatic
            Vno = RsDb(0) + 1
        Else
            Vno = JVVocno
        End If
        
        dbdb.Execute "INSERT INTO  Fa_Jvhead(Divcode, Tc, Vocno, Vocdt, CurrCode, ConvRate, EntUsrid, EntDate, Docno)VALUES('" & Divcode & "','" & _
                    Fatc & "','" & Vno & "','" & Format(DT, "YYYY-MM-DD") & "','RS',1,'" & usrid & "','" & Format(Date, "YYYY-MM-DD") & "'," & Vno & ")"
        If Mid(amt, 1, 1) = "-" Then
       ' If UCase(CustID) = "COTTON" Then '''sasi 11.11.17
            dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                        Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',1,'" & slcode & "','" & n & "',0," & Abs(amt) & "," & Abs(amt) & "," & Abs(amt) & "," & Vno & ")"
            dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                    Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',2,'" & GL & "','" & n & "'," & Abs(taxabletamt) & ",0," & Abs(taxabletamt) & "," & Abs(taxabletamt) & "," & Vno & ")"

            If CGSTAMT <> 0 Then
              dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                        Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',3,'" & DCCGSTAC & "','" & n & "'," & Abs(CGSTAMT) & ",0," & Abs(CGSTAMT) & "," & Abs(CGSTAMT) & "," & Vno & ")"
                
              dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                        Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',4,'" & DCSGSTAC & "','" & n & "'," & Abs(SGSTAMT) & ",0," & Abs(SGSTAMT) & "," & Abs(SGSTAMT) & "," & Vno & ")"
            
             
               If Roff <> 0 Then
                    If Roff < 0 And taxabletamt < 0 Then
                     dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                             Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',5,'" & DTADJGLAC & "','" & n & "'," & Abs(Roff) & ",0," & Abs(Roff) & "," & Abs(Roff) & "," & Vno & ")"
                    Else
                     dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                             Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',5,'" & DTADJGLAC & "','" & n & "',0," & Abs(Roff) & "," & Abs(Roff) & "," & Abs(Roff) & "," & Vno & ")"
                    End If
               End If
               If val(LOT_ALtcsamt) <> 0 Then
                dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                        Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',6,'" & DTCSAC & "','" & n & "'," & Abs(LOT_ALtcsamt) & ",0," & Abs(LOT_ALtcsamt) & "," & Abs(LOT_ALtcsamt) & "," & Vno & ")"
                End If
               
            Else
             dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                        Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',3,'" & DCIGSTAC & "','" & n & "'," & Abs(IGSTAMT) & ",0," & Abs(IGSTAMT) & "," & Abs(IGSTAMT) & "," & Vno & ")"
                If Roff <> 0 Then
                    If Roff < 0 And taxabletamt < 0 Then
                        dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, Fcredit, Docno)VALUES('" & Divcode & "','" & _
                                Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',4,'" & DTADJGLAC & "','" & n & "'," & Abs(Roff) & ",0," & Abs(Roff) & "," & Abs(Roff) & "," & Vno & ")"
                     Else
                           dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                                Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',4,'" & DTADJGLAC & "','" & n & "',0," & Abs(Roff) & "," & Abs(Roff) & "," & Abs(Roff) & "," & Vno & ")"
                    
                     End If
               End If
                If val(LOT_ALtcsamt) <> 0 Then
                 dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                        Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',5,'" & DTCSAC & "','" & n & "'," & Abs(LOT_ALtcsamt) & ",0," & Abs(LOT_ALtcsamt) & "," & Abs(LOT_ALtcsamt) & "," & Vno & ")"
                End If
               
            End If
'        Else
'
'            DbTmp.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
'                            Fatc & "'," & Vno & ",'" & Format(dt, "YYYY-MM-DD") & "',1,'" & slcode & "','" & n & "'," & Abs(amt) & ",0," & Abs(amt) & "," & Abs(amt) & "," & Vno & ")"
''            DbTmp.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, Debit, Credit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
''                        Fatc & "'," & Vno & ",'" & Format(dt, "YYYY-MM-DD") & "',2,'" & GL & "','" & n & "',0," & Abs(amt) & "," & Abs(amt) & "," & Abs(amt) & "," & Vno & ")"
'
'             DbTmp.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
'                        Fatc & "'," & Vno & ",'" & Format(dt, "YYYY-MM-DD") & "',2,'" & GL & "','" & n & "',0," & Abs(taxabletamt) & "," & Abs(taxabletamt) & "," & Abs(taxabletamt) & "," & Vno & ")"
'
'            If CGSTAMT <> 0 Then
'            DbTmp.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
'                        Fatc & "'," & Vno & ",'" & Format(dt, "YYYY-MM-DD") & "',3,'" & DCCGSTAC & "','" & n & "',0," & Abs(CGSTAMT) & "," & Abs(CGSTAMT) & "," & Abs(CGSTAMT) & "," & Vno & ")"
'
'             DbTmp.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
'                        Fatc & "'," & Vno & ",'" & Format(dt, "YYYY-MM-DD") & "',4,'" & DCSGSTAC & "','" & n & "',0," & Abs(SGSTAMT) & "," & Abs(SGSTAMT) & "," & Abs(SGSTAMT) & "," & Vno & ")"
'             If Roff <> 0 Then
'              ' If roff > 0 Then
'               If Roff < 0 And taxabletamt < 0 Then
'
'                DbTmp.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, Fcredit, Docno)VALUES('" & Divcode & "','" & _
'                        Fatc & "'," & Vno & ",'" & Format(dt, "YYYY-MM-DD") & "',5,'640009','" & n & "',0," & Abs(Roff) & "," & Abs(Roff) & "," & Abs(Roff) & "," & Vno & ")"
'               Else
'
'               DbTmp.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
'                        Fatc & "'," & Vno & ",'" & Format(dt, "YYYY-MM-DD") & "',5,'640009','" & n & "'," & Abs(Roff) & ",0," & Abs(Roff) & "," & Abs(Roff) & "," & Vno & ")"
'               End If
'             End If
'              If val(LOT_ALtcsamt) <> 0 Then
'                DbTmp.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
'                          Fatc & "'," & Vno & ",'" & Format(dt, "YYYY-MM-DD") & "',6,'" & DTCSAC & "','" & n & "',0," & Abs(LOT_ALtcsamt) & "," & Abs(LOT_ALtcsamt) & "," & Abs(LOT_ALtcsamt) & "," & Vno & ")"
'                End If
'             Else
'             DbTmp.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
'                        Fatc & "'," & Vno & ",'" & Format(dt, "YYYY-MM-DD") & "',3,'" & DCIGSTAC & "','" & n & "',0," & Abs(IGSTAMT) & "," & Abs(IGSTAMT) & "," & Abs(IGSTAMT) & "," & Vno & ")"
'             If Roff <> 0 Then
''               DbTmp.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
''                        Fatc & "'," & Vno & ",'" & Format(dt, "YYYY-MM-DD") & "',4,'640009','" & n & "',0," & Abs(roff) & "," & Abs(roff) & "," & Abs(roff) & "," & Vno & ")"
''
'                If Roff < 0 And taxabletamt < 0 Then
'                        DbTmp.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, Fcredit, Docno)VALUES('" & Divcode & "','" & _
'                            Fatc & "'," & Vno & ",'" & Format(dt, "YYYY-MM-DD") & "',4,'640009','" & n & "'," & Abs(Roff) & ",0," & Abs(Roff) & "," & Abs(Roff) & "," & Vno & ")"
'                Else
'                    DbTmp.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
'                            Fatc & "'," & Vno & ",'" & Format(dt, "YYYY-MM-DD") & "',4,'640009','" & n & "',0," & Abs(Roff) & "," & Abs(Roff) & "," & Abs(Roff) & "," & Vno & ")"
'                End If
'
'                 If val(LOT_ALtcsamt) <> 0 Then
'                    DbTmp.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
'                           Fatc & "'," & Vno & ",'" & Format(dt, "YYYY-MM-DD") & "',3,'" & DTCSAC & "','" & n & "',0," & Abs(LOT_ALtcsamt) & "," & Abs(LOT_ALtcsamt) & "," & Abs(LOT_ALtcsamt) & "," & Vno & ")"
'                 End If
'             End If
'
'             End If
'         End If
            
        Else
            dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                            Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',1,'" & slcode & "','" & n & "',0," & Abs(amt) & "," & Abs(amt) & "," & Abs(amt) & "," & Vno & ")"
                            
'            DbTmp.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, Debit, Credit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
'                        Fatc & "'," & Vno & ",'" & Format(dt, "YYYY-MM-DD") & "',2,'" & GL & "','" & n & "'," & Abs(amt) & ",0," & Abs(amt) & "," & Abs(amt) & "," & Vno & ")"

            dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                        Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',2,'" & GL & "','" & n & "'," & Abs(taxabletamt) & ",0," & Abs(taxabletamt) & "," & Abs(taxabletamt) & "," & Vno & ")"

            If CGSTAMT > 0 Then
              dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                        Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',3,'" & DCCGSTAC & "','" & n & "'," & Abs(CGSTAMT) & ",0," & Abs(CGSTAMT) & "," & Abs(CGSTAMT) & "," & Vno & ")"
                
              dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                        Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',4,'" & DCSGSTAC & "','" & n & "'," & Abs(SGSTAMT) & ",0," & Abs(SGSTAMT) & "," & Abs(SGSTAMT) & "," & Vno & ")"
            If Roff <> 0 Then
                If Roff < 0 And taxabletamt < 0 Then
                            dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, Fcredit, Docno)VALUES('" & Divcode & "','" & _
                                Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',5,'" & DTADJGLAC & "','" & n & "'," & Abs(Roff) & ",0," & Abs(Roff) & "," & Abs(Roff) & "," & Vno & ")"
                Else
                            dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                                Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',5,'" & DTADJGLAC & "','" & n & "',0," & Abs(Roff) & ",0," & Abs(Roff) & "," & Vno & ")"
    
                End If
            End If
             If val(LOT_ALtcsamt) <> 0 Then
              dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                        Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',6,'" & DTCSAC & "','" & n & "'," & Abs(LOT_ALtcsamt) & ",0," & Abs(LOT_ALtcsamt) & "," & Abs(LOT_ALtcsamt) & "," & Vno & ")"
              End If
            Else

             dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                        Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',3,'" & DCIGSTAC & "','" & n & "'," & Abs(IGSTAMT) & ",0," & Abs(IGSTAMT) & "," & Abs(IGSTAMT) & "," & Vno & ")"
            
            If Roff <> 0 Then
                If Roff < 0 And taxabletamt < 0 Then
                
                dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, Fcredit, Docno)VALUES('" & Divcode & "','" & _
                            Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',4,'" & DTADJGLAC & "','" & n & "'," & Abs(Roff) & ",0," & Abs(Roff) & "," & Abs(Roff) & "," & Vno & ")"
                Else
                 dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                            Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',4,'" & DTADJGLAC & "','" & n & "',0," & Abs(Roff) & "," & Abs(Roff) & "," & Abs(Roff) & "," & Vno & ")"
                
                End If
            End If
            If val(LOT_ALtcsamt) <> 0 Then
                dbdb.Execute "INSERT INTO Fa_Jvline(Divcode, Tc, Vocno, Vocdt, Vocsno, Accode, Narration1, credit, debit, AmtDue, FDebit, Docno)VALUES('" & Divcode & "','" & _
                        Fatc & "'," & Vno & ",'" & Format(DT, "YYYY-MM-DD") & "',5,'" & DTCSAC & "','" & n & "'," & Abs(LOT_ALtcsamt) & ",0," & Abs(LOT_ALtcsamt) & "," & Abs(LOT_ALtcsamt) & "," & Vno & ")"
            End If
            
            
            End If
            
               
        End If
    End If
    Raise_DBNoteWithGST = Vno
End Function


