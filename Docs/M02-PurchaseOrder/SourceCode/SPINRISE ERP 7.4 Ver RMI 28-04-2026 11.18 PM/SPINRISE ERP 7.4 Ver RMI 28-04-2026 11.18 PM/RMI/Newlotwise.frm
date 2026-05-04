VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   5265
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   6090
   LinkTopic       =   "Form2"
   ScaleHeight     =   5265
   ScaleWidth      =   6090
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox List1 
      Height          =   840
      Left            =   1920
      TabIndex        =   10
      Top             =   1560
      Width           =   1575
   End
   Begin VB.CommandButton cmdreport 
      Caption         =   "&Report"
      Default         =   -1  'True
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
      Left            =   1440
      TabIndex        =   8
      Top             =   4200
      Width           =   930
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
      Left            =   2640
      TabIndex        =   7
      Top             =   4200
      Width           =   930
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3735
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   5895
      _ExtentX        =   10398
      _ExtentY        =   6588
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "          "
      TabPicture(0)   =   "Newlotwise.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   3345
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   5655
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   345
            Left            =   1680
            TabIndex        =   2
            Top             =   600
            Width           =   1275
            _ExtentX        =   2249
            _ExtentY        =   609
            _Version        =   393216
            Format          =   69664769
            CurrentDate     =   37820
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "To LotNo"
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
            Left            =   600
            TabIndex        =   9
            Top             =   2520
            Width           =   810
         End
         Begin VB.Label Label5 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000002&
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Lotwise Statment"
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
            Left            =   45
            TabIndex        =   6
            Top             =   120
            Width           =   5565
         End
         Begin VB.Label Label3 
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
            Left            =   1080
            TabIndex        =   5
            Top             =   720
            Width           =   420
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Category"
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
            Left            =   720
            TabIndex        =   4
            Top             =   1200
            Width           =   765
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "From LotNo"
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
            Left            =   480
            TabIndex        =   3
            Top             =   2160
            Width           =   990
         End
      End
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
