VERSION 5.00
Begin VB.Form Frm_quality_setup 
   Caption         =   "Quality Parameters"
   ClientHeight    =   7470
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9540
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   7470
   ScaleWidth      =   9540
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   1
      Top             =   -90
      Width           =   10755
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_quality_setup.frx":0000
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "Frm_quality_setup.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_quality_setup.frx":069D
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "Frm_quality_setup.frx":09A7
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_quality_setup.frx":0D21
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   2
         Left            =   1095
         Picture         =   "Frm_quality_setup.frx":102B
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Delete  (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "Frm_quality_setup.frx":13C7
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "List  (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_quality_setup.frx":175E
         Height          =   510
         Index           =   5
         Left            =   2100
         Picture         =   "Frm_quality_setup.frx":1BA8
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "First Record  (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_quality_setup.frx":1F0D
         Height          =   510
         Index           =   6
         Left            =   2625
         Picture         =   "Frm_quality_setup.frx":2357
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Next Record  (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_quality_setup.frx":26A4
         Height          =   510
         Index           =   7
         Left            =   3150
         Picture         =   "Frm_quality_setup.frx":2AEE
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record  (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_quality_setup.frx":2E3E
         Height          =   510
         Index           =   8
         Left            =   3675
         Picture         =   "Frm_quality_setup.frx":3288
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Last Record  (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_quality_setup.frx":35EA
         Height          =   510
         Index           =   9
         Left            =   4200
         Picture         =   "Frm_quality_setup.frx":38F4
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Save  (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_quality_setup.frx":3C96
         Height          =   510
         Index           =   10
         Left            =   4725
         Picture         =   "Frm_quality_setup.frx":3FA0
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Cancel   (Ctrl BackSpace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_quality_setup.frx":431C
         Height          =   510
         Index           =   11
         Left            =   5235
         Picture         =   "Frm_quality_setup.frx":4766
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Exit  (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Query"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   6660
         TabIndex        =   0
         Top             =   255
         Width           =   615
      End
      Begin VB.Label DATLAB 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DATE"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "d MMMM yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   8565
         TabIndex        =   13
         Top             =   255
         Width           =   630
      End
   End
End
Attribute VB_Name = "Frm_quality_setup"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
