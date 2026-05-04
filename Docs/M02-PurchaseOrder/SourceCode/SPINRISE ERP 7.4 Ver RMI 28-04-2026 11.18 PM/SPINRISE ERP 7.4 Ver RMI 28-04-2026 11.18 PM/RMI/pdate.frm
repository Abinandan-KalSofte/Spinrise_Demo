VERSION 5.00
Object = "{8E27C92E-1264-101C-8A2F-040224009C02}#7.0#0"; "MSCAL.OCX"
Begin VB.Form pdate1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Change Processing Date"
   ClientHeight    =   6780
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   10230
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6780
   ScaleWidth      =   10230
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command2 
      BackColor       =   &H80000004&
      Caption         =   "Change && Exit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3930
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   4725
      Width           =   1425
   End
   Begin VB.PictureBox Picture1 
      Height          =   2580
      Left            =   1710
      ScaleHeight     =   2520
      ScaleWidth      =   5850
      TabIndex        =   1
      Top             =   2010
      Width           =   5910
      Begin MSACAL.Calendar Calendar1 
         Height          =   2685
         Left            =   -15
         TabIndex        =   2
         Top             =   -75
         Width           =   5940
         _Version        =   524288
         _ExtentX        =   10478
         _ExtentY        =   4736
         _StockProps     =   1
         BackColor       =   14737632
         Year            =   2000
         Month           =   8
         Day             =   31
         DayLength       =   1
         MonthLength     =   2
         DayFontColor    =   4210816
         FirstDay        =   2
         GridCellEffect  =   1
         GridFontColor   =   8388608
         GridLinesColor  =   65280
         ShowDateSelectors=   -1  'True
         ShowDays        =   -1  'True
         ShowHorizontalGrid=   -1  'True
         ShowTitle       =   -1  'True
         ShowVerticalGrid=   -1  'True
         TitleFontColor  =   8388608
         ValueIsNull     =   0   'False
         BeginProperty DayFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty GridFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty TitleFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
      End
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C00000&
      Enabled         =   0   'False
      Height          =   2700
      Left            =   1650
      Style           =   1  'Graphical
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   1950
      Width           =   6030
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Processing Date"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   480
      Left            =   3135
      TabIndex        =   3
      Top             =   1305
      Width           =   3240
   End
End
Attribute VB_Name = "pdate1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As Connection
Dim Rs As Recordset
Dim pdate2 As Date

Private Sub Calendar1_Click()
intervalMinutes = -1
On Error GoTo Calendar1_Click_Error

    Set DB = New Connection
    DB.Open connectstring
    If IsDate(Calendar1.Day & "/" & Calendar1.MONTH & "/" & Calendar1.Year) Then
    
        Screen.MousePointer = 11
        Set Rs = New Recordset
        Rs.Open "SELECT YEAR_CODE FROM IG_TRANYEAR WHERE '" & Format(pdate, "YYYY/MM/DD") & "' BETWEEN START_DATE AND END_DATE", DB, adOpenStatic, adLockBatchOptimistic
        If Rs.RecordCount > 0 Then
            YearNo = Rs(0)
            Screen.MousePointer = 0
        Else
         MsgBox "Please Define Year Number for this Processing Date", vbInformation, head
         trnyearflg = "Y"
       '  Tranyear.Show
         Screen.MousePointer = 0
        End If

        pdate2 = CDate(Calendar1.Day & "/" & Calendar1.MONTH & "/" & Calendar1.Year)
        If pdate2 > Date Then
            pdate2 = Date
        End If
        pdate = pdate2
        Calendar1.value = pdate
        yopym = fnyopym(pdate)
        ylastym = fnylastym(pdate)
        yfdate = fnyfdate(pdate)
        yldate = fnyldate(pdate)
        mfdate = fnmfdate(pdate)
        mldate = fnmldate(pdate)
        
        
       'RMImain.Caption = RTrim(Module) + Space(4) + divabbr + " " + Right(yfdate, 4) + "-" + Right(yldate, 4)
       MDIRMI_Enterprise.Caption = RTrim(Module) + Space(4) + divabbr + " " + Right(yfdate, 4) + "-" + Right(yldate, 4)
       
       
    End If
intervalMinutes = -1
Exit Sub
Calendar1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Calendar1_Click of Form pdate1", vbInformation, head
Screen.MousePointer = 0

End Sub
Private Sub Command2_Click()
    'MDIInvg.Caption = "Sales And Distribution " & divabbr & " (" & Right(yfdate, 4) & " - " & Right(yldate, 4) & ")"
On Error GoTo Command2_Click_Error
intervalMinutes = -1
    Unload Me

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form pdate1", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Form_Load()
On Error GoTo Form_Load_Error

    Calendar1.Day = Day(pdate)
    Calendar1.MONTH = MONTH(pdate)
    Calendar1.Year = Year(pdate)

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form pdate1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub
