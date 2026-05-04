Attribute VB_Name = "GenMod"
Option Explicit


Dim a As Integer
Dim I As Integer
Global CustID As String
Global CustID1 As String
Global prcount As Integer
Global intervalMinutes As Double
Global IdealMinutes As Double
Global Autologoff As String
Global PrPoNo As String
Global prdate As String
Global TLocalIPAdd As String
Global CompName As String, CompCode As String
Global PrDivname As String, PrUnitName As String
Global SCREENRES_CHANGE As String
Global LocalIPAdd As String
Global GLDBPASSWORD As String
Global PDFExportFlag As Integer
Global RSCHECK As Recordset
Public Type FnRtn
    FnInt As Integer
    FnBool As Boolean
    
End Type
Global Addallow As Boolean
Public Enum ModeType
    ADD
    modification
    Delete
    List
    None
    Find
End Enum

Public Enum CountInfo
    CInfo_Carding
    CInfo_Doubling
    CInfo_YarnType
    CInfo_BlendMasID
    CInfo_BlendCode
    CInfo_BlendName
    CInfo_BlendType
    CInfo_CntTypeCode
    CInfo_CntType
    CInfo_CntCode
    CInfo_CntName
End Enum

Public Enum RatioType
    R_Cotton
    R_Synthetic
End Enum

Public Function SpdValidRow(Spd As fpSpread, sRow As Long, ChkAll As Boolean, Optional ChkCols As Collection) As FnRtn
Dim I As Integer
On Error GoTo ErrPath

    If ChkAll = True Then
        Set ChkCols = New Collection
        For I = 1 To Spd.MaxCols
            ChkCols.ADD I
        Next I
    End If
    
    SpdValidRow.FnBool = False
    SpdValidRow.FnInt = 0
    Spd.Row = sRow
    For I = 1 To ChkCols.Count
        Spd.Col = CLng(ChkCols.Item(I))
        If Spd.celltype = CellTypeEdit Or Spd.celltype = CellTypeStaticText Or CellTypeComboBox Then
            If Spd.Text = "" Then Exit Function
        ElseIf Spd.celltype = CellTypeCurrency Or Spd.celltype = CellTypeNumber Then
            If val(Spd.Text) = 0 Then Exit Function
        End If
        SpdValidRow.FnInt = val(SpdValidRow.FnInt) + 1
    Next I
    
    SpdValidRow.FnBool = True
    
Exit Function
ErrPath:
    MsgBox Err.Description
End Function


Public Sub DLLMasterListing(qry As String, FldWidth As String, Decimals As String, RptHead As String, conn As Connection)
Dim PageLen As Integer
Dim Rs As Recordset
Dim RsTmp As Recordset
Dim FldCol As Collection
Dim DeciCol As Collection
Dim LineCharLen As Integer
Dim HeadStr As String
Dim DetlStr As String
Dim REP As ReportView
Dim FldStr As String
Dim FileName As String
Dim Lines As Integer
Dim pg As Long
On Error GoTo DLLListing_Error

Screen.MousePointer = 11
Call String_Into_Collection(FldWidth, FldCol)
Call String_Into_Collection(Decimals, DeciCol)

Set Rs = New Recordset
Rs.CursorLocation = adUseClient
Rs.Open qry, conn, adOpenStatic, adLockReadOnly
Set Rs.ActiveConnection = Nothing

LineCharLen = 0

'''CREATE RECORDSET'''
Set RsTmp = New Recordset
With RsTmp.Fields
    .Append "Field_Name", adVarChar, 100
    .Append "Field_Width", adDouble
    .Append "Decimals", adDouble
    RsTmp.Open
End With

For I = 1 To FldCol.Count
    RsTmp.AddNew
    RsTmp!Field_Name = Rs.Fields(I - 1).Name
    RsTmp!Field_Width = val(FldCol.Item(I))
    RsTmp!Decimals = val(DeciCol.Item(I))
    RsTmp.Update
Next I

PageLen = 80
a = FreeFile
FileName = "txtDllMasterListing"
Close
Open "D:\" & FileName & ".txt" For Output As #a

'*** Heading Printing Part
Print #a, String(LineCharLen, "-")
HeadStr = ""

For I = 1 To FldCol.Count

    FldStr = "[" & RsTmp.Fields("Field_Name") & "]"
    
    RsTmp.Filter = adFilterNone
    RsTmp.Filter = "Field_Name='" & Rs.Fields(I - 1).Name & "'"

    If Rs.Fields(I - 1).Type = adBigInt Or _
        Rs.Fields(I - 1).Type = adCurrency Or _
        Rs.Fields(I - 1).Type = adDouble Or _
        Rs.Fields(I - 1).Type = adInteger Or _
        Rs.Fields(I - 1).Type = adDecimal Or _
        Rs.Fields(I - 1).Type = adNumeric Then
                
        HeadStr = HeadStr & Padl(Rs.Fields(I - 1).Name, RsTmp.Fields("Field_Width"), " ")
    Else
        HeadStr = HeadStr & Padr(Rs.Fields(I - 1).Name, RsTmp.Fields("Field_Width"), " ")
    End If
Next I

LineCharLen = Len(HeadStr)
pg = 1
Call PrintRptHead(RptHead, LineCharLen, pg)
Print #a, String(LineCharLen, "-")
Print #a, HeadStr
Print #a, String(LineCharLen, "-")
'***

Lines = 5

'*** Detail Printing Part
DetlStr = ""
Rs.Filter = adFilterNone
If Not Rs.EOF Then
    While Not Rs.EOF
        DetlStr = ""
        For I = 1 To FldCol.Count
            FldStr = "[" & RsTmp.Fields("Field_Name") & "]"
            
            RsTmp.Filter = adFilterNone
            RsTmp.Filter = "Field_Name='" & Rs.Fields(I - 1).Name & "'"
        
            If Rs.Fields(I - 1).Type = adBigInt Or _
                Rs.Fields(I - 1).Type = adCurrency Or _
                Rs.Fields(I - 1).Type = adDouble Or _
                Rs.Fields(I - 1).Type = adInteger Or _
                Rs.Fields(I - 1).Type = adDecimal Or _
                Rs.Fields(I - 1).Type = adNumeric Then
                
                DetlStr = DetlStr & Padl(INF(Rs.Fields(I - 1), val(RsTmp.Fields("Decimals"))), RsTmp.Fields("Field_Width"), " ")
            Else
                DetlStr = DetlStr & Padr(Rs.Fields(I - 1), RsTmp.Fields("Field_Width"), " ")
            End If
        Next I
        Rs.MoveNext
        Print #a, DetlStr
        Lines = Lines + 1
        
        If Lines >= 60 Then
            pg = pg + 1
            Call PrintRptHead(RptHead, LineCharLen, pg)
            Lines = 2
        End If
    Wend
Else
    MsgBox "No Details found.", vbInformation, head
    Exit Sub
End If
Print #a, String(LineCharLen, "-")
'***

Close #a
Set REP = New Report.ReportView
Open "D:\" & FileName & ".bat" For Output As #a
Print #a, "CD\"
Print #a, "D:"
Print #a, "CD\"
REP.txtfile = "D:\" & FileName & ".Txt"
REP.Batfile = "D:\" & FileName & ".bat"
Close #a
Screen.MousePointer = 0
Exit Sub
DLLListing_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DLLListing of Module ModReport", vbInformation, head
End Sub

Private Sub PrintRptHead(RptCaption As String, Length As Integer, PgNo As Long)
On Error GoTo PrintHead_Error

  Print #a, Chr(18)
  Print #a, Chr(27) & "E" & CENTRE(divname, val(Length), " ") & Chr(27) & "F"
  Print #a,
  Print #a, "E" & Padr(RptCaption, val(Length - 20), " ") & Chr(27) & "F" & Padl(Format(pdate, "dd/mm/yy") & Space(2) & "Pg.: " & PgNo, 18, " ")
  Print #a,

Exit Sub
PrintHead_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure PrintHead of Form frmCountType", vbInformation, head
End Sub

Private Sub String_Into_Collection(ByVal Str As String, ByRef Col As Collection)
On Error GoTo StringIntoCollection_Error
    
    Set Col = New Collection
    
    While Len(Str) > 0
        If InStr(1, Str, ",") > 0 Then
            Col.ADD Trim(Mid(Str, 1, InStr(1, Str, ",") - 1))
        Else
            Col.ADD Trim(Str)
        End If
        Str = Mid(Str, Len(Col.Item(Col.Count)) + 2, Len(Str))
    Wend

Exit Sub
StringIntoCollection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StringIntoCollection of Module SpdGenMod", vbInformation, head
End Sub

Public Function Crptfootermod(rfooter As String, pgcol As Integer) As String
Dim j As Integer
Dim Y As Integer
Dim Foot As String
Dim PCOL As Integer
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
        Y = 0
        z = 0
        I = I - 1
        If I >= 2 Then
            Y = PCOL - (X - (I - 1))            'PCOL IS AN PAGEWIDTH OR PAGE TOTAL COLUMNS
            z = Round(Y / I)
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
  
  Crptfootermod = Foot
End Function





Public Sub EnaDisCtrls(frm As Object, EnaOrDis As Boolean)
Dim cn As Connection
Dim Rs As Recordset
Dim AddFlg, ModFlg, delflg As Boolean
On Error GoTo EnaDisCtrls_Error

    AddFlg = EnaOrDis
    ModFlg = EnaOrDis
    delflg = EnaOrDis

    Set cn = New Connection
    cn.Open connectstring
    cn.CursorLocation = adUseClient
    
    Set Rs = New Recordset
    Rs.Open "SELECT SNO,FORM_NAME, ISNULL(ADD_FLG, 'N') AS ADD_FLG, ISNULL(MOD_FLG, 'N') AS MOD_FLG, ISNULL(DEL_FLG, 'N') AS DEL_FLG " & _
        " From USERLEVEL" & _
        " WHERE DIVCODE = '" & Divcode & "' " & _
        " And Form_Name = '" & frm.Caption & "' " & _
        " And ULevel = " & ulevel & _
        " AND MODULE = " & ModuleNo, cn, adOpenStatic, adLockReadOnly
        
    If Not Rs.EOF Then
        If EnaOrDis = True Then
            If Rs!ADD_FLG = "N" Then AddFlg = False
            If Rs!MOD_FLG = "N" Then ModFlg = False
            If Rs!DEL_FLG = "N" Then delflg = False
        End If
    End If

    With frm
    
        .BUTTON(0).Enabled = AddFlg
        .BUTTON(1).Enabled = ModFlg
        .BUTTON(2).Enabled = delflg
        .BUTTON(3).Enabled = EnaOrDis
        .BUTTON(4).Enabled = EnaOrDis
        .BUTTON(5).Enabled = EnaOrDis
        .BUTTON(6).Enabled = EnaOrDis
        .BUTTON(7).Enabled = EnaOrDis
        .BUTTON(8).Enabled = EnaOrDis
        .BUTTON(11).Enabled = EnaOrDis
        
        If EnaOrDis = True Then
            .BUTTON(9).Enabled = False
            .BUTTON(10).Enabled = False
        Else
            .BUTTON(9).Enabled = True
            .BUTTON(10).Enabled = True
        End If
    End With
 
Exit Sub
EnaDisCtrls_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure EnaDisCtrls of Form frm_QcWrpng"
End Sub

Public Sub ClearCtrls(ByRef frm As Form)
Dim Ctrls As Object
On Error GoTo ClearCtrls_Error
    
    For I = 0 To frm.Controls.Count - 1
        If TypeOf frm.Controls(I) Is TextBox Then
            frm.Controls(I).Text = ""
            frm.Controls(I).Tag = ""
        ElseIf TypeOf frm.Controls(I) Is DTPicker Then
            frm.Controls(I).value = Now
            frm.Controls(I).Tag = ""
        End If
    Next I

Exit Sub
ClearCtrls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ClearCtrls of Module Spin_Plan_Mod", vbInformation, head
End Sub
Public Property Let StrVar(ByRef StrVariable As String)
    StrVar = StrVariable
End Property
Public Static Function SqlSafe(query As String, Optional ByRef RtnStrVar As Variant)
'-------------------------------------------------------------------'
'*** Function Created By N.Soundara Rajan On 23.10.2007 05.37 PM ***'
'-------------------------------------------------------------------'
Dim SqlSafeString As String
On Error GoTo SqlSafe_Error

If SqlSafeString = "" Then
    SqlSafeString = query
Else
    SqlSafeString = SqlSafeString & Chr(13) & query
End If

If IsMissing(RtnStrVar) = False Then
    RtnStrVar = SqlSafeString
    SqlSafeString = ""
End If

Exit Function
SqlSafe_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SqlSafe of Module Spin_Plan_Mod", vbInformation, head
End Function
Public Function GetUsableWaste(sDepCode As String, Blend_Code As String, sConn As ADODB.Connection) As Double
Dim RsWaste As Recordset
Dim UsableWaste As Double
Dim SqlQry As String
Dim cn As ADODB.Connection
On Error GoTo GetUsableWaste_Error

    Set cn = New ADODB.Connection
    Set cn = sConn

    UsableWaste = 0

    SqlSafe "Select IsNull(Max(W.Waste), 0) As Waste "
    SqlSafe "From PPC_USABLE_WASTE W"
    SqlSafe "Inner Join PPC_Blend_Mas B On B.Blend_MasID = W.Blend_MasID"
    SqlSafe "Where W.divcode = '" & Divcode & "' And W.UnitCode = '" & unitcode & "'"
    SqlSafe "And W.DepCode = '" & sDepCode & "' And B.Blend_Code = '" & Blend_Code & "'", SqlQry
    
    Set RsWaste = New ADODB.Recordset
    RsWaste.Open SqlQry, cn, adOpenStatic, adLockReadOnly
    
    UsableWaste = val(RsWaste!Waste)

GetUsableWaste = UsableWaste

Exit Function
GetUsableWaste_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GetUsableWaste of Form frmTrans", vbInformation, head
End Function
Public Function GetBlendCode(CountID As Integer, sConn As ADODB.Connection) As String
Dim RsBlend As Recordset
Dim BlendCode As String
Dim SqlQry As String
Dim cn As ADODB.Connection
On Error GoTo GetBlendCode_Error

BlendCode = ""

    Set cn = New ADODB.Connection
    Set cn = sConn

    SqlSafe "Select B.Blend_Code "
    SqlSafe "From PPC_Count C"
    SqlSafe "Inner Join PPC_Blend_Mas B On B.Blend_MasID = C.Blend_MasID "
    SqlSafe "Where C.DivCode = '" & Divcode & "' and C.UnitCode = '" & unitcode & "' And C.CountID = " & CountID, SqlQry
    
    Set RsBlend = New Recordset
    RsBlend.Open SqlQry, cn, adOpenStatic, adLockReadOnly
    
    If Not RsBlend.EOF Then
        BlendCode = RsBlend!Blend_Code
    End If

GetBlendCode = BlendCode

Exit Function
GetBlendCode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GetBlendCode of Module Spin_Plan_Mod", vbInformation, head
End Function
Public Function GetTargetUtilisation(sDepCode As String, sConn As ADODB.Connection) As Double
Dim TargetUtilisation As Double
Dim cn As ADODB.Connection
Dim SqlQry As String
Dim RsUti As Recordset
On Error GoTo GetTargetUtilisation_Error

TargetUtilisation = 0

    Set cn = New ADODB.Connection
    Set cn = sConn

    SqlSafe "Select IsNull(UTILISATION, 0) As UTILISATION "
    SqlSafe "From PPC_UTILISATION "
    SqlSafe "Where Divcode = '" & Divcode & "' And UnitCode = '" & unitcode & "'"
    SqlSafe "And DepCode = '" & sDepCode & "'", SqlQry
    
    
    Set RsUti = New Recordset
    RsUti.Open SqlQry, cn, adOpenStatic, adLockReadOnly
    
    If Not RsUti.EOF Then
        TargetUtilisation = val(RsUti!Utilisation)
    End If

GetTargetUtilisation = TargetUtilisation

Exit Function
GetTargetUtilisation_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GetTargetUtilisation of Module Spin_Plan_Mod", vbInformation, head
End Function
Public Function GetSalableWaste(sDepCode As String, Blend_Code As String, sConn As ADODB.Connection) As Double
Dim RsWaste As Recordset
Dim SalableWaste As Double
Dim SqlQry As String
Dim cn As ADODB.Connection
On Error GoTo GetUsableWaste_Error

    Set cn = New ADODB.Connection
    Set cn = sConn

    SalableWaste = 0

    SqlSafe "Select IsNull(Max(W.Waste), 0) As Waste "
    SqlSafe "From PPC_SALABLE_WASTE W"
    SqlSafe "Inner Join PPC_Blend_Mas B On B.Blend_MasID = W.Blend_MasID"
    SqlSafe "Where W.divcode = '" & Divcode & "' And W.UnitCode = '" & unitcode & "'"
    SqlSafe "And W.DepCode = '" & sDepCode & "' And B.Blend_Code = '" & Blend_Code & "'", SqlQry
    
    Set RsWaste = New ADODB.Recordset
    RsWaste.Open SqlQry, cn, adOpenStatic, adLockReadOnly
    
    SalableWaste = val(RsWaste!Waste)

GetSalableWaste = SalableWaste

Exit Function
GetUsableWaste_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GetUsableWaste of Form frmTrans", vbInformation, head
End Function

Public Function GetCountInfo(InfoType As CountInfo, CntID As Integer) As String
Dim CntInfo As Variant
Dim RsTmp As Recordset
Dim Connect As Connection
Dim TmpSqlStr As String
On Error GoTo GetCountInfo_Error

    Set Connect = New Connection
    Connect.Open connectstring
    Connect.CursorLocation = adUseClient

    CntInfo = ""
    
    SqlSafe "Select IsNull(C.Carding, '') As Carding, IsNull(C.Doubling, '') As Doubling, "
    SqlSafe "IsNull(C.YarnType, '') As YarnType, "
    SqlSafe "B.Blend_MasID, B.Blend_Code, B.Blend_Desc, B.Blend_Type,"
    SqlSafe "Ct.CntTypeCode, Ct.CntType, C.CntCode, Sc.CntName "
    SqlSafe "From PPC_Count C "
    SqlSafe "Inner Join PPC_Blend_Mas B On B.Blend_MasID = C.Blend_MasID "
    SqlSafe "Inner Join PPC_CntType Ct On Ct.CntTypeID = C.CntTypeID "
    SqlSafe "Inner Join SCount Sc On Sc.CntCode = C.CntCode And Sc.DivCode = C.DivCode And Sc.UnitCode = C.UnitCode "
    SqlSafe "Where C.CountID = " & val(CntID), TmpSqlStr
    
    Set RsTmp = New ADODB.Recordset
    RsTmp.Open TmpSqlStr, Connect, adOpenStatic, adLockReadOnly

    If Not RsTmp.EOF Then
        CntInfo = RsTmp.Fields(InfoType)
    End If
    
    GetCountInfo = CntInfo
    
Exit Function
GetCountInfo_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GetCountInfo of Module Spin_Plan_Mod", vbInformation, head
End Function
Public Function GetRatio(sRatioType As RatioType, BlendMasID As Integer) As Double
Dim RsTmp As Recordset
Dim SqlMat As String
Dim Connect As Connection
On Error GoTo GetCottonRatio_Error

    SqlSafe "Select IsNull(Sum(IsNull(D.Ratio, 0)), 0) As Ratio "
    SqlSafe "From PPC_Blend_Det D"
    SqlSafe "Inner Join PPC_Material M On M.MaterialID = D.MaterialID"
    SqlSafe "Where Blend_masID = " & val(BlendMasID) & ""
    
    If sRatioType = R_Cotton Then
        SqlSafe "And M.Mat_Type = 'C'", SqlMat
    ElseIf sRatioType = R_Synthetic Then
        SqlSafe "And M.Mat_Type = 'S'", SqlMat
    End If
    
    Set Connect = New Connection
    Connect.Open connectstring
    Connect.CursorLocation = adUseClient

    Set RsTmp = New Recordset
    RsTmp.Open SqlMat, Connect, adOpenStatic, adLockReadOnly
    
    If Not RsTmp.EOF Then
        GetRatio = RsTmp!Ratio
    Else
        GetRatio = 0
    End If

Exit Function
GetCottonRatio_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GetCottonRatio of Module Spin_Plan_Mod", vbInformation, head
End Function

Public Function ModuleInsert(Optional Connect As Connection = Nothing)
Dim RsTmp As Recordset
Dim RsDiv As Recordset
Dim RsMod As Recordset
Dim cn As Connection
Dim SqlStr As String
Dim MdNo As Integer
On Error GoTo MenuInsert_Error

    Set cn = New Connection
    If Not Connect Is Nothing Then
        Set cn = Connect
    Else
        cn.Open connectstring
        cn.CursorLocation = adUseClient
    End If
    
    SqlSafe "Select * "
    SqlSafe "From PP_Module "
    SqlSafe "Where ModuleShortName  = 'PPC'", SqlStr
    
    Set RsTmp = New Recordset
    RsTmp.Open SqlStr, cn, adOpenStatic, adLockReadOnly
    
    If RsTmp.EOF Then
    
        Set RsMod = New Recordset
        RsMod.Open "select isNull(max(ModuleNo), 0) As ModNo From PP_Module", cn, adOpenStatic, adLockReadOnly
        
        If Not RsMod.EOF Then
            MdNo = val(RsMod!ModNo) + 1
        End If
    
        Set RsDiv = New Recordset
        RsDiv.Open "Select DivCode From PP_Divmas", cn, adOpenStatic, adLockReadOnly
        
        If Not RsDiv.EOF Then
        
            While Not RsDiv.EOF
        
                SqlSafe "Insert Into PP_Module (DivCode, ModuleNo, ModuleName, ModuleShortName) "
                SqlSafe "Values ('" & RsDiv!Divcode & "', " & MdNo & ", 'PRODUCTION PLANNING & CONTROL', 'PPC' )", SqlStr
                
                cn.Execute SqlStr
                
                RsDiv.MoveNext
                
            Wend
        
        End If
        
    Else
        
        RsTmp.Filter = "DivCode = '" & Divcode & "'"
        
        If RsTmp.EOF Then
        
            RsTmp.Filter = adFilterNone
        
            SqlSafe "Insert Into PP_Module (DivCode, ModuleNo, ModuleName, ModuleShortName) "
            SqlSafe "Values ('" & Divcode & "', " & RsTmp!ModuleNo & ", 'PRODUCTION PLANNING & CONTROL', 'PPC' )", SqlStr
            
            cn.Execute SqlStr
        
        End If
        
    End If

Exit Function
MenuInsert_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MenuInsert of Module Spin_Plan_Mod", vbInformation, head
End Function
Public Function GetFrmName(MnuName As String, conn As Connection) As String
Dim cn As Connection
Dim Rs As Recordset
Dim FrmName As String

On Error GoTo GetFrmName_Error

If MnuName <> "" Then

    Set cn = New Connection
    Set cn = conn
    
    Set Rs = New Recordset
    Rs.Open "Select IsNull(Form_Name, '') As Form_Name From ModuleMenu Where Menu_Name = '" & MnuName & "'", cn, adOpenStatic, adLockReadOnly
    
    If Not Rs.EOF Then
        FrmName = Rs!Form_Name
    Else
        FrmName = ""
    End If
    
End If
    
GetFrmName = FrmName
Exit Function
GetFrmName_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GetFrmName of Module Spin_Plan_Mod", vbInformation, head
End Function


Public Function KSLTDSRound(Rval As Double, Rdeci As Integer) As Double
Dim Cnn As Connection
On Error GoTo KSLRound_Error
Dim RRs As Recordset
Set Cnn = New Connection
Cnn.Open connectstring

Set RRs = New Recordset
'RRs.Open "select Round(" & Rval & "," & Rdeci & ")", cnn
RRs.Open "select CEILING(CAST(" & Rval & " AS DECIMAL(24, 2))) ", Cnn
KSLTDSRound = RRs(0)

Exit Function
KSLRound_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure KSLRound of Module DailyStockAccont", vbInformation, head
    Screen.MousePointer = 0

End Function
Public Function KSLRound(Rval As Double, Rdeci As Integer) As Double
Dim Cnn As Connection
On Error GoTo KSLRound_Error
Dim RRs As Recordset
Set Cnn = New Connection
Cnn.Open connectstring
Set RRs = New Recordset
RRs.Open "select Round(" & Rval & "," & Rdeci & ")", Cnn
KSLRound = RRs(0)

Exit Function
KSLRound_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure KSLRound of Module DailyStockAccont", vbInformation, head
    Screen.MousePointer = 0

End Function

Public Function AssignGlobalConnection()
    Dim cnt1 As Integer
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
    gl_db = GSTRDBNAME
End Function

Public Function View_Exists(Table_Name As String) As Boolean
    On Error GoTo Err1
    Table_Name = UCase(Table_Name)
    Dim TDb As New Connection
    Dim TRs As New Recordset
    TDb.CursorLocation = adUseClient
    TDb.Open connectstring
    TRs.Open "SELECT * FROM dbo.sysobjects WHERE UPPER(name) = '" & Table_Name & "' and  xtype='V'", TDb, adOpenStatic, adLockReadOnly
    If TRs.RecordCount > 0 Then
        TRs.Close
        TDb.Close
        View_Exists = True
        Exit Function
    End If
    TRs.Close
    TDb.Close
    View_Exists = False
    Exit Function
    
Err1:
    MsgBox "Unable To Test Existence Of Table", vbInformation, head
    'Exit Sub
End Function


Public Function ToValidFinYearW() As Boolean
    Dim rstYear As Recordset
    Dim RsrPrDate As Recordset
    Dim Con As Connection
    Set Con = New Connection
    If Con.State = 1 Then Con.Close
    Con.Open connectstring
    
    Set rstYear = New Recordset
  
        rstYear.Open "SELECT max(cast(YEAR_CODE as int)) FROM IG_TRANYEAR where DIVCODE='" & Divcode & "'", Con, adOpenStatic, adLockReadOnly
        
'    rstYear.Open "Select max(TYear) from in_trnhead", con, adOpenStatic, adLockReadOnly
    If rstYear.EOF = False Then
        If val(rstYear(0) & "") > val(Right(Year(yfdate), 2)) Then
            MsgBox "Transaction is Closed in this Finanical Year", vbInformation, head
            ToValidFinYearW = False
            Exit Function
        Else
            Set RsrPrDate = New Recordset
            RsrPrDate.Open " Select * from IG_TRANYEAR where '" & Format(pdate, "yyyy/mm/dd") & "' >= START_DATE " & _
                           " and '" & Format(pdate, "yyyy/mm/dd") & "' <= END_DATE  AND Divcode='" & Divcode & "'", Con, adOpenStatic, adLockReadOnly
            If RsrPrDate.EOF = False Then
                ToValidFinYearW = True
                Exit Function
            Else
                MsgBox "Transaction Period is not in open for this Processing Date...!", vbInformation, head
                ToValidFinYearW = False
                Exit Function
            End If
        End If
    End If
    ToValidFinYearW = True
    rstYear.Close
    RsrPrDate.Close
    Con.Close
End Function

Public Sub VaildAdd(Opt As String, Optional Table As String, Optional Field As String)
    Dim DB As New Connection
    DB.Open connectstring
    Addallow = True
    
    Set Rs = New Recordset
    Rs.Open " SELECT start_date FROM IG_TRANYEAR a WHERE year_code=(SELECT max(year_code) FROM IG_TRANYEAR b WHERE a.DIVCODE=b.divcode) AND DIVCODE='" & Divcode & "'", DB
    If Not Rs.EOF Then
        If Format(Rs("start_date"), "yyyy-mm-dd") > Format(pdate, "yyyy-mm-dd") Then
            If Opt = "add" Then
                MsgBox "You are Adding this transaction  before the date " & Rs("start_date") & " is not allowed", vbInformation, head
            ElseIf Opt = "mod" Then
                MsgBox "You are Modifying this transaction  before the date " & Rs("start_date") & " is not allowed", vbInformation, head
            ElseIf Opt = "del" Then
                MsgBox "You are Deleting this transaction  before the date " & Rs("start_date") & " is not allowed", vbInformation, head
            End If
            Addallow = False
        ElseIf Opt = "add" Then
            Set Rs = New Recordset
            Rs.Open "select max(" & Field & ") as date from " & Table & " where divcode='" & Divcode & "'", DB
            If Not Rs.EOF Then
                If Format(Rs("Date"), "yyyy-mm-dd") > Format(pdate, "yyyy-mm-dd") Then
                    MsgBox "You are adding this transaction  before the date " & Rs("date") & " is not allowed", vbInformation, head
                    Addallow = False
                End If
            End If
        End If
        Exit Sub
    End If
End Sub
Public Sub ToUpCase(Ofld As Object, KeyAscii As Integer, Optional maxlen As Integer)
On Error Resume Next
    If maxlen = 0 Then maxlen = 50
    'If Len(Trim(Ofld)) < maxlen Then
    If (KeyAscii >= 97 And KeyAscii <= 122) Then
        KeyAscii = KeyAscii - 32
    End If
    If (KeyAscii = 9 Or KeyAscii = 13) Then
        KeyAscii = 0
    End If
End Sub
'
'Public Sub ToNumber(Obj As Object, maxlen As Integer, KeyAscii As Integer)
'   On Error Resume Next
'
' On Error Resume Next
'    If Not (((KeyAscii >= 48 And KeyAscii <= 57) Or _
'             KeyAscii = 8) Or KeyAscii = 9) Then
'        KeyAscii = 0
'    ElseIf Len(Obj) = maxlen And KeyAscii <> 8 And KeyAscii <> 9 Then
'        KeyAscii = 0
'    End If
'
'
'End Sub
Public Function INFG(Inval As Variant, dlen As Integer)
    
    '--- INF Function -Used for Only print Not for calc so Modified by G
    '--- on behalf of M/s. Kalpatharu Software Limited
    '--- Tested and Corrected by G (08/12/2007)
    
   On Error GoTo INFG_Error

    If IsNull(Inval) Then
        Inval = 0
    End If
    
    Dim cDecimals As String
    Dim cInteger As String
    Dim cMoney As String
    Dim nIntLen As Integer
    Dim ndecimals As Variant
    
    If val(Inval) <> 0 Then
        
      If val(Inval) < 0 Then
        'ndecimals = Round(-Inval - Int(-Inval), dLen) 'sasi 3-2-16
         ndecimals = Round(-val(Inval) - Int(-val(Inval)), dlen)
      Else
       ' ndecimals = Round(Val(Inval - Int(Inval)), dLen) 'sasi 3-2-16
        ndecimals = Round(val(Inval) - Round(val(Inval)), dlen)
      End If
      
       'If Int(Inval) = Inval Then 'sasi 3-2-16
        If Int(val(Inval)) = val(Inval) Then
            cDecimals = "." + String(dlen, "0")
            cInteger = Format(val(Inval), "##")
        Else
            If val(Inval) < 0 Then
'                cDecimals = Format(-Inval - Int(-Inval), "##." + String(dLen, "0")) 'sasi 3-2-16
'                cInteger = "-" + Format(Int(-Inval), "##")
                 cDecimals = Format(-val(Inval) - Int(-val(Inval)), "##." + String(dlen, "0"))
                 cInteger = "-" + Format(Int(-val(Inval)), "##")
            Else
               ' cDecimals = Format(Inval - Int(Inval), "##." + String(dLen, "0")) 'sasi 3-2-16
                cDecimals = Format(val(Inval) - Int(val(Inval)), "##." + String(dlen, "0"))
                'cDecimals = Format(Inval - Int(Inval), ".##" + String(dLen, "0"))
                ' cInteger = Format(Int(Inval), "##")'sasi 3-2-16
                cInteger = Format(Int(val(Inval)), "##")
            End If
        End If
        If val(cDecimals) >= 1 Then
            cInteger = val(cInteger) + val(cDecimals)
            cDecimals = "." + String(dlen, "0")
        End If
        If val(cInteger) < 0 Then
            nIntLen = Len(CStr(-val(cInteger)))
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
                INFG = cInteger + cDecimals
            Else
               ' INF = Format(cInteger, "#0.00")
                INFG = cInteger
            End If
        Else
            INFG = "*** Overflow ***"
        End If
    Else
            INFG = "0"
    End If

   On Error GoTo 0
   Exit Function

INFG_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure INFG of Module Spinmod", vbInformation, head
End Function


Public Sub ToNumNew(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)
On Error GoTo ToNumNew_Error

On Error Resume Next
    If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Or KeyAscii = 13 Then
    Else
        KeyAscii = 0
    End If
    
    If KeyAscii = 65 Then
      KeyAscii = 0
    End If
    
    If Not (InStr(obj.Text, ".") = 0) And KeyAscii = 46 Then
    KeyAscii = 0
    End If
    If Not (InStr(obj, ".") = 0) And Len(obj) - InStr(obj, ".") = ary And Not (KeyAscii = 8) And Not (KeyAscii = 9) Then
         KeyAscii = 0
         Beep
    End If
    If Len(obj) = maxlen And KeyAscii <> 46 And (InStr(obj, ".") = 0) And Not (KeyAscii = 13) And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
   End If


Exit Sub
ToNumNew_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ToNumNew of Module Spinmod", vbInformation, head
End Sub
