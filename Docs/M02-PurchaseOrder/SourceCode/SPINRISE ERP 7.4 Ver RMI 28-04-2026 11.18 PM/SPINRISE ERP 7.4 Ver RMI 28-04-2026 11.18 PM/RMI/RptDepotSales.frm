VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form RptDepotSales 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Depot Stock"
   ClientHeight    =   2925
   ClientLeft      =   3930
   ClientTop       =   3210
   ClientWidth     =   6045
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   2925
   ScaleWidth      =   6045
   ShowInTaskbar   =   0   'False
   Begin VB.Frame EntryFrame 
      Height          =   1965
      Left            =   750
      TabIndex        =   0
      Top             =   375
      Width           =   4605
      Begin Crystal.CrystalReport Crr 
         Left            =   255
         Top             =   1035
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   348160
         PrintFileLinesPerPage=   60
      End
      Begin VB.CommandButton cmdexit 
         Caption         =   "&Exit"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   2400
         TabIndex        =   5
         Top             =   1260
         Width           =   930
      End
      Begin VB.CommandButton cmdreport 
         Caption         =   "&Report"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   990
         TabIndex        =   4
         Top             =   1260
         Width           =   930
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   300
         Left            =   1935
         TabIndex        =   3
         Top             =   630
         Width           =   1395
         _ExtentX        =   2461
         _ExtentY        =   529
         _Version        =   393216
         Format          =   70647809
         CurrentDate     =   39428
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   1065
         TabIndex        =   2
         Top             =   690
         Width           =   420
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Caption"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   -15
         TabIndex        =   1
         Top             =   60
         Width           =   4635
      End
   End
End
Attribute VB_Name = "RptDepotSales"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdexit_Click()
    Unload Me
End Sub

Private Sub cmdreport_Click()
On Error GoTo cmdreport_Click_Error

    Crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\DepotStk.rpt"
    Crr.Connect = connectstring
    Crr.ReportTitle = " Yarn Stock Details As On " & Format(DTPicker1.Value, "dd-MM-yyyy")
    
    Crr.StoredProcParam(0) = Format(DTPicker1.Value, "yyyy-MM-dd")
    Crr.StoredProcParam(1) = Divcode
    Crr.StoredProcParam(2) = DIVNAME
    Crr.WindowState = crptMaximized
    Crr.WindowShowExportBtn = True
    Crr.WindowShowPrintBtn = True
    Crr.WindowShowPrintSetupBtn = True
    Crr.WindowShowRefreshBtn = True
    Crr.WindowShowExportBtn = True
    Crr.Action = 2
    Crr.PrinterCopies = 1

Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure cmdreport_Click of Form RptDepotSales", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

    DTPicker1.Value = Now
    Label4.Caption = "Depot Stock Summary"

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Load of Form RptDepotSales", vbInformation, head
Screen.MousePointer = 0
End Sub
