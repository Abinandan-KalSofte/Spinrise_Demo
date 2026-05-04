VERSION 5.00
Object = "{C4847593-972C-11D0-9567-00A0C9273C2A}#8.0#0"; "crviewer.dll"
Begin VB.Form frmRMWL 
   Caption         =   "Raw Metarial"
   ClientHeight    =   7530
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10230
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   7530
   ScaleWidth      =   10230
   Begin CRVIEWERLibCtl.CRViewer CRViewer2 
      Height          =   8670
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   11400
      DisplayGroupTree=   -1  'True
      DisplayToolbar  =   -1  'True
      EnableGroupTree =   0   'False
      EnableNavigationControls=   -1  'True
      EnableStopButton=   -1  'True
      EnablePrintButton=   -1  'True
      EnableZoomControl=   -1  'True
      EnableCloseButton=   -1  'True
      EnableProgressControl=   -1  'True
      EnableSearchControl=   -1  'True
      EnableRefreshButton=   0   'False
      EnableDrillDown =   -1  'True
      EnableAnimationControl=   0   'False
      EnableSelectExpertButton=   0   'False
      EnableToolbar   =   -1  'True
      DisplayBorder   =   0   'False
      DisplayTabs     =   -1  'True
      DisplayBackgroundEdge=   -1  'True
      SelectionFormula=   ""
      EnablePopupMenu =   -1  'True
      EnableExportButton=   -1  'True
      EnableSearchExpertButton=   0   'False
      EnableHelpButton=   0   'False
   End
End
Attribute VB_Name = "frmRMWL"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Dim RMIReport As New rawmaterialweightlist
'
'Private Sub Form_Load()
'Screen.MousePointer = vbHourglass
'CRViewer2.ReportSource = RMIReport
'CRViewer2.ViewReport
'Screen.MousePointer = vbDefault
'End Sub
'
'Private Sub Form_Resize()
'CRViewer2.Top = 0
'CRViewer2.Left = 0
'CRViewer2.Height = ScaleHeight
'CRViewer2.Width = ScaleWidth
'End Sub
'
