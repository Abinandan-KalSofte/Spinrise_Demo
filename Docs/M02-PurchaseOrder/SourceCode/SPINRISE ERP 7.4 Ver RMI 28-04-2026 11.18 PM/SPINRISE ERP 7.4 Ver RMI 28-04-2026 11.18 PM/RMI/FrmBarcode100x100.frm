VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form frmBarcode 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Barcode Generator"
   ClientHeight    =   5835
   ClientLeft      =   150
   ClientTop       =   240
   ClientWidth     =   9300
   Icon            =   "FrmBarcode100x100.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5835
   ScaleWidth      =   9300
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      Caption         =   "&Print"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7320
      TabIndex        =   44
      Top             =   4080
      Width           =   1980
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Default Printer"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6480
      TabIndex        =   43
      Top             =   7080
      Width           =   1980
   End
   Begin VB.ComboBox cboXFactor 
      Height          =   315
      ItemData        =   "FrmBarcode100x100.frx":058A
      Left            =   7920
      List            =   "FrmBarcode100x100.frx":058C
      TabIndex        =   40
      Top             =   1800
      Width           =   855
   End
   Begin VB.CheckBox chkCD 
      Caption         =   "Use Check Digit"
      Enabled         =   0   'False
      Height          =   315
      Left            =   6360
      TabIndex        =   38
      ToolTipText     =   "Use a Check Digit if optional for code."
      Top             =   2880
      Width           =   1575
   End
   Begin VB.CommandButton cmdColor 
      Caption         =   "Barcode Color ...."
      Height          =   315
      Left            =   1440
      TabIndex        =   35
      Top             =   5880
      Width           =   1575
   End
   Begin VB.Frame Frame4 
      Caption         =   "Human Readable"
      Height          =   1815
      Left            =   240
      TabIndex        =   32
      Top             =   5880
      Width           =   2175
      Begin VB.CheckBox chkDCD 
         Caption         =   "Display Check Digit"
         Enabled         =   0   'False
         Height          =   315
         Left            =   120
         TabIndex        =   37
         Top             =   960
         Width           =   1695
      End
      Begin VB.CheckBox chkDSS 
         Caption         =   "Display Stop/Start"
         Height          =   315
         Left            =   120
         TabIndex        =   36
         Top             =   1320
         Width           =   1935
      End
      Begin VB.OptionButton optHR 
         Caption         =   "Barcode and Text"
         Height          =   315
         Index           =   1
         Left            =   120
         TabIndex        =   34
         Top             =   600
         Value           =   -1  'True
         Width           =   1575
      End
      Begin VB.OptionButton optHR 
         Caption         =   "Barcode Only"
         Height          =   315
         Index           =   0
         Left            =   120
         TabIndex        =   33
         Top             =   240
         Width           =   1575
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Rotation"
      Height          =   1815
      Left            =   4320
      TabIndex        =   27
      Top             =   5880
      Width           =   2055
      Begin VB.OptionButton optRotation 
         Caption         =   "Upside Down"
         Height          =   315
         Index           =   3
         Left            =   120
         TabIndex        =   31
         Top             =   1320
         Width           =   1695
      End
      Begin VB.OptionButton optRotation 
         Caption         =   "Sideways Down"
         Height          =   315
         Index           =   2
         Left            =   120
         TabIndex        =   30
         Top             =   960
         Width           =   1575
      End
      Begin VB.OptionButton optRotation 
         Caption         =   "Sideways UP"
         Height          =   315
         Index           =   1
         Left            =   120
         TabIndex        =   29
         Top             =   600
         Width           =   1455
      End
      Begin VB.OptionButton optRotation 
         Caption         =   "Normal"
         Height          =   315
         Index           =   0
         Left            =   120
         TabIndex        =   28
         Top             =   240
         Value           =   -1  'True
         Width           =   1215
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   8280
      Top             =   3000
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton cmdFont 
      Caption         =   "Font ...."
      Height          =   315
      Left            =   240
      TabIndex        =   26
      Top             =   5880
      Width           =   1095
   End
   Begin VB.TextBox txtGap 
      Height          =   315
      Left            =   7920
      TabIndex        =   25
      Text            =   "0"
      Top             =   1440
      Width           =   615
   End
   Begin VB.Frame Frame2 
      Caption         =   "Text Alignment"
      Height          =   1815
      Left            =   2520
      TabIndex        =   19
      Top             =   5880
      Width           =   1695
      Begin VB.OptionButton optTxtAlign 
         Caption         =   "Full Width"
         Height          =   315
         Index           =   3
         Left            =   120
         TabIndex        =   23
         Top             =   1320
         Width           =   1215
      End
      Begin VB.OptionButton optTxtAlign 
         Caption         =   "Right"
         Height          =   315
         Index           =   2
         Left            =   120
         TabIndex        =   22
         Top             =   960
         Width           =   1215
      End
      Begin VB.OptionButton optTxtAlign 
         Caption         =   "Left"
         Height          =   315
         Index           =   1
         Left            =   120
         TabIndex        =   21
         Top             =   600
         Width           =   1215
      End
      Begin VB.OptionButton optTxtAlign 
         Caption         =   "Centred"
         Height          =   315
         Index           =   0
         Left            =   120
         TabIndex        =   20
         Top             =   240
         Value           =   -1  'True
         Width           =   1215
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Text Position"
      Height          =   975
      Left            =   6360
      TabIndex        =   16
      Top             =   5880
      Width           =   1935
      Begin VB.OptionButton optTxtPos 
         Caption         =   "Under Barcode"
         Height          =   315
         Index           =   0
         Left            =   120
         TabIndex        =   18
         Top             =   240
         Value           =   -1  'True
         Width           =   1575
      End
      Begin VB.OptionButton optTxtPos 
         Caption         =   "Above Barcode"
         Height          =   315
         Index           =   1
         Left            =   120
         TabIndex        =   17
         Top             =   600
         Width           =   1575
      End
   End
   Begin VB.ComboBox cboBarRatio 
      Height          =   315
      Left            =   7920
      TabIndex        =   6
      Top             =   2520
      Width           =   855
   End
   Begin VB.ComboBox cboMultiplier 
      Height          =   315
      ItemData        =   "FrmBarcode100x100.frx":058E
      Left            =   7920
      List            =   "FrmBarcode100x100.frx":0590
      TabIndex        =   5
      Top             =   2160
      Width           =   855
   End
   Begin VB.CommandButton cmdPrint 
      Caption         =   "&Print"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3480
      TabIndex        =   8
      Top             =   0
      Visible         =   0   'False
      Width           =   1980
   End
   Begin VB.CommandButton cmdDraw 
      Caption         =   "&Draw"
      Height          =   375
      Left            =   6240
      TabIndex        =   7
      Top             =   4080
      Width           =   900
   End
   Begin VB.TextBox txtHeight 
      Height          =   315
      Left            =   7920
      TabIndex        =   4
      Text            =   "8"
      Top             =   1080
      Width           =   615
   End
   Begin VB.TextBox txtY 
      Height          =   315
      Left            =   7920
      TabIndex        =   3
      Text            =   "100"
      Top             =   720
      Width           =   615
   End
   Begin VB.TextBox txtX 
      Height          =   315
      Left            =   7920
      TabIndex        =   2
      Text            =   "30"
      Top             =   360
      Width           =   615
   End
   Begin VB.TextBox txtBarcode 
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   6240
      MaxLength       =   28
      TabIndex        =   1
      Top             =   3600
      Width           =   3015
   End
   Begin VB.PictureBox picSave 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   375
      Left            =   6480
      ScaleHeight     =   375
      ScaleWidth      =   375
      TabIndex        =   39
      Top             =   6360
      Visible         =   0   'False
      Width           =   375
   End
   Begin VB.PictureBox picWorkspace 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00FFFFFF&
      Height          =   5655
      Left            =   240
      ScaleHeight     =   5595
      ScaleWidth      =   5835
      TabIndex        =   0
      Top             =   120
      Width           =   5895
   End
   Begin VB.Label lblImage 
      AutoSize        =   -1  'True
      Caption         =   "Bitmap Image"
      ForeColor       =   &H8000000D&
      Height          =   195
      Left            =   7080
      TabIndex        =   42
      Top             =   6480
      Visible         =   0   'False
      Width           =   960
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Bar X Width"
      Height          =   195
      Left            =   6360
      TabIndex        =   41
      Top             =   1800
      Width           =   855
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Bar/Text Gap [mm]"
      Height          =   195
      Left            =   6360
      TabIndex        =   24
      Top             =   1440
      Width           =   1350
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Bar Ratio:"
      Height          =   195
      Left            =   6360
      TabIndex        =   15
      Top             =   2520
      Width           =   705
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Multiplier"
      Height          =   195
      Left            =   6360
      TabIndex        =   14
      Top             =   2160
      Width           =   615
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Height: [mm]"
      Height          =   195
      Left            =   6360
      TabIndex        =   13
      Top             =   1080
      Width           =   885
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Y: [mm]"
      Height          =   195
      Left            =   6360
      TabIndex        =   12
      Top             =   720
      Width           =   525
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "X: [mm]"
      Height          =   195
      Left            =   6360
      TabIndex        =   11
      Top             =   360
      Width           =   525
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Bale No"
      Height          =   255
      Left            =   240
      TabIndex        =   10
      Top             =   4320
      Width           =   1215
   End
   Begin VB.Label lblHeading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   195
      Left            =   240
      TabIndex        =   9
      Top             =   120
      Visible         =   0   'False
      Width           =   75
   End
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Visible         =   0   'False
      Begin VB.Menu mnuFilePrint 
         Caption         =   "Print"
      End
      Begin VB.Menu mnuFileSep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileSaveBMP 
         Caption         =   "Save as Bitmap"
      End
      Begin VB.Menu mnuFileSep2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileExit 
         Caption         =   "Exit"
      End
   End
   Begin VB.Menu mnuBarCode 
      Caption         =   "Barcode"
      Visible         =   0   'False
      Begin VB.Menu mnucode128Auto 
         Caption         =   "Code 128 Auto"
      End
      Begin VB.Menu mnucode128A 
         Caption         =   "Code 128A"
      End
      Begin VB.Menu mnuCode128b 
         Caption         =   "Code 128B"
      End
      Begin VB.Menu mnuCode128c 
         Caption         =   "Code 128C"
      End
      Begin VB.Menu mnuCodeSep2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuCode39 
         Caption         =   "Code 39"
      End
      Begin VB.Menu mnuCode39Extd 
         Caption         =   "Code 39 Full ASCII"
      End
      Begin VB.Menu mnuCodeSep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuCode2of5 
         Caption         =   "Code 2of5"
      End
      Begin VB.Menu mnuCodeI2of5 
         Caption         =   "Code I2of5"
      End
      Begin VB.Menu mnuCodeSep3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuCode11 
         Caption         =   "Code 11"
      End
      Begin VB.Menu mnuCode93 
         Caption         =   "Code 93"
      End
      Begin VB.Menu mnuCodeMSI 
         Caption         =   "MSI (Plessy)"
      End
      Begin VB.Menu mnuCodeCodabar 
         Caption         =   "Codabar"
      End
   End
End
Attribute VB_Name = "frmBarcode"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Option Explicit
'Private Declare Function Rectangle Lib "gdi32" (ByVal hdc As Long, ByVal X1 As Long, ByVal Y1 As Long, ByVal X2 As Long, ByVal Y2 As Long) As Long
'Dim bc As clsLinearBarCodes
'Dim Ratio As Single
'Dim fname As String
'Dim fsize As Single
'Dim fbold As Boolean
'Dim fitalic As Boolean
'Dim rsLedger As ADODB.Recordset
'Dim acctNo As Integer
'Dim Rs As Recordset
'Dim adoSecondaryRS As Recordset
'Dim db As Connection
'Public barcodeProduct As String
'Public barcodeDocno As String
'Public barcodeDocdt, barcodePackno As String
'
'
'Private Sub cboBarRatio_Click()
'    Ratio = CSng(Left(Me.cboBarRatio.Text, 1) / Right(Me.cboBarRatio, 1))
'    bc.BarRatio = Ratio
'End Sub
'
'Private Sub cmdFont_Click()
'    CommonDialog1.FontName = Me.txtBarcode.FontName
'    ' Set Cancel to True
'    CommonDialog1.CancelError = True
'    On Error GoTo ErrHandler
'    ' Set the Flags property
'    CommonDialog1.Flags = cdlCFEffects Or cdlCFBoth
'    ' Display the Font dialog box
'    CommonDialog1.ShowFont
'    fname = CommonDialog1.FontName
'    fsize = CommonDialog1.FontSize
'    fbold = CommonDialog1.FontBold
'    fitalic = CommonDialog1.FontItalic
'    Me.txtBarcode.Font.Name = CommonDialog1.FontName
'    Me.txtBarcode.Font.Bold = CommonDialog1.FontBold
'    Me.txtBarcode.Font.Italic = CommonDialog1.FontItalic
'    cmdDraw_Click
'Exit Sub
'ErrHandler:
'  ' User pressed the Cancel button
'  Exit Sub
'
'End Sub
'
'Private Sub cmdColor_Click()
'On Error GoTo ErrHandler
'With CommonDialog1
'    'Set Cancel to True
'    .CancelError = True
'    'Set the Flags property
'    .Flags = cdlCCRGBInit 'Or cdlCCFullOpen
'    'Display the Color Dialog box
'    .ShowColor
'    bc.BarColor = .Color
'End With
'cmdDraw_Click
'ErrHandler:
'' User pressed the Cancel button
'End Sub
'
'Private Sub cmdDraw_Click()
'    Dim MilsToPixels As Single
'    Dim th As Long
'    Dim tw As Long
'    Dim pr As Single
'    Dim br As Single
'
'    On Error GoTo Err_Handler
'
'    MilsToPixels = 1440 / Screen.TwipsPerPixelX
'    pr = CSng(Me.cboXFactor.Text) * MilsToPixels
'    picWorkspace.Cls
'    With bc
'        .BarcodeOutput = Me.picWorkspace
'        .BarCodeX = CLng(Me.txtX.Text) * (56.7 / Screen.TwipsPerPixelX)
'        .BarCodeY = CLng(Me.txtY.Text) * (56.7 / Screen.TwipsPerPixelY)
'        .BarXFactor = pr
'        .BarRatio = Ratio
'        .BarMultiplier = CInt(Me.cboMultiplier.Text)
'        .BarcodeHeight = CLng(Me.txtHeight.Text) * (56.7 / Screen.TwipsPerPixelY)
'
'        .BarTextGap = CInt(Me.txtGap.Text) * (56.7 / Screen.TwipsPerPixelY)
'        .BarTextFont fname, fsize, fbold, fitalic
'        .BarCodeData = txtBarcode.Text
'        .DrawBarCode
'        th = .TotalBarHeight
'        tw = .TotalBarWidth
'    Call Rectangle(Me.picWorkspace.hdc, .BarCodeX - 2, .BarCodeY - 2, .BarCodeX + tw + 2, .BarCodeY + th + 2)
'    End With
'    Me.picWorkspace.Refresh
'    Exit Sub
'
'Err_Handler:
'MsgBox "Error Number: " & CStr(Err.Number) & vbCrLf _
'                        & "Description: " & Err.Description & vbCrLf _
'                        & "Error Source: " & Err.Source, vbOKOnly + vbCritical, "Error"
'End Sub
'
'Private Sub cmdPrint_Click()
'    Dim MilsToPixels As Single
'    Dim pr As Single
'    Dim br As Single
'    Const intLINE_START_POS As Integer = 6
'    Const intLINES_PER_PAGE As Integer = 60
'
'    On Error GoTo Err_Handler
'     Printer.Print ""
'
'    CommonDialog1.action = 5
'    CommonDialog1.PrinterDefault = True
'    CommonDialog1.CancelError = True
'    CommonDialog1.Orientation = cdlPortrait
'    CommonDialog1.ShowPrinter
'    Printer.FontName = "Tahoma"
' Printer.FontSize = 13
' Printer.FontBold = True
'
' Dim divname, Countname, lotno, GrossWt, netwt, packno As String
'
' Set Rs = New Recordset
' Rs.Open "select  DIV_PRINTNAME  From pp_divmas where divcode='" & DivCode & "'", db
' If Not Rs.EOF Then
'    divname = Rs(0)
' End If
'Set Rs = New Recordset
' Rs.Open "select  isnull(SHORT_CODE ,'') SHORT_CODE From ig_product where divcode='" & DivCode & "'", db
' If Not Rs.EOF Then
'    Countname = Rs(0)
' End If
'
'     Set Rs = New Recordset
'     Rs.Open "select   isnull(PACK_NO ,'0') PACK_NO,LOT_CODE,PACK_WT,PACK_WT+TARE gross  From ig_packnos where  PRODUCT_CODE ='" & barcodeProduct & "' and  divcode='" & DivCode & "' and docno='" & barcodeDocno & "' and prod_date='" & Format(barcodeDocdt, "yyyy-mm-dd") & "' and PACK_NO ='" & barcodePackno & "'", db
'     If Not Rs.EOF Then
'        lotno = Rs("LOT_CODE")
'        GrossWt = Rs("gross")
'        netwt = Rs("PACK_WT")
'        packno = Rs("PACK_NO")
'
'     End If
'     Printer.FontName = "Tahoma"
'     Printer.FontSize = 14
'     Printer.Print ""
'     Printer.Print Tab(intLINE_START_POS + 2); "" & divname
''    Printer.Print Tab(5 + intLINE_START_POS); "WEAVING DIVISION"
'   ' Printer.FontBold = False
'
'    Printer.Print ""
'    Printer.Print ""
'    Printer.Print Tab(intLINE_START_POS); "Count . "; Tab(15 + intLINE_START_POS); ":" + Trim(Countname)
'
'    Printer.Print Tab(intLINE_START_POS); "LotNo. "; Tab(15 + intLINE_START_POS); ":" + Trim(lotno)
'    Printer.Print Tab(intLINE_START_POS); "Bag No."; Tab(15 + intLINE_START_POS); ":" + Trim(packno)
'    Printer.Print Tab(intLINE_START_POS); "Gross WT. "; Tab(15 + intLINE_START_POS); ":" + Trim(GrossWt)
'    Printer.Print Tab(intLINE_START_POS); "Net WT. "; Tab(15 + intLINE_START_POS); ":" + Trim(netwt)
'   ' Printer.Print Tab(5 + intLINE_START_POS); "BALE NO : " & vbCrLf + Trim(txtBarcode.Text)
'    MilsToPixels = 1500 / Printer.TwipsPerPixelX
'    pr = CSng(Me.cboXFactor.Text) * MilsToPixels
''  Printer.Print "123" & vbCrLf
''     Printer.Print "124" & vbCrLf
''      Printer.Print "125" & vbCrLf
''       Printer.Print "126" & vbCrLf
' Printer.Print ""
'
'
'    With bc
'
'       .BarcodeOutput = Printer
'        .BarCodeX = CLng(Me.txtX.Text) * (56.7 / Printer.TwipsPerPixelX)
'        .BarCodeY = CLng(Me.txtY.Text) * (56.7 / Printer.TwipsPerPixelY)
'        .BarXFactor = Int(pr)
'        .BarRatio = Ratio
'        .BarMultiplier = CInt(Me.cboMultiplier.Text)
'        ' Set the height needed
'        .BarcodeHeight = CLng(Me.txtHeight.Text) * 56.7 / Printer.TwipsPerPixelY
'        .BarTextGap = CInt(Me.txtGap.Text) * (56.7 / Printer.TwipsPerPixelY)
'        .BarTextFont fname, fsize, fbold, fitalic
'        .BarCodeData = txtBarcode.Text
'        'Printer.Print ""
'        .DrawBarCode
'
'    End With
'     Printer.Print ""
'
''           Printer.Print "127" & vbCrLf
''
''          Printer.Print "128" & vbCrLf
''            Printer.Print "129" & vbCrLf
''              Printer.Print "1210" & vbCrLf
'
''    Printer.Print "BALE NO : " & vbCrLf + Trim(txtBarcode.Text)
'    Printer.EndDoc
'    Exit Sub
'
'Err_Handler:
'MsgBox "Error Number: " & CStr(Err.Number) & vbCrLf _
'                        & "Description: " & Err.Description & vbCrLf _
'                        & "Error Source: " & Err.Source, vbOKOnly + vbCritical, "Error"
'End Sub
'
'Private Sub Command1_Click()
'On Error Resume Next
' Dim MilsToPixels As Single
'    Dim pr As Single
'    Dim br As Single
'    Const intLINE_START_POS As Integer = 0
'    Const intLINES_PER_PAGE As Integer = 60
'
'    On Error GoTo Err_Handler
'   '  Printer.Print ""
'
''    CommonDialog1.Action = 5
''CommonDialog1.PrinterDefault = True
''CommonDialog1.CancelError = True
''CommonDialog1.Orientation = cdlPortrait
''CommonDialog1.ShowPrinter
' Printer.FontName = "Tahoma"
' Printer.FontSize = 13
' Printer.FontBold = True
'
' Dim divname, Countname, lotno, GrossWt, netwt, packno As String
'
' Set Rs = New Recordset
' Rs.Open "select  DIV_PRINTNAME  From pp_divmas where divcode='" & DivCode & "'", db
' If Not Rs.EOF Then
'    divname = Rs(0)
' End If
'Set Rs = New Recordset
' Rs.Open "select  isnull(SHORT_CODE ,'') SHORT_CODE From ig_product where divcode='" & DivCode & "'", db
' If Not Rs.EOF Then
'    Countname = Rs(0)
' End If
'
'     Set Rs = New Recordset
'     Rs.Open "select   isnull(PACK_NO ,'0') PACK_NO,LOT_CODE,PACK_WT,PACK_WT+TARE gross  From ig_packnos where  PRODUCT_CODE ='" & barcodeProduct & "' and  divcode='" & DivCode & "' and docno='" & barcodeDocno & "' and prod_date='" & Format(barcodeDocdt, "yyyy-mm-dd") & "' and PACK_NO ='" & barcodePackno & "'", db
'     If Not Rs.EOF Then
'        lotno = Rs("LOT_CODE")
'        GrossWt = Rs("gross")
'        netwt = Rs("PACK_WT")
'        packno = Rs("PACK_NO")
'
'     End If
'     Printer.FontName = "Tahoma"
'     Printer.FontSize = 12
'
'     Printer.Print Tab(intLINE_START_POS + 2); "" & Trim(divname)
''    Printer.Print Tab(5 + intLINE_START_POS); "WEAVING DIVISION"
'   ' Printer.FontBold = False
'
'
'    Printer.Print Tab(intLINE_START_POS); "Count . "; Tab(15 + intLINE_START_POS); ":" + Trim(Countname)
'
'    Printer.Print Tab(intLINE_START_POS); "LotNo. "; Tab(15 + intLINE_START_POS); ":" + Trim(lotno)
'    Printer.Print Tab(intLINE_START_POS); "Bag No."; Tab(15 + intLINE_START_POS); ":" + Trim(packno)
'    Printer.Print Tab(intLINE_START_POS); "Gross WT. "; Tab(15 + intLINE_START_POS); ":" + Trim(GrossWt)
'    Printer.Print Tab(intLINE_START_POS); "Net WT. "; Tab(15 + intLINE_START_POS); ":" + Trim(netwt)
'   ' Printer.Print Tab(5 + intLINE_START_POS); "BALE NO : " & vbCrLf + Trim(txtBarcode.Text)
'    MilsToPixels = 1440 / Printer.TwipsPerPixelX
'    pr = CSng(Me.cboXFactor.Text) * MilsToPixels
''  Printer.Print "123" & vbCrLf
''     Printer.Print "124" & vbCrLf
''      Printer.Print "125" & vbCrLf
''       Printer.Print "126" & vbCrLf
'
'
'
'    With bc
'
'       .BarcodeOutput = Printer
'        .BarCodeX = CLng(Me.txtX.Text) * (56.7 / Printer.TwipsPerPixelX)
'        .BarCodeY = CLng(Me.txtY.Text) * (56.7 / Printer.TwipsPerPixelY)
'        .BarXFactor = Int(pr)
'        .BarRatio = Ratio
'        .BarMultiplier = CInt(Me.cboMultiplier.Text)
'        ' Set the height needed
'        .BarcodeHeight = CLng(Me.txtHeight.Text) * 56.7 / Printer.TwipsPerPixelY
'        .BarTextGap = CInt(Me.txtGap.Text) * (56.7 / Printer.TwipsPerPixelY)
'        .BarTextFont fname, fsize, fbold, fitalic
'        .BarCodeData = txtBarcode.Text
'        'Printer.Print ""
'        .DrawBarCode
'
'    End With
'   '  Printer.Print ""
'
''           Printer.Print "127" & vbCrLf
''
''          Printer.Print "128" & vbCrLf
''            Printer.Print "129" & vbCrLf
''              Printer.Print "1210" & vbCrLf
'
''    Printer.Print "BALE NO : " & vbCrLf + Trim(txtBarcode.Text)
'    Printer.EndDoc
'    Exit Sub
'
'Err_Handler:
'MsgBox "Error Number: " & CStr(Err.Number) & vbCrLf _
'                        & "Description: " & Err.Description & vbCrLf _
'                        & "Error Source: " & Err.Source, vbOKOnly + vbCritical, "Error"
'End Sub
'
'Private Sub mnuFileSaveBMP_Click()
'    'Dim MilsToPixels As Single
'    Dim th As Long
'    Dim tw As Long
'    Dim fname As String
'
'    On Error GoTo Err_Handler
'    Me.picSave.Cls
'    With bc
'        .BarcodeOutput = Me.picSave
'        .BarCodeX = 1
'        .BarCodeY = 1
'        .BarXFactor = 1
'        .BarMultiplier = 1 'CInt(Me.cboMultiplier.Text)
'        .BarcodeHeight = CLng(Me.txtHeight.Text) * (56.7 / Screen.TwipsPerPixelY)
'        .BarTextGap = CInt(Me.txtGap.Text) * (56.7 / Screen.TwipsPerPixelY)
'        .BarTextFont fname, fsize, fbold, fitalic
'        .BarCodeData = txtBarcode.Text
'        th = .TotalBarHeight
'        tw = .TotalBarWidth
'        Me.picSave.Width = (tw + 2) * Screen.TwipsPerPixelX
'        Me.picSave.Height = (th + 2) * Screen.TwipsPerPixelY
'        'Handle (hdc) has changed with the resize of the picture box so update it with the .dll
'        .BarcodeOutput = Me.picSave
'        .DrawBarCode
'    End With
'    Me.picSave.Refresh
'    Me.picSave.Visible = True
'    Me.lblImage.Top = Me.picSave.Top + Me.picSave.Height + 5
'    Me.lblImage.Left = ((Me.picSave.Width - Me.lblImage.Width) / 2) + Me.picSave.Left
'    Me.lblImage.Visible = True
'    With CommonDialog1
'        .CancelError = True
'        .DialogTitle = "Save Barcode Image"
'        .Filter = "Bitmap | *.bmp"
'        .FileName = ""
'        .ShowSave
'        fname = Trim(.FileName)
'    End With
'    SavePicture Me.picSave.Image, fname
'    Me.picSave.Visible = False
'    Me.lblImage.Visible = False
'    Exit Sub
'
'
'Err_Handler:
'    'Cancel error
'    If Err.Number = 32755 Then
'        Me.picSave.Visible = False
'        Me.lblImage.Visible = False
'        Exit Sub
'    End If
'
'    MsgBox "Error Number: " & CStr(Err.Number) & vbCrLf _
'                        & "Description: " & Err.Description & vbCrLf _
'                        & "Error Source: " & Err.Source, vbOKOnly + vbCritical, "Error"
'End Sub
'
'Private Sub Form_Load()
'    Dim X As Integer
'
'
'
'    Set db = New Connection
'    db.CursorLocation = adUseClient
'    db.Provider = "msdatashape"
'    db.Open connectstring
'
'    Set bc = New clsLinearBarCodes
'    Me.picWorkspace.ScaleMode = vbPixels
'    Me.picSave.ScaleMode = vbPixels
'    Me.lblHeading.Caption = "Select a Barcode"
'    For X = 1 To 10
'        Me.cboMultiplier.AddItem CStr(X), X - 1
'    Next X
'    Me.cboMultiplier.ListIndex = 1
'    Me.cboMultiplier.Text = "2"
'
'    Me.cboXFactor.AddItem ".0095", 0
'    Me.cboXFactor.AddItem ".004", 1
'    Me.cboXFactor.ListIndex = 1
'
'    Me.cboBarRatio.AddItem "3:1", 0
'    Me.cboBarRatio.AddItem "3:1", 1
'    Me.cboBarRatio.ListIndex = 0
'    Me.mnuFilePrint.Enabled = False
'    Me.mnuFileSaveBMP.Enabled = False
'    Me.Show
'    Me.txtBarcode.SetFocus
'    CheckFields
'    txtY.Text = "58"
'
''    Me.lblHeading.Caption = "Code 128-Auto"
''    Me.chkDSS.Enabled = False
''    Me.chkCD.Value = Unchecked
''    Me.chkCD.Enabled = False
''    Me.cboBarRatio.Enabled = False
''    BC.Symbology = Code128_Auto
''    CheckFields
'    Me.lblHeading.Caption = "Code 128A"
'    Me.chkDSS.Enabled = False
'    Me.chkCD.value = Unchecked
'    Me.chkCD.Enabled = False
'    Me.cboBarRatio.Enabled = False
'    bc.Symbology = Code128_A
'    CheckFields
'
'    txtBarcode.Text = BarcodeText
'    Call cmdDraw_Click
'  '  Call Command1_Click
'     Pause 1000
'     Me.Hide
'     End Sub
'
'Private Sub Form_Unload(Cancel As Integer)
'    Set bc = Nothing
'End Sub
'
'Private Sub mnuCode11_Click()
'    Me.lblHeading.Caption = "Code 11"
'    Me.chkCD.Enabled = True
'    Me.chkDSS.Enabled = False
'    Me.cboBarRatio.Enabled = False
'    bc.Symbology = Code11
'    CheckFields
'End Sub
'
'Private Sub mnuCode128a_Click()
'    Me.lblHeading.Caption = "Code 128A"
'    Me.chkDSS.Enabled = False
'    Me.chkCD.value = Unchecked
'    Me.chkCD.Enabled = False
'    Me.cboBarRatio.Enabled = False
'    bc.Symbology = Code128_A
'    CheckFields
'End Sub
'
'Private Sub mnuCode128Auto_Click()
'    Me.lblHeading.Caption = "Code 128-Auto"
'    Me.chkDSS.Enabled = False
'    Me.chkCD.value = Unchecked
'    Me.chkCD.Enabled = False
'    Me.cboBarRatio.Enabled = False
'    bc.Symbology = Code128_Auto
'    CheckFields
'End Sub
'
'Private Sub mnuCode128b_Click()
'    Me.lblHeading.Caption = "Code 128B"
'    Me.chkDSS.Enabled = False
'    Me.chkCD.value = Unchecked
'    Me.chkCD.Enabled = False
'    Me.cboBarRatio.Enabled = False
'    bc.Symbology = Code128_B
'    CheckFields
'End Sub
'
'Private Sub mnuCode128c_Click()
'    Me.lblHeading.Caption = "Code 128C"
'    Me.chkDSS.Enabled = False
'    Me.chkCD.value = Unchecked
'    Me.chkCD.Enabled = False
'    Me.cboBarRatio.Enabled = False
'    bc.Symbology = Code128_C
'    CheckFields
'End Sub
'
'Private Sub mnuCode2of5_Click()
'    Me.lblHeading.Caption = "Code 2of5"
'    Me.chkDSS.Enabled = False
'    Me.chkCD.value = Unchecked
'    Me.chkCD.Enabled = False
'    Me.cboBarRatio.Enabled = False
'    bc.Symbology = Code2of5
'    CheckFields
'End Sub
'
'Private Sub mnuCode39_Click()
'    Me.lblHeading.Caption = "Code 39"
'    Me.chkCD.Enabled = True
'    Me.chkDSS.Enabled = True
'    Me.cboBarRatio.Enabled = True
'    bc.Symbology = Code39
'    CheckFields
'End Sub
'
'Private Sub mnuCode39Extd_Click()
'    Me.lblHeading.Caption = "Code 39 Full Ascii"
'    Me.chkCD.value = Unchecked
'    Me.chkCD.Enabled = False
'    Me.chkDSS.Enabled = True
'    Me.cboBarRatio.Enabled = True
'    bc.Symbology = Code39_Extd
'    CheckFields
'End Sub
'
'Private Sub mnuCode93_Click()
'    Me.lblHeading.Caption = "Code 93"
'    Me.chkDSS.Enabled = True
'    Me.chkCD.value = Unchecked
'    Me.chkCD.Enabled = False
'    Me.cboBarRatio.Enabled = False
'    bc.Symbology = Code93
'    CheckFields
'End Sub
'
'Private Sub mnuCodeCodabar_Click()
'    Me.lblHeading.Caption = "Codabar"
'    Me.chkDSS.Enabled = False
'    Me.chkCD.value = Unchecked
'    Me.chkCD.Enabled = False
'    Me.cboBarRatio.Enabled = False
'    bc.Symbology = Codabar
'    CheckFields
'End Sub
'
'Private Sub mnuCodeI2of5_Click()
'    Me.lblHeading.Caption = "Interleave 2of5"
'    Me.chkDSS.Enabled = False
'    Me.chkCD.value = Unchecked
'    Me.chkCD.Enabled = True
'    Me.cboBarRatio.Enabled = True
'    bc.Symbology = CodeI2of5
'    CheckFields
'End Sub
'
'Private Sub mnuCodeMSI_Click()
'    Me.lblHeading.Caption = "MSI"
'    Me.chkDSS.Enabled = False
'    Me.chkCD.value = Unchecked
'    Me.chkCD.Enabled = False
'    Me.cboBarRatio.Enabled = False
'    bc.Symbology = MSI
'    CheckFields
'End Sub
'
'Private Sub mnuFileExit_Click()
'Unload Me
'End
'End Sub
'
'
'
'Private Sub optHR_Click(Index As Integer)
'    bc.HRText = Index
'    cmdDraw_Click
'End Sub
'
'Private Sub optRotation_Click(Index As Integer)
'Select Case Index
'    Case 0
'        bc.BarRotation = 0
'    Case 1
'        bc.BarRotation = 90
'    Case 2
'        bc.BarRotation = 270
'    Case 3
'        bc.BarRotation = 180
'End Select
'cmdDraw_Click
'End Sub
'
'Private Sub optTxtAlign_Click(Index As Integer)
'    bc.HRTextAlignment = Index
'    cmdDraw_Click
'End Sub
'
'Private Sub chkCD_Click()
'    Me.chkDCD.Enabled = Me.chkCD.value = Checked
'    bc.UseCheckDigit = Me.chkCD.value = Checked
'End Sub
'
'Private Sub chkDSS_Click()
'    bc.DisplayStopStart = Me.chkDSS.value = Checked
'    cmdDraw_Click
'End Sub
'
'Private Sub chkDCD_Click()
'    bc.DisplayCheckDigit = Me.chkDCD.value = Checked
'    cmdDraw_Click
'End Sub
'Private Sub optTxtPos_Click(Index As Integer)
'If Index = 0 Then
'    bc.HRTextPlacement = TP_UNDER
'Else
'    bc.HRTextPlacement = TP_ABOVE
'End If
'cmdDraw_Click
'End Sub
'
'Private Sub txtBarcode_Change()
'    CheckFields
'End Sub
'
'Private Sub txtBarcode_KeyPress(KeyAscii As Integer)
' Call ToUpCase(txtBarcode, KeyAscii)
'End Sub
'
'Private Sub txtHeight_Change()
'    CheckFields
'End Sub
'
'Private Sub txtX_Change()
'  CheckFields
'End Sub
'
'Private Sub txtY_Change()
'    CheckFields
'End Sub
'
'
'Private Sub CheckFields()
'Dim sym As Integer
'
'sym = bc.Symbology
'If Me.txtX.Text = "" Or Me.txtY = "" Or Me.txtHeight = "" Or Me.txtBarcode = "" Or sym = 0 Then
'        Me.cmdDraw.Enabled = False
'        Me.cmdPrint.Enabled = False
'        Me.mnuFilePrint.Enabled = False
'        Me.mnuFileSaveBMP.Enabled = False
'    Else
'        Me.cmdDraw.Enabled = True
'        Me.cmdPrint.Enabled = True
'        Me.mnuFilePrint.Enabled = True
'        Me.mnuFileSaveBMP.Enabled = True
'    End If
'End Sub
'
'Public Sub ToUpCase(Ofld As Object, KeyAscii As Integer, Optional maxlen As Integer)
'On Error GoTo ToUpCase_Error
'    If maxlen = 0 Then maxlen = 50
'    If Len(Trim(Ofld)) < maxlen Then
'    If (KeyAscii >= 97 And KeyAscii <= 122) Then
'        KeyAscii = KeyAscii - 32
'    End If
'    ElseIf Not (KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13) Then
'    KeyAscii = 0
'    End If
'Exit Sub
'ToUpCase_Error:
'     MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ToUpCase of Form FrmFormIssue"
'
'End Sub
'Public Sub Pause(SecsDelay As Single)
'   Dim TimeOut   As Single
'   Dim PrevTimer As Single
'
''   PrevTimer = Timer
''   TimeOut = PrevTimer + SecsDelay
''   Do While PrevTimer < TimeOut
''     ' Sleep 4 '-- Timer is only updated every 1/64 sec = 15.625 millisecs.
''      DoEvents
''      If Timer < PrevTimer Then TimeOut = TimeOut - 86400 '-- pass midnight
''      PrevTimer = Timer
''   Loop
'End Sub









'--------------------------------------------------------------------------------------
Option Explicit
Private Declare Function Rectangle Lib "gdi32" (ByVal hdc As Long, ByVal X1 As Long, ByVal Y1 As Long, ByVal X2 As Long, ByVal Y2 As Long) As Long


Dim BC As clsLinearBarCodes
Dim Ratio As Single
Dim fname As String
Dim fsize As Single
Dim fbold As Boolean
Dim fitalic As Boolean
Dim Rs As Recordset
Dim adoSecondaryRS As Recordset
Dim db As Connection
Public barcodeProduct As String
Public barcodeDocno As String
Public barcodeDocdt, barcodePackno, PRINTSIZE, PackNetWt, PackGrossWt, PrintType As String

Private Sub cboBarRatio_Click()
    Ratio = CSng(Left(Me.cboBarRatio.Text, 1) / Right(Me.cboBarRatio, 1))
    BC.BarRatio = Ratio
End Sub

Private Sub cmdFont_Click()
    CommonDialog1.FontName = Me.txtBarcode.FontName
    ' Set Cancel to True
    CommonDialog1.CancelError = True
    On Error GoTo errHandler
    ' Set the Flags property
    CommonDialog1.Flags = cdlCFEffects Or cdlCFBoth
    ' Display the Font dialog box
    CommonDialog1.ShowFont
    fname = CommonDialog1.FontName
    fsize = CommonDialog1.FontSize
    fbold = CommonDialog1.FontBold
    fitalic = CommonDialog1.FontItalic
    Me.txtBarcode.Font.Name = CommonDialog1.FontName
    Me.txtBarcode.Font.Bold = CommonDialog1.FontBold
    Me.txtBarcode.Font.Italic = CommonDialog1.FontItalic
    cmdDraw_Click
Exit Sub
errHandler:
  ' User pressed the Cancel button
  Exit Sub

End Sub

Private Sub cmdColor_Click()
On Error GoTo errHandler
With CommonDialog1
    'Set Cancel to True
    .CancelError = True
    'Set the Flags property
    .Flags = cdlCCRGBInit 'Or cdlCCFullOpen
    'Display the Color Dialog box
    .ShowColor
    BC.BarColor = .Color
End With
cmdDraw_Click
errHandler:
' User pressed the Cancel button
End Sub

Private Sub cmdDraw_Click()
    Dim MilsToPixels As Single
    Dim th As Long
    Dim tw As Long
    Dim pr As Single
    Dim br As Single

    On Error GoTo Err_Handler

    MilsToPixels = 1440 / Screen.TwipsPerPixelX
    pr = CSng(Me.cboXFactor.Text) * MilsToPixels
    picWorkspace.Cls
    With BC
        .BarcodeOutput = Me.picWorkspace
        .BarCodeX = CLng(Me.txtX.Text) * (56.7 / Screen.TwipsPerPixelX)
        .BarCodeY = CLng(Me.txtY.Text) * (56.7 / Screen.TwipsPerPixelY)
        .BarXFactor = pr
        .BarRatio = Ratio
        .BarMultiplier = CInt(Me.cboMultiplier.Text)
        .BarcodeHeight = CLng(Me.txtHeight.Text) * (56.7 / Screen.TwipsPerPixelY)
        
        .BarTextGap = CInt(Me.txtGap.Text) * (56.7 / Screen.TwipsPerPixelY)
        .BarTextFont fname, fsize, fbold, fitalic
        .BarCodeData = txtBarcode.Text
        .DrawBarCode
        th = .TotalBarHeight
        tw = .TotalBarWidth
    Call Rectangle(Me.picWorkspace.hdc, .BarCodeX - 2, .BarCodeY - 2, .BarCodeX + tw + 2, .BarCodeY + th + 2)
    End With
    Me.picWorkspace.Refresh
    Exit Sub
    
Err_Handler:
MsgBox "Error Number: " & CStr(err.Number) & vbCrLf _
                        & "Description: " & err.Description & vbCrLf _
                        & "Error Source: " & err.Source, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub cmdPrint_Click()


Call barCodePrint
Exit Sub
    Dim MilsToPixels As Single
    Dim pr As Single
    Dim br As Single
    Const intLINE_START_POS As Integer = 6 - 1
    Const intLINES_PER_PAGE As Integer = 60
    
    On Error GoTo Err_Handler
    
    
     Dim divname, Countname, lotno, GrossWt, netwt, packno As String

 Set Rs = New Recordset
 Rs.Open "select  DIV_PRINTNAME  From pp_divmas where divcode='" & Divcode & "'", db
 If Not Rs.EOF Then
    divname = Rs(0)
 End If
Set Rs = New Recordset
 Rs.Open "select  isnull(SHORT_CODE ,'') SHORT_CODE From ig_rproduct where divcode='" & Divcode & "'", db
 If Not Rs.EOF Then
    Countname = Rs(0)
 End If

     Set Rs = New Recordset
     Rs.Open "select   isnull(PACK_NO ,'0') PACK_NO,LOT_CODE,PACK_WT,PACK_WT+TARE gross  From ig_rpacknos where  PRODUCT_CODE ='" & barcodeProduct & "' and  divcode='" & Divcode & "' and docno='" & barcodeDocno & "' and prod_date='" & Format(barcodeDocdt, "yyyy-mm-dd") & "' and PACK_NO ='" & barcodePackno & "'", db
     If Not Rs.EOF Then
        lotno = Rs("LOT_CODE")
        GrossWt = Rs("gross")
        netwt = Rs("PACK_WT")
        packno = Rs("PACK_NO")

     End If
       Printer.Print ""
    Printer.Print ""
      Printer.Print ""
    Printer.Print ""
     Printer.FontName = "Tahoma"
     Printer.FontSize = "13.5"
     Printer.Print ""
     Printer.Print Tab(intLINE_START_POS + 5); "" & divname
'    Printer.Print Tab(5 + intLINE_START_POS); "WEAVING DIVISION"
   ' Printer.FontBold = False

    Printer.Print ""
    Printer.Print ""
    Printer.FontName = "Tahoma"
     Printer.FontSize = "12"
    Printer.Print Tab(intLINE_START_POS); "Count . "; Tab(15 + intLINE_START_POS); ":" + Trim(Countname)
Printer.Print ""
    Printer.Print Tab(intLINE_START_POS); "LotNo. "; Tab(15 + intLINE_START_POS); ":" + Trim(lotno)
    Printer.Print ""
    Printer.Print Tab(intLINE_START_POS); "Bag No."; Tab(15 + intLINE_START_POS); ":" + Trim(packno)
    Printer.Print ""
    Printer.Print Tab(intLINE_START_POS); "Gross WT."; Tab(15 + intLINE_START_POS); ":" + Trim(Format(GrossWt, "00.00"))
    Printer.Print ""
    Printer.Print Tab(intLINE_START_POS); "Net WT. "; Tab(15 + intLINE_START_POS); ":" + Trim(Format(netwt, "00.00"))
   ' Printer.Print Tab(5 + intLINE_START_POS); "BALE NO : " & vbCrLf + Trim(txtBarcode.Text)

    
'     Printer.Print ""
'      Printer.Print ""
    CommonDialog1.Action = 5
CommonDialog1.PrinterDefault = True
CommonDialog1.CancelError = True
CommonDialog1.Orientation = cdlPortrait
CommonDialog1.ShowPrinter
' Printer.FontName = "Courier New"
' Printer.FontSize = 12.5
' Printer.FontBold = True
'  ' Printer.FontBold = False
'     Printer.FontName = "Courier New"
' Printer.FontSize = 12
'   Printer.Print ""
'     Printer.Print ""
'  Printer.Print Tab(intLINE_START_POS + 2); "ROLL  ROLLL: "; Tab(15 + intLINE_START_POS); Trim(txtBarcode.Text)
'
'    Printer.Print Tab(intLINE_START_POS); "ROLL ROLLROLL: "; Tab(15 + intLINE_START_POS); Trim(txtBarcode.Text)
'    Printer.Print Tab(intLINE_START_POS); "ROLL ROLLROLL: "; Tab(15 + intLINE_START_POS); Trim(txtBarcode.Text)
'    Printer.Print Tab(intLINE_START_POS); "ROLL ROLLROLL: "; Tab(15 + intLINE_START_POS); Trim(txtBarcode.Text)
'    Printer.Print Tab(intLINE_START_POS); "ROLL ROLLROLL: "; Tab(15 + intLINE_START_POS); Trim(txtBarcode.Text)
   ' Printer.Print Tab(5 + intLINE_START_POS); "BALE NO : " & vbCrLf + Trim(txtBarcode.Text)
    MilsToPixels = 1440 / Printer.TwipsPerPixelX
    pr = CSng(Me.cboXFactor.Text) * MilsToPixels
'  Printer.Print "123" & vbCrLf
'     Printer.Print "124" & vbCrLf
'      Printer.Print "125" & vbCrLf
'       Printer.Print "126" & vbCrLf
    With BC
  
       .BarcodeOutput = Printer
        .BarCodeX = CLng(Me.txtX.Text) * (56.7 / Printer.TwipsPerPixelX)
        .BarCodeY = CLng(Me.txtY.Text) * (56.7 / Printer.TwipsPerPixelY)
        .BarXFactor = Int(pr)
        .BarRatio = Ratio
        .BarMultiplier = CInt(Me.cboMultiplier.Text)
        ' Set the height needed
        .BarcodeHeight = CLng(Me.txtHeight.Text) * 56.7 / Printer.TwipsPerPixelY
        .BarTextGap = CInt(Me.txtGap.Text) * (56.7 / Printer.TwipsPerPixelY)
        .BarTextFont fname, fsize, fbold, fitalic
        .BarCodeData = txtBarcode.Text
        Printer.Print ""
        .DrawBarCode
   
    End With
'     Printer.Print ""
    
'           Printer.Print "127" & vbCrLf
'
'          Printer.Print "128" & vbCrLf
'            Printer.Print "129" & vbCrLf
'              Printer.Print "1210" & vbCrLf
    
'    Printer.Print "BALE NO : " & vbCrLf + Trim(txtBarcode.Text)
    Printer.EndDoc
    Exit Sub
    
Err_Handler:
MsgBox "Error Number: " & CStr(err.Number) & vbCrLf _
                        & "Description: " & err.Description & vbCrLf _
                        & "Error Source: " & err.Source, vbOKOnly + vbCritical, "Error"
End Sub


Private Sub Command1_Click()
On Error Resume Next
 Dim MilsToPixels As Single
    Dim pr As Single
    Dim br As Single
    Const intLINE_START_POS As Integer = 0
    Const intLINES_PER_PAGE As Integer = 60

    On Error GoTo Err_Handler
   '  Printer.Print ""

'    CommonDialog1.Action = 5
'CommonDialog1.PrinterDefault = True
'CommonDialog1.CancelError = True
'CommonDialog1.Orientation = cdlPortrait
'CommonDialog1.ShowPrinter
' Printer.FontName = "Tahoma"
' Printer.FontSize = 13
' Printer.FontBold = True
'
' Dim divname, Countname, lotno, GrossWt, netwt, packno As String
'
' Set Rs = New Recordset
' Rs.Open "select  DIV_PRINTNAME  From pp_divmas where divcode='" & DivCode & "'", db
' If Not Rs.EOF Then
'    divname = Rs(0)
' End If
'Set Rs = New Recordset
' Rs.Open "select  isnull(SHORT_CODE ,'') SHORT_CODE From ig_product where divcode='" & DivCode & "'", db
' If Not Rs.EOF Then
'    Countname = Rs(0)
' End If
'
'     Set Rs = New Recordset
'     Rs.Open "select   isnull(PACK_NO ,'0') PACK_NO,LOT_CODE,PACK_WT,PACK_WT+TARE gross  From ig_packnos where  PRODUCT_CODE ='" & barcodeProduct & "' and  divcode='" & DivCode & "' and docno='" & barcodeDocno & "' and prod_date='" & Format(barcodeDocdt, "yyyy-mm-dd") & "' and PACK_NO ='" & barcodePackno & "'", db
'     If Not Rs.EOF Then
'        lotno = Rs("LOT_CODE")
'        GrossWt = Rs("gross")
'        netwt = Rs("PACK_WT")
'        packno = Rs("PACK_NO")
'
'     End If
'     Printer.FontName = "Tahoma"
'     Printer.FontSize = 12
'
'     Printer.Print Tab(intLINE_START_POS + 2); "" & Trim(divname)
''    Printer.Print Tab(5 + intLINE_START_POS); "WEAVING DIVISION"
'   ' Printer.FontBold = False
'
'
'    Printer.Print Tab(intLINE_START_POS); "Count . "; Tab(15 + intLINE_START_POS); ":" + Trim(Countname)
'
'    Printer.Print Tab(intLINE_START_POS); "LotNo. "; Tab(15 + intLINE_START_POS); ":" + Trim(lotno)
'    Printer.Print Tab(intLINE_START_POS); "Bag No."; Tab(15 + intLINE_START_POS); ":" + Trim(packno)
'    Printer.Print Tab(intLINE_START_POS); "Gross WT. "; Tab(15 + intLINE_START_POS); ":" + Trim(GrossWt)
'    Printer.Print Tab(intLINE_START_POS); "Net WT. "; Tab(15 + intLINE_START_POS); ":" + Trim(netwt)
 Dim divname, Countname, lotno, GrossWt, netwt, packno As String

 Set Rs = New Recordset
 Rs.Open "select  DIV_PRINTNAME  From pp_divmas where divcode='" & Divcode & "'", db
 If Not Rs.EOF Then
    divname = Rs(0)
 End If
Set Rs = New Recordset
 Rs.Open "select  isnull(varname ,'') SHORT_CODE From rm_var where   VARCODE='" & barcodeProduct & "'", db
 If Not Rs.EOF Then
    Countname = Rs(0)
 End If

'     Set Rs = New Recordset
'     Rs.Open "select   isnull(PACK_NO ,'0') PACK_NO,LOT_CODE,PACK_WT,PACK_WT+TARE gross  From ig_rpacknos where  PRODUCT_CODE ='" & barcodeProduct & "' and  divcode='" & divcode & "' and docno='" & barcodeDocno & "' and prod_date='" & Format(barcodeDocdt, "yyyy-mm-dd") & "' and PACK_NO ='" & barcodePackno & "'", db
'     If Not Rs.EOF Then
'        lotno = Rs("LOT_CODE")
'        GrossWt = Rs("gross")
'        netwt = Rs("PACK_WT")
'        packno = Rs("PACK_NO")
'
'     End If
     
     
    If PRINTSIZE = "150" Then
            Printer.Print ""
            Printer.Print ""
              Printer.Print ""
            Printer.Print ""
             Printer.FontName = "Tahoma"
             Printer.FontSize = "13.5"
             Printer.Print ""
             Printer.Print Tab(intLINE_START_POS + 5); "" & divname
        '    Printer.Print Tab(5 + intLINE_START_POS); "WEAVING DIVISION"
           ' Printer.FontBold = False
        
            Printer.Print ""
            Printer.Print ""
            Printer.FontName = "Tahoma"
             Printer.FontSize = "12"
             Printer.FontBold = True
            Printer.Print Tab(intLINE_START_POS); "Count . "; Tab(15 + intLINE_START_POS); ":" + Trim(Countname)
        Printer.Print ""
            Printer.Print Tab(intLINE_START_POS); "LotNo. "; Tab(15 + intLINE_START_POS); ":" + Trim(lotno)
            Printer.Print ""
            Printer.Print Tab(intLINE_START_POS); "Pack No."; Tab(15 + intLINE_START_POS); ":" + Trim(barcodePackno)
            Printer.Print ""
            Printer.Print Tab(intLINE_START_POS); "Gross WT."; Tab(15 + intLINE_START_POS); ":" + Trim(Format(GrossWt, "00.000"))
            Printer.Print ""
            Printer.Print Tab(intLINE_START_POS); "Net WT. "; Tab(15 + intLINE_START_POS); ":" + Trim(Format(PackNetWt, "00.000"))
   
   ElseIf PRINTSIZE = "75" Then
        '       Printer.Print ""
        '    Printer.Print ""
             Printer.Print ""
       
             Printer.FontName = "Tahoma"
             Printer.FontSize = "13.5"
             'Printer.Print ""
               Printer.FontBold = True
             Printer.Print Tab(intLINE_START_POS + 10); "" & divname
        '    Printer.Print Tab(5 + intLINE_START_POS); "WEAVING DIVISION"
           ' Printer.FontBold = False
        
            'Printer.Print ""
           Printer.Print ""
            Printer.FontName = "Tahoma"
             Printer.FontSize = "11"
             Printer.FontBold = True
            Printer.Print Tab(intLINE_START_POS + 5); "Waste Type "; Tab(19 + intLINE_START_POS); ":" + Trim(Countname)
            Printer.Print ""
            Printer.Print Tab(intLINE_START_POS + 5); "Waste Code "; Tab(19 + intLINE_START_POS); ":" + Trim(barcodeProduct)
            Printer.Print ""
            Printer.Print Tab(intLINE_START_POS + 5); "Pack No."; Tab(19 + intLINE_START_POS); ":" + Trim(barcodePackno)
            Printer.Print ""
            Printer.Print Tab(intLINE_START_POS + 5); "Gross WT."; Tab(19 + intLINE_START_POS); ":" + Trim(Format(PackGrossWt, "00.000"))
            Printer.Print ""
            Printer.Print Tab(intLINE_START_POS + 5); "Net WT. "; Tab(19 + intLINE_START_POS); ":" + Trim(Format(PackNetWt, "00.000"))
           
   Else
               Printer.Print ""
'            Printer.Print ""
'            Printer.FontName = "Tahoma"
'            Printer.FontSize = "13.5"
'            Printer.FontBold = True
'            Printer.Print Tab(intLINE_START_POS + 10); "" & divname
            Printer.FontName = "Tahoma"
            Printer.FontSize = "10"
            Printer.FontBold = True
            Printer.Print Tab(intLINE_START_POS + 5); "Variety "; Tab(19 + intLINE_START_POS); ":" + Trim(Countname)
            Printer.Print ""
            Printer.Print Tab(intLINE_START_POS + 5); "Lot No& Dt."; Tab(19 + intLINE_START_POS); ":" + Trim(barcodeDocno) & " & " & Trim(barcodeDocdt)
            Printer.Print ""
            Printer.Print Tab(intLINE_START_POS + 5); "Bale No."; Tab(19 + intLINE_START_POS); ":" + Trim(barcodePackno)
            Printer.Print ""
'            Printer.Print Tab(intLINE_START_POS + 5); "Gross WT."; ; ":" + Trim(Format(GrossWt, "00.000"))
'            Printer.Print ""
            Printer.Print Tab(intLINE_START_POS + 3); "Net&Gross WT."; Tab(19); ":" + Trim(Format(PackNetWt, "00.000")) + " & " + Trim(Format(PackGrossWt, "00.000"))
           
           
           
   End If
   
   ' Printer.P
   ' Printer.Print Tab(5 + intLINE_START_POS); "BALE NO : " & vbCrLf + Trim(txtBarcode.Text)
    MilsToPixels = 1440 / Printer.TwipsPerPixelX
    pr = CSng(Me.cboXFactor.Text) * MilsToPixels
'  Printer.Print "123" & vbCrLf
'     Printer.Print "124" & vbCrLf
'      Printer.Print "125" & vbCrLf
'       Printer.Print "126" & vbCrLf



    With BC

       .BarcodeOutput = Printer
        .BarCodeX = CLng(Me.txtX.Text) * (56.7 / Printer.TwipsPerPixelX)
        .BarCodeY = CLng(Me.txtY.Text) * (56.7 / Printer.TwipsPerPixelY)
        .BarXFactor = Int(pr)
        .BarRatio = Ratio
        .BarMultiplier = CInt(Me.cboMultiplier.Text)
        ' Set the height needed
        .BarcodeHeight = CLng(Me.txtHeight.Text) * 56.7 / Printer.TwipsPerPixelY
        .BarTextGap = CInt(Me.txtGap.Text) * (56.7 / Printer.TwipsPerPixelY)
        .BarTextFont fname, fsize, fbold, fitalic
        .BarCodeData = txtBarcode.Text
        'Printer.Print ""
        .DrawBarCode

    End With
   '  Printer.Print ""

'           Printer.Print "127" & vbCrLf
'
'          Printer.Print "128" & vbCrLf
'            Printer.Print "129" & vbCrLf
'              Printer.Print "1210" & vbCrLf

'    Printer.Print "BALE NO : " & vbCrLf + Trim(txtBarcode.Text)
    Printer.EndDoc
    Exit Sub

Err_Handler:
MsgBox "Error Number: " & CStr(err.Number) & vbCrLf _
                        & "Description: " & err.Description & vbCrLf _
                        & "Error Source: " & err.Source, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub Command2_Click()
Call barCodePrint
End Sub

Private Sub mnuFileSaveBMP_Click()
    'Dim MilsToPixels As Single
    Dim th As Long
    Dim tw As Long
    Dim fname As String
    
    On Error GoTo Err_Handler
    Me.picSave.Cls
    With BC
        .BarcodeOutput = Me.picSave
        .BarCodeX = 1
        .BarCodeY = 1
        .BarXFactor = 1
        .BarMultiplier = 1 'CInt(Me.cboMultiplier.Text)
        .BarcodeHeight = CLng(Me.txtHeight.Text) * (56.7 / Screen.TwipsPerPixelY)
        .BarTextGap = CInt(Me.txtGap.Text) * (56.7 / Screen.TwipsPerPixelY)
        .BarTextFont fname, fsize, fbold, fitalic
        .BarCodeData = txtBarcode.Text
         th = .TotalBarHeight
         tw = .TotalBarWidth
         Me.picSave.Width = (tw + 2) * Screen.TwipsPerPixelX
         Me.picSave.Height = (th + 2) * Screen.TwipsPerPixelY
        'Handle (hdc) has changed with the resize of the picture box so update it with the .dll
        .BarcodeOutput = Me.picSave
        .DrawBarCode
    End With
    Me.picSave.Refresh
    Me.picSave.Visible = True
    Me.lblImage.Top = Me.picSave.Top + Me.picSave.Height + 5
    Me.lblImage.Left = ((Me.picSave.Width - Me.lblImage.Width) / 2) + Me.picSave.Left
    Me.lblImage.Visible = True
    With CommonDialog1
        .CancelError = True
        .DialogTitle = "Save Barcode Image"
        .Filter = "Bitmap | *.bmp"
        .FileName = ""
        .ShowSave
        fname = Trim(.FileName)
    End With
    SavePicture Me.picSave.Image, fname
    Me.picSave.Visible = False
    Me.lblImage.Visible = False
    Exit Sub
    
    
Err_Handler:
    'Cancel error
    If err.Number = 32755 Then
        Me.picSave.Visible = False
        Me.lblImage.Visible = False
        Exit Sub
    End If
    
    MsgBox "Error Number: " & CStr(err.Number) & vbCrLf _
                        & "Description: " & err.Description & vbCrLf _
                        & "Error Source: " & err.Source, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub Form_Load()
    Dim X As Integer
        Set db = New Connection
    db.CursorLocation = adUseClient
    db.Provider = "msdatashape"
    db.Open connectstring
    
    Set BC = New clsLinearBarCodes
    Me.picWorkspace.ScaleMode = vbPixels
    Me.picSave.ScaleMode = vbPixels
    Me.lblHeading.Caption = "Select a Barcode"
    For X = 1 To 10
        Me.cboMultiplier.AddItem CStr(X), X - 1
    Next X
    Me.cboMultiplier.ListIndex = 1

    Me.cboMultiplier.Text = "1.50"
    Me.cboXFactor.AddItem ".0095", 0
    Me.cboXFactor.AddItem ".005", 1
    Me.cboXFactor.ListIndex = 0
    
    Me.cboBarRatio.AddItem "3:1", 0
    Me.cboBarRatio.AddItem "2.5:1", 1
    Me.cboBarRatio.ListIndex = 0
    Me.mnuFilePrint.Enabled = False
    Me.mnuFileSaveBMP.Enabled = False
    Me.Show
    Me.txtBarcode.SetFocus
    CheckFields
    cmdDraw.Enabled = True
     txtX.Text = 10
    
      If PRINTSIZE = "150" Then
      Else
      
      txtY.Text = 64
      txtX.Text = 10
      End If
      
        If PRINTSIZE = "150" Then
      ElseIf PRINTSIZE = "75" Then
      
      
      txtY.Text = 64
      txtX.Text = 10
      Else
        txtY.Text = 36
        txtX.Text = 10
        cboXFactor.Text = ".0055"
      
      End If
    
    
'    Me.lblHeading.Caption = "Code 128-Auto"
'    Me.chkDSS.Enabled = False
'    Me.chkCD.Value = Unchecked
'    Me.chkCD.Enabled = False
'    Me.cboBarRatio.Enabled = False
'    BC.Symbology = Code128_Auto
'    CheckFields
    Me.lblHeading.Caption = "Code 128A"
    Me.chkDSS.Enabled = False
    Me.chkCD.value = Unchecked
    Me.chkCD.Enabled = False
    Me.cboBarRatio.Enabled = False
    BC.Symbology = Code128_A
    CheckFields
'    Call barCodePrint
       ' txtBarcode.Text = BarcodeText
   ' Call cmdDraw_Click
'    Call Command1_Click
        ' Pause 1000
   '  Me.Hide
  
   '  End Sub
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Set BC = Nothing
End Sub

Private Sub mnuCode11_Click()
    Me.lblHeading.Caption = "Code 11"
    Me.chkCD.Enabled = True
    Me.chkDSS.Enabled = False
    Me.cboBarRatio.Enabled = False
    BC.Symbology = Code11
    CheckFields
End Sub

Private Sub mnuCode128a_Click()
    Me.lblHeading.Caption = "Code 128A"
    Me.chkDSS.Enabled = False
    Me.chkCD.value = Unchecked
    Me.chkCD.Enabled = False
    Me.cboBarRatio.Enabled = False
    BC.Symbology = Code128_A
    CheckFields
End Sub

Private Sub mnuCode128Auto_Click()
    Me.lblHeading.Caption = "Code 128-Auto"
    Me.chkDSS.Enabled = False
    Me.chkCD.value = Unchecked
    Me.chkCD.Enabled = False
    Me.cboBarRatio.Enabled = False
    BC.Symbology = Code128_Auto
    CheckFields
End Sub

Private Sub mnuCode128b_Click()
    Me.lblHeading.Caption = "Code 128B"
    Me.chkDSS.Enabled = False
    Me.chkCD.value = Unchecked
    Me.chkCD.Enabled = False
    Me.cboBarRatio.Enabled = False
    BC.Symbology = Code128_B
    CheckFields
End Sub

Private Sub mnuCode128c_Click()
    Me.lblHeading.Caption = "Code 128C"
    Me.chkDSS.Enabled = False
    Me.chkCD.value = Unchecked
    Me.chkCD.Enabled = False
    Me.cboBarRatio.Enabled = False
    BC.Symbology = Code128_C
    CheckFields
End Sub

Private Sub mnuCode2of5_Click()
    Me.lblHeading.Caption = "Code 2of5"
    Me.chkDSS.Enabled = False
    Me.chkCD.value = Unchecked
    Me.chkCD.Enabled = False
    Me.cboBarRatio.Enabled = False
    BC.Symbology = Code2of5
    CheckFields
End Sub

Private Sub mnuCode39_Click()
    Me.lblHeading.Caption = "Code 39"
    Me.chkCD.Enabled = True
    Me.chkDSS.Enabled = True
    Me.cboBarRatio.Enabled = True
    BC.Symbology = Code39
    CheckFields
End Sub

Private Sub mnuCode39Extd_Click()
    Me.lblHeading.Caption = "Code 39 Full Ascii"
    Me.chkCD.value = Unchecked
    Me.chkCD.Enabled = False
    Me.chkDSS.Enabled = True
    Me.cboBarRatio.Enabled = True
    BC.Symbology = Code39_Extd
    CheckFields
End Sub

Private Sub mnuCode93_Click()
    Me.lblHeading.Caption = "Code 93"
    Me.chkDSS.Enabled = True
    Me.chkCD.value = Unchecked
    Me.chkCD.Enabled = False
    Me.cboBarRatio.Enabled = False
    BC.Symbology = Code93
    CheckFields
End Sub

Private Sub mnuCodeCodabar_Click()
    Me.lblHeading.Caption = "Codabar"
    Me.chkDSS.Enabled = False
    Me.chkCD.value = Unchecked
    Me.chkCD.Enabled = False
    Me.cboBarRatio.Enabled = False
    BC.Symbology = Codabar
    CheckFields
End Sub

Private Sub mnuCodeI2of5_Click()
    Me.lblHeading.Caption = "Interleave 2of5"
    Me.chkDSS.Enabled = False
    Me.chkCD.value = Unchecked
    Me.chkCD.Enabled = True
    Me.cboBarRatio.Enabled = True
    BC.Symbology = CodeI2of5
    CheckFields
End Sub

Private Sub mnuCodeMSI_Click()
    Me.lblHeading.Caption = "MSI"
    Me.chkDSS.Enabled = False
    Me.chkCD.value = Unchecked
    Me.chkCD.Enabled = False
    Me.cboBarRatio.Enabled = False
    BC.Symbology = MSI
    CheckFields
End Sub

Private Sub mnuFileExit_Click()
Unload Me
End
End Sub



Private Sub optHR_Click(Index As Integer)
    BC.HRText = Index
    cmdDraw_Click
End Sub

Private Sub optRotation_Click(Index As Integer)
Select Case Index
    Case 0
        BC.BarRotation = 0
    Case 1
        BC.BarRotation = 90
    Case 2
        BC.BarRotation = 270
    Case 3
        BC.BarRotation = 180
End Select
cmdDraw_Click
End Sub

Private Sub optTxtAlign_Click(Index As Integer)
    BC.HRTextAlignment = Index
    cmdDraw_Click
End Sub

Private Sub chkCD_Click()
    Me.chkDCD.Enabled = Me.chkCD.value = Checked
    BC.UseCheckDigit = Me.chkCD.value = Checked
End Sub

Private Sub chkDSS_Click()
    BC.DisplayStopStart = Me.chkDSS.value = Checked
    cmdDraw_Click
End Sub

Private Sub chkDCD_Click()
    BC.DisplayCheckDigit = Me.chkDCD.value = Checked
    cmdDraw_Click
End Sub
Private Sub optTxtPos_Click(Index As Integer)
If Index = 0 Then
    BC.HRTextPlacement = TP_UNDER
Else
    BC.HRTextPlacement = TP_ABOVE
End If
cmdDraw_Click
End Sub

Private Sub txtBarcode_Change()
    CheckFields
End Sub

Private Sub txtBarcode_KeyPress(KeyAscii As Integer)
 Call ToUpCase(txtBarcode, KeyAscii)
End Sub

Private Sub txtHeight_Change()
    CheckFields
End Sub

Private Sub txtX_Change()
  CheckFields
End Sub

Private Sub txtY_Change()
    CheckFields
End Sub


Private Sub CheckFields()
Dim sym As Integer

sym = BC.Symbology
If Me.txtX.Text = "" Or Me.txtY = "" Or Me.txtHeight = "" Or Me.txtBarcode = "" Or sym = 0 Then
        Me.cmdDraw.Enabled = False
        Me.cmdPrint.Enabled = False
        Me.mnuFilePrint.Enabled = False
        Me.mnuFileSaveBMP.Enabled = False
    Else
        Me.cmdDraw.Enabled = True
        Me.cmdPrint.Enabled = True
        Me.mnuFilePrint.Enabled = True
        Me.mnuFileSaveBMP.Enabled = True
    End If
End Sub

Public Sub ToUpCase(Ofld As Object, KeyAscii As Integer, Optional maxlen As Integer)
On Error GoTo ToUpCase_Error
    If maxlen = 0 Then maxlen = 50
    If Len(Trim(Ofld)) < maxlen Then
    If (KeyAscii >= 97 And KeyAscii <= 122) Then
        KeyAscii = KeyAscii - 32
    End If
    ElseIf Not (KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13) Then
    KeyAscii = 0
    End If
Exit Sub
ToUpCase_Error:
     MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure ToUpCase of Form FrmFormIssue"

End Sub


Public Function barCodePrint()

On Error Resume Next
     
      Dim X, Y, i1 As Long
     If (PRINTSIZE = 755 Or PRINTSIZE = 50) And PrintType <> "1" Then
'        Set Rs = New Recordset
'         Rs.Open "select  (Pack_NO) Pack_NO,(PACK_NO ) MPACK_NO,isnull(pack_wt,0) pack_wt,isnull(pack_wt,0)+isnull(tare,0) gross   From ig_rpacknos where  PRODUCT_CODE ='" & barcodeProduct & "' and  divcode='" & divcode & "' and docno='" & barcodeDocno & "' and pack_no in (select items from dbo.split('" & barcodePackno & "',',') ) ", db
'         If Not Rs.EOF Then
'            X = Rs(0)
'            Y = Rs(1)
'            PackGrossWt = Val(Rs("gross"))
'            PackNetWt = Val(Rs("pack_wt"))
'
'         End If
'
'
'
'        For i1 = X To Y
'            BarcodeText = CStr(Trim(barcodeProduct)) + "," + CStr(i1) + "," + CStr(Trim(barcodeDocno))
'            barcodePackno = CStr(i1)
'            txtBarcode.Text = BarcodeText
'            Call cmdDraw_Click
'            Call Command1_Click
'               ' fm1.Hide
'        Next
     
                Dim position As Integer

        position = InStr(1, barcodePackno, ",")
     
     If position = 0 Then
          Set Rs = New Recordset
         Rs.Open "select min(Pack_NO) Pack_NO,max(PACK_NO ) MPACK_NO  From ig_rpacknos where  PRODUCT_CODE ='" & barcodeProduct & "' and  divcode='" & Divcode & "' and docno='" & barcodeDocno & "' ", db  '' and pack_no in (select items from dbo.split('" & barcodePackno & "',',') )
         If Not Rs.EOF Then
            X = Rs(0)
            Y = Rs(1)
    
         End If
      Else
        Set Rs = New Recordset
         Rs.Open "select min(Baleno) Pack_NO,max(Baleno ) MPACK_NO  From rm_bale where  varcode ='" & barcodeProduct & "' and  divcode='" & Divcode & "' and lotno='" & barcodeDocno & "' and lotdt='" & Format(barcodeDocdt, "yyyy-mm-dd") & "' and baleno in (select items from dbo.split('" & barcodePackno & "',',') )", db '' and pack_no in (select items from dbo.split('" & barcodePackno & "',',') )
         If Not Rs.EOF Then
            X = Rs(0)
            Y = Rs(1)
    
         End If
      End If
     For i1 = X To Y
        Set Rs = New Recordset
         Rs.Open "select  (Baleno) Pack_NO,(Baleno ) MPACK_NO,isnull(favaourablewgt,0) pack_wt,isnull(GRWT,0) gross   From rm_bale where  varcode ='" & barcodeProduct & "' and  divcode='" & Divcode & "'  and lotdt='" & Format(barcodeDocdt, "yyyy-mm-dd") & "'  and lotno='" & barcodeDocno & "' and baleno ='" & i1 & "' ", db
         If Not Rs.EOF Then
        
            PackGrossWt = val(Rs("gross"))
            PackNetWt = val(Rs("pack_wt"))

         End If
     
            BarcodeText = CStr(Trim(barcodeProduct)) + "," + CStr(i1) + "," + CStr(Trim(barcodeDocno)) + "," + CStr(Trim(barcodeDocdt))
            barcodePackno = CStr(i1)
            txtBarcode.Text = BarcodeText
            Call cmdDraw_Click
            Call Command1_Click
               ' fm1.Hide
    Next
     
     
     Else
     
     

     
     
     
     

            Call cmdDraw_Click
            Call Command1_Click
     Exit Function
          Set Rs = New Recordset
         Rs.Open "select  sPack_NO,EPACK_NO   From ig_rpackdt where  PRODUCT_CODE ='" & barcodeProduct & "' and  divcode='" & Divcode & "' and doc_no='" & barcodeDocno & "' ", db
         If Not Rs.EOF Then
            X = Rs(0)
            Y = Rs(1)
    
         End If
         
         
          
        For i1 = X To Y
            BarcodeText = CStr(Trim(barcodeProduct)) + "," + CStr(i1) + "," + CStr(Trim(barcodeDocno))
            barcodePackno = CStr(i1)
            txtBarcode.Text = BarcodeText
            Call cmdDraw_Click
            Call Command1_Click
               ' fm1.Hide
        Next
      End If
    Exit Function

Err_Handler:
MsgBox "Error Number: " & CStr(err.Number) & vbCrLf _
                        & "Description: " & err.Description & vbCrLf _
                        & "Error Source: " & err.Source, vbOKOnly + vbCritical, "Error"
End Function


