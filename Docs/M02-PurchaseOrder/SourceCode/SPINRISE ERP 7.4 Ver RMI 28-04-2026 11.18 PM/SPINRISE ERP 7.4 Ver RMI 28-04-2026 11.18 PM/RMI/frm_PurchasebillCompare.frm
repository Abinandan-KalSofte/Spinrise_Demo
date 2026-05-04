VERSION 5.00
Object = "{05BFD3F1-6319-4F30-B752-C7A22889BCC4}#1.0#0"; "AcroPDF.dll"
Begin VB.Form frm_PurchasebillCompare 
   Caption         =   "Purchase Bill Comparison"
   ClientHeight    =   3135
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   11055
   ScaleWidth      =   20370
   StartUpPosition =   3  'Windows Default
   Begin AcroPDFLibCtl.AcroPDF AcroPDF1 
      Height          =   10095
      Left            =   960
      TabIndex        =   0
      Top             =   960
      Width           =   7575
      _cx             =   5080
      _cy             =   5080
   End
End
Attribute VB_Name = "frm_PurchasebillCompare"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim SupplierBillPath As String
Public ERPBillPath As String

Private Sub Form_Load()
'AcroPDF1.LoadFile ERPBillPath
   AcroPDF1.setShowToolbar False
   AcroPDF1.setView ERPBillPath
   'Sets the Layout Mode for a page view according to the specified string.
   'DontCare — use the current user preference
   'SinglePage — use single page mode (as it would have appeared in pre-Acrobat 3.0 viewers)
   'OneColumn — use one-column continuous mode
   'TwoColumnLeft — use two-column continuous mode with the first page on the left
   'TwoColumnRight — use two-column continuous mode with the first page on the right
   AcroPDF1.setLayoutMode "SinglePage"
   
   'Sets the page mode in which a document is to be opened
   'PDDontCare: 0 — leave the view mode as it is
   'PDUseNone: 1 — display without bookmarks or thumbnails
   'PDUseThumbs: 2 — display using thumbnails
   'PDUseBookmarks: 3 — display using bookmarks
   AcroPDF1.setPageMode "none"
   
   'Set the Zoom view according to the value specified. ranges from 0 and onwards
   AcroPDF1.setZoom 75
   
   'Move and Resize the object in relation to its container/form
   With AcroPDF1
      .Move 125, 175, 7800, 8415 'x-position, y-position, width, height
   End With
   
   'Show the Browser Control
   AcroPDF1.Visible = True
End Sub

Private Sub Form_Unload(Cancel As Integer)
 AcroPDF1.LoadFile ""
 
 'Set object to nothing
 ' AcroPDF1. = Nothing
End Sub
