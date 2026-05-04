VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Frm_Rpt_List 
   Caption         =   "Stock Statement"
   ClientHeight    =   10305
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10845
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   40100.34
   ScaleMode       =   0  'User
   ScaleWidth      =   3.40653e8
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport Crr 
      Left            =   16320
      Top             =   2760
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Frame2 
      Height          =   705
      Left            =   240
      TabIndex        =   4
      Top             =   7920
      Width           =   8505
      Begin VB.CommandButton Command3 
         Caption         =   "Excel"
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
         Left            =   2160
         TabIndex        =   47
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Exit"
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
         Left            =   4320
         TabIndex        =   6
         Top             =   240
         Width           =   975
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Crystal"
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
         Left            =   3240
         TabIndex        =   5
         Top             =   240
         Width           =   975
      End
   End
   Begin VB.Frame Frm_FabricRec 
      Height          =   7845
      Left            =   240
      TabIndex        =   0
      Top             =   0
      Width           =   8475
      Begin VB.CheckBox Check8 
         Caption         =   "All"
         Height          =   195
         Left            =   720
         TabIndex        =   46
         Top             =   3000
         Visible         =   0   'False
         Width           =   525
      End
      Begin VB.Frame Frame1 
         Caption         =   "Freight Bill Paid Detail"
         Height          =   615
         Left            =   1560
         TabIndex        =   40
         Top             =   7200
         Width           =   5655
         Begin VB.OptionButton Option3 
            Caption         =   "Paid Bills"
            Height          =   255
            Left            =   2160
            TabIndex        =   43
            Top             =   240
            Width           =   1455
         End
         Begin VB.OptionButton Option2 
            Caption         =   "ALL"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   480
            TabIndex        =   42
            Top             =   240
            Value           =   -1  'True
            Width           =   1455
         End
         Begin VB.OptionButton Option1 
            Caption         =   "To be Paid Bills"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   9
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   3840
            TabIndex        =   41
            Top             =   240
            Width           =   1695
         End
      End
      Begin VB.CheckBox Check7 
         Caption         =   "Excel"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   7680
         TabIndex        =   37
         Top             =   8100
         Width           =   1125
      End
      Begin VB.CheckBox Check6 
         Caption         =   "All"
         Height          =   195
         Left            =   10680
         TabIndex        =   36
         Top             =   7680
         Width           =   525
      End
      Begin VB.TextBox Text3 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   1560
         TabIndex        =   35
         Top             =   1320
         Width           =   4635
      End
      Begin VB.CheckBox Check5 
         Caption         =   "All"
         Height          =   195
         Left            =   7320
         TabIndex        =   30
         Top             =   7800
         Width           =   525
      End
      Begin VB.TextBox Text2 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   10080
         TabIndex        =   29
         Top             =   3600
         Width           =   3675
      End
      Begin VB.CheckBox Check4 
         Caption         =   "All"
         Height          =   195
         Left            =   720
         TabIndex        =   28
         Top             =   6600
         Width           =   525
      End
      Begin VB.TextBox Text1 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   11280
         TabIndex        =   27
         Top             =   960
         Width           =   3675
      End
      Begin VB.PictureBox Picture3 
         Appearance      =   0  'Flat
         BackColor       =   &H8000000A&
         ForeColor       =   &H80000008&
         Height          =   285
         Left            =   1560
         ScaleHeight     =   255
         ScaleWidth      =   6735
         TabIndex        =   20
         Top             =   600
         Width           =   6765
         Begin VB.OptionButton OptRec 
            Appearance      =   0  'Flat
            BackColor       =   &H8000000A&
            Caption         =   "Supplier wise"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   195
            Index           =   7
            Left            =   4800
            TabIndex        =   48
            Top             =   0
            Value           =   -1  'True
            Width           =   1455
         End
         Begin VB.OptionButton OptRec 
            Appearance      =   0  'Flat
            BackColor       =   &H8000000A&
            Caption         =   "Categorywise"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   195
            Index           =   6
            Left            =   6720
            TabIndex        =   39
            Top             =   0
            Width           =   1455
         End
         Begin VB.OptionButton OptRec 
            Appearance      =   0  'Flat
            BackColor       =   &H8000000A&
            Caption         =   "Stock Ledger"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   195
            Index           =   4
            Left            =   9120
            TabIndex        =   38
            Top             =   0
            Width           =   1455
         End
         Begin VB.OptionButton OptRec 
            Appearance      =   0  'Flat
            BackColor       =   &H8000000A&
            Caption         =   "Station Wise"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   195
            Index           =   2
            Left            =   6840
            TabIndex        =   26
            Top             =   0
            Width           =   1455
         End
         Begin VB.OptionButton OptRec 
            Appearance      =   0  'Flat
            BackColor       =   &H8000000A&
            Caption         =   "Pending List"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   195
            Index           =   1
            Left            =   1800
            TabIndex        =   25
            Top             =   0
            Width           =   2670
         End
         Begin VB.OptionButton OptRec 
            Appearance      =   0  'Flat
            BackColor       =   &H8000000A&
            Caption         =   "Godown Wise"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   195
            Index           =   3
            Left            =   6840
            TabIndex        =   23
            Top             =   0
            Width           =   1455
         End
         Begin VB.OptionButton OptRec 
            Appearance      =   0  'Flat
            BackColor       =   &H8000000A&
            Caption         =   "Bill List"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   195
            Index           =   0
            Left            =   120
            TabIndex        =   22
            Top             =   0
            Width           =   1215
         End
         Begin VB.OptionButton OptRec 
            Appearance      =   0  'Flat
            BackColor       =   &H8000000A&
            Caption         =   "Vareity and Type wise"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   195
            Index           =   5
            Left            =   10560
            TabIndex        =   21
            Top             =   0
            Width           =   2340
         End
      End
      Begin VB.TextBox txt_GodSearch 
         Appearance      =   0  'Flat
         Height          =   285
         Left            =   11280
         TabIndex        =   15
         Top             =   3600
         Width           =   3675
      End
      Begin VB.CheckBox Check3 
         Caption         =   "All"
         Height          =   195
         Left            =   10560
         TabIndex        =   13
         Top             =   3240
         Width           =   525
      End
      Begin VB.CheckBox Check2 
         Caption         =   "All"
         Height          =   195
         Left            =   9720
         TabIndex        =   8
         Top             =   3360
         Width           =   525
      End
      Begin VB.CheckBox Check1 
         Caption         =   "All"
         Height          =   195
         Left            =   10200
         TabIndex        =   2
         Top             =   3240
         Width           =   525
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   330
         Left            =   1560
         TabIndex        =   9
         Top             =   960
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   582
         _Version        =   393216
         Format          =   159907841
         CurrentDate     =   39513
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   330
         Left            =   4920
         TabIndex        =   10
         Top             =   960
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   582
         _Version        =   393216
         Format          =   159907841
         CurrentDate     =   39513
      End
      Begin MSComctlLib.ListView List_Lot 
         Height          =   4005
         Left            =   10440
         TabIndex        =   16
         Top             =   3960
         Width           =   3675
         _ExtentX        =   6482
         _ExtentY        =   7064
         View            =   3
         LabelEdit       =   1
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   10
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Mill Lot No"
            Object.Width           =   2293
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Mill Lot Date"
            Object.Width           =   2646
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Lot Type"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "Category Code"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(5) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   4
            Text            =   "Variety Code"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(6) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   5
            Text            =   "Godown"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(7) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   6
            Text            =   "Receipt Type"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(8) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   7
            Text            =   "LotNo"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(9) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   8
            Text            =   "Lot_Year"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(10) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   9
            Text            =   "Supcd"
            Object.Width           =   0
         EndProperty
      End
      Begin MSComctlLib.ListView List_CAT 
         Height          =   2205
         Left            =   10320
         TabIndex        =   17
         Top             =   1200
         Width           =   3675
         _ExtentX        =   6482
         _ExtentY        =   3889
         View            =   3
         LabelEdit       =   1
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Category"
            Object.Width           =   7938
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Code"
            Object.Width           =   2
         EndProperty
      End
      Begin MSComctlLib.ListView List_RecType 
         Height          =   2205
         Left            =   9960
         TabIndex        =   18
         Top             =   1560
         Width           =   3675
         _ExtentX        =   6482
         _ExtentY        =   3889
         View            =   3
         LabelEdit       =   1
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Receipt Type"
            Object.Width           =   7938
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Code"
            Object.Width           =   1411
         EndProperty
      End
      Begin MSComctlLib.ListView List_Varcode 
         Height          =   2205
         Left            =   11280
         TabIndex        =   19
         Top             =   1320
         Width           =   3675
         _ExtentX        =   6482
         _ExtentY        =   3889
         View            =   3
         LabelEdit       =   1
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Variety Name"
            Object.Width           =   7938
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Code"
            Object.Width           =   2
         EndProperty
      End
      Begin MSComctlLib.ListView List_Supplier 
         Height          =   5445
         Left            =   1560
         TabIndex        =   31
         Top             =   1680
         Width           =   6795
         _ExtentX        =   11986
         _ExtentY        =   9604
         View            =   3
         LabelEdit       =   1
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Name"
            Object.Width           =   7938
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Code"
            Object.Width           =   3528
         EndProperty
      End
      Begin MSComctlLib.ListView List_Godown 
         Height          =   4005
         Left            =   11280
         TabIndex        =   34
         Top             =   3960
         Width           =   3675
         _ExtentX        =   6482
         _ExtentY        =   7064
         View            =   3
         LabelEdit       =   1
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Godown Name"
            Object.Width           =   7938
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Code"
            Object.Width           =   2
         EndProperty
      End
      Begin MSComctlLib.ListView Lt_Division 
         Height          =   1965
         Left            =   1560
         TabIndex        =   44
         Top             =   1560
         Visible         =   0   'False
         Width           =   6795
         _ExtentX        =   11986
         _ExtentY        =   3466
         View            =   3
         LabelEdit       =   1
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   3
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Divison Name"
            Object.Width           =   7938
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Abbr"
            Object.Width           =   3528
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Divison Code"
            Object.Width           =   2540
         EndProperty
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Division"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   360
         TabIndex        =   45
         Top             =   1440
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Variety"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   10320
         TabIndex        =   33
         Top             =   1320
         Width           =   720
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Godown"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   10320
         TabIndex        =   32
         Top             =   3960
         Width           =   765
      End
      Begin VB.Label LBLYarnRecHead 
         Alignment       =   2  'Center
         BackColor       =   &H00800000&
         Caption         =   "Freight Bill List"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   450
         Left            =   0
         TabIndex        =   24
         Top             =   120
         Width           =   8400
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Carrier"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   360
         TabIndex        =   14
         Top             =   1560
         Width           =   675
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Receipt Type"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   9480
         TabIndex        =   12
         Top             =   1560
         Width           =   1260
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "To Date"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   3600
         TabIndex        =   11
         Top             =   960
         Width           =   750
      End
      Begin VB.Label Supplier 
         AutoSize        =   -1  'True
         Caption         =   "Mill Lot"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   8640
         TabIndex        =   7
         Top             =   3960
         Width           =   915
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "From Date"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   240
         TabIndex        =   3
         Top             =   920
         Width           =   990
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   9720
         TabIndex        =   1
         Top             =   1320
         Width           =   900
      End
   End
End
Attribute VB_Name = "Frm_Rpt_List"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Rst1 As New ADODB.Recordset
Dim DB As New ADODB.Connection
Dim bol As Boolean
Dim S1 As String
Dim L_Rec, L_Cat, L_Var, L_Sup, L_God As String
Private Sub Check1_Click()
    bol = True
'    If Check1.value = 1 Then
'        For l = 0 To List1.ListCount - 1
'            List1.selected(l) = True
'        Next
'    Else
'        For l = 0 To List1.ListCount - 1
'            List1.selected(l) = False
'        Next
'    End If

If Check1.value = 1 Then
        For I = 1 To List_CAT.ListItems.Count
          List_CAT.ListItems.Item(I).Checked = True
        Next I
        
Else
        For I = 1 To List_CAT.ListItems.Count '- 1
             List_CAT.ListItems.Item(I).Checked = False
        Next I
End If
    bol = False
    Call load_StockDetailsVar
    intervalMinutes = -1
End Sub

Private Sub Check2_Click()
    bol = True
'    If Check2.value = 1 Then
'        For l = 0 To List2.ListCount - 1
'            List2.selected(l) = True
'        Next
'    Else
'        For l = 0 To List2.ListCount - 1
'            List2.selected(l) = False
'        Next
'    End If
If Check2.value = 1 Then
        For I = 1 To List_RecType.ListItems.Count
          List_RecType.ListItems.Item(I).Checked = True
        Next I
        
    Else
        For I = 1 To List_RecType.ListItems.Count '- 1
             List_RecType.ListItems.Item(I).Checked = False
        Next I
End If
    bol = False
    Call load_StockDetailsCat
  
End Sub

Private Sub AutoLoad()
On Error Resume Next

    load_StockDetailsCat
    Check1.value = 1
    Call Check1_Click
    load_StockDetailsVar
    Check3.value = 1
    Call Check3_Click
    load_StockDetailsSup
    Check4.value = 1
    Call Check4_Click
    load_StockDetailsLot
    Check5.value = 1
    Call Check5_Click
    load_StockDetailsGod
    Check6.value = 1
    Call Check6_Click
    Call Check8_Click
  
End Sub

Private Sub Combo1_Change()
intervalMinutes = -1
End Sub

Private Sub Check3_Click()
If Check3.value = 1 Then
        For I = 1 To List_Varcode.ListItems.Count
          List_Varcode.ListItems.Item(I).Checked = True
        Next I
        
    Else
        For I = 1 To List_Varcode.ListItems.Count '- 1
             List_Varcode.ListItems.Item(I).Checked = False
        Next I
End If
Call load_StockDetailsSup
End Sub

Private Sub Check4_Click()
If Check4.value = 1 Then
        For I = 1 To List_Supplier.ListItems.Count
          List_Supplier.ListItems.Item(I).Checked = True
        Next I
        
    Else
        For I = 1 To List_Supplier.ListItems.Count '- 1
             List_Supplier.ListItems.Item(I).Checked = False
        Next I
End If
'Call load_StockDetailsLot
End Sub

Private Sub Check5_Click()
If Check5.value = 1 Then
        For I = 1 To List_Lot.ListItems.Count
          List_Lot.ListItems.Item(I).Checked = True
        Next I
        
    Else
        For I = 1 To List_Lot.ListItems.Count '- 1
             List_Lot.ListItems.Item(I).Checked = False
        Next I
End If
Call load_StockDetailsGod
End Sub

Private Sub Check6_Click()
If Check6.value = 1 Then
        For I = 1 To List_Godown.ListItems.Count
          List_Godown.ListItems.Item(I).Checked = True
        Next I
        
Else
        For I = 1 To List_Godown.ListItems.Count '- 1
             List_Godown.ListItems.Item(I).Checked = False
        Next I
End If
End Sub

Private Sub Check8_Click()
If Check8.value = 1 Then
        For I = 1 To Lt_Division.ListItems.Count
          Lt_Division.ListItems.Item(I).Checked = True
        Next I
        
Else
        For I = 1 To Lt_Division.ListItems.Count '- 1
             Lt_Division.ListItems.Item(I).Checked = False
        Next I
End If
Call load_catChkListbox
End Sub

Private Sub Command1_Click()

On Error GoTo error_message
       ' Call MonthAdd
        intervalMinutes = -1
      Screen.MousePointer = 11
        L_Dep = ""
        Dim FRgBillStatus As String
        If Option3.value = True Then
        FRgBillStatus = "C"
        ElseIf Option1.value = True Then
        FRgBillStatus = "P"
        Else
        FRgBillStatus = "A"
        End If
         L_Div = ""
         L_Dabbr = ""
         
    If Repindex = 2 Then
      
    
        For I = 1 To Lt_Division.ListItems.Count
    
            If Lt_Division.ListItems.Item(I).Checked = True Then
                sRecCount = Trim(Lt_Division.ListItems(I).SubItems(2))
                sRecCount1 = Trim(Lt_Division.ListItems(I).SubItems(1))
                If L_Div <> "" Then
                    L_Div = L_Div + "," + "" + Trim(sRecCount) + ""
                    L_Dabbr = L_Dabbr + "," + "" + Trim(sRecCount1) + ""
                Else
                    L_Div = "" + Trim(sRecCount) + ""
                    L_Dabbr = "" + Trim(sRecCount1) + ""
                End If
            End If
        Next
    
        If L_Div = "" Then
            MsgBox "Please select Division ", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
    End If
        
        
          '  DB.BeginTrans
            DB.Execute "Delete From  RM_ProductprintDet where Divcode = '" & Divcode & "' and IPadd = '" & LocalIPAdd & "'"
         
            For I = 1 To List_Supplier.ListItems.Count
                If List_Supplier.ListItems.Item(I).Checked Then
                     sRecSupp = Trim(List_Supplier.ListItems(I).SubItems(1))
                     If Repindex = 1 Or Repindex = 111 Then
                         sql = "insert into RM_ProductprintDet(divcode,supcd,IPadd) " & _
                        "  values( '" & Divcode & "','" & Trim(Trim(List_Supplier.ListItems(I).SubItems(1))) & "', '" & LocalIPAdd & "')"
                     ElseIf Repindex = 3 Then
                     
                        sql = "insert into RM_ProductprintDet(divcode,lotno,lotdt,supcd,IPadd) " & _
                        "  values( '" & Divcode & "','" & Trim(Trim(List_Supplier.ListItems(I).SubItems(4))) & "','" & Format(Trim(List_Supplier.ListItems(I).SubItems(1)), "yyyy-mm-dd") & "','" & Trim(Trim(List_Supplier.ListItems(I).SubItems(2))) & "', '" & LocalIPAdd & "')"
                     ElseIf Repindex = 2 Then
                        sql = "insert into RM_ProductprintDet(divcode,varcode,IPadd) " & _
                        "  values( '" & Divcode & "','" & Trim(Trim(List_Supplier.ListItems(I).SubItems(1))) & "', '" & LocalIPAdd & "')"
                     End If
                     DB.Execute sql
                End If
            Next I
           ' DB.CommitTrans
  

            Dim clsCryRpt As New clsCrystal
            If Repindex = 1 Then
                If OptRec(0).value = True Then
                    Set clsCryRpt.cryRept = Cry_Freight_Bill_Trans
                Else
                    Set clsCryRpt.cryRept = Cry_Pending_Freight_Bill_Trans
                End If
            ElseIf Repindex = 3 Then
                If OptRec(0).value = True Then
                    RptOpt = "L"
                    DB.Execute "ksp_MIS_RM_CottonPayRpt '" & Divcode & "'," & "0" & ",'" & Format(DTPicker1.value, "yyyy-MM-dd") & "','" & Format(DTPicker2.value, "yyyy-MM-dd") & "','" & LocalIPAdd & "'"
                ElseIf OptRec(7).value = True Then
                    RptOpt = "S"
                    DB.Execute "ksp_MIS_RM_CottonPayRpt_Sup '" & Divcode & "'," & "0" & ",'" & Format(DTPicker1.value, "yyyy-MM-dd") & "','" & Format(DTPicker2.value, "yyyy-MM-dd") & "','" & LocalIPAdd & "'"
                Else
                    RptOpt = "P"
                    DB.Execute "KSP_MIS_RM_PaymentList '" & Divcode & "','" & Format(DTPicker1.value, "yyyy-MM-dd") & "','" & Format(DTPicker2.value, "yyyy-MM-dd") & "','" & LocalIPAdd & "'"
                End If
                 
                 If OptRec(7).value = True Then
                    Set clsCryRpt.cryRept = Cry_CottonPaymentList_Sup
                 Else
                    Set clsCryRpt.cryRept = Cry_CottonPaymentList
                 End If
            ElseIf Repindex = 111 Then
                If OptRec(0).value = True Then
                    RptOpt = "A"
                    Set clsCryRpt.cryRept = Cry_RMJobOrderList
                Else
                    RptOpt = "A"
                    Set clsCryRpt.cryRept = Cry_RMJobOrderPendingList
                End If
            Else
                Set clsCryRpt.cryRept = Cry_DaywiseIssueList
            End If
            clsCryRpt.CrystalPrint
                
            With Crr
                 .Reset
                 .Connect = connectstring
                 .ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
                 If Repindex = 1 Or Repindex = 111 Then
                  .ParameterFields(0) = "@divcode;" & Divcode
                  .ParameterFields(1) = "@Fdate;" & Format(DTPicker1.value, "yyyy-MM-dd")
                  .ParameterFields(2) = "@tdate;" & Format(DTPicker2.value, "yyyy-MM-dd")
                  .ParameterFields(3) = "@ipAdd;" & Trim(LocalIPAdd)
                  If Repindex = 111 Then
                     .ParameterFields(4) = "@Status;" & Trim(RptOpt)
                  Else
                    If OptRec(0).value = True Then
                          .ParameterFields(4) = "@BillStatus;" & Trim(FRgBillStatus)
                    End If
                  End If
                 ElseIf Repindex = 2 Then
                  .ParameterFields(0) = "@divcode;" & L_Div
                  .ParameterFields(1) = "@DivAbbr;" & L_Dabbr
                  .ParameterFields(2) = "@Fdate;" & Format(DTPicker1.value, "yyyy-MM-dd")
                  .ParameterFields(3) = "@tdate;" & Format(DTPicker2.value, "yyyy-MM-dd")
                  .ParameterFields(4) = "@ipAdd;" & Trim(LocalIPAdd)
                  .ParameterFields(5) = "@PrintDiv;" & Divcode
                 End If
                 If Repindex = 3 Then
                    If Option1.value = True Then
                        .Formulas(0) = "Printopt='" & Trim("C") & "'"
                    ElseIf Option3.value = True Then
                        .Formulas(0) = "Printopt='" & Trim("B") & "'"
                    Else
                        .Formulas(0) = "Printopt='" & Trim("A") & "'"
                    End If
                    .Formulas(1) = "Reportoption='" & Trim(RptOpt) & "'"
                     .Formulas(2) = "UnitName='" & PrUnitName & "'"
                 End If
              
                  SendKeys "{enter}"
                 .WindowState = crptMaximized
                 .WindowShowPrintSetupBtn = True
                 .WindowShowSearchBtn = True
                 .PrinterCopies = 1
                 .Action = 1
                  
             End With
    
     Screen.MousePointer = 0
 
     intervalMinutes = -1
          
          intervalMinutes = -1
 Exit Sub
error_message:
    MsgBox Err.Description
    On Error Resume Next
   ' DB.RollbackTrans
End Sub

Private Sub Command2_Click()
    Unload Me
    intervalMinutes = -1
End Sub

Private Sub Command3_Click()
    If UCase(Trim(CustID)) = "JAT" Then
        Call PUTDATAConsumption_JAT
    Else
        Call PUTDATAConsumption
    End If
End Sub

Private Sub DTPicker1_Change()
If Repindex = 3 Then
Call load_DivisionListbox
Else
Call load_catChkListbox

'AutoLoad
'Call load_StockDetails

'DTPicker2.value = DTPicker1.value
End If
End Sub
Private Sub DTPicker1_CloseUp()
'Call load_catChkListbox
'Call load_StockDetails
'Call load_catChkListbox
'Call load_StockDetails
'If Repindex = 1 Then
'DTPicker2.value = DTPicker1.value
'End If
End Sub


Private Sub DTPicker2_Change()
If Repindex = 3 Then
      Call load_DivisionListbox
Else
    Call load_catChkListbox
End If

'Call AutoLoad
'Call load_StockDetails
'If Repindex = 1 Then
'DTPicker2.value = DTPicker1.value
'End If
End Sub

Private Sub DTPicker2_CloseUp()
'Call load_catChkListbox
'Call load_StockDetails
End Sub

Private Sub Form_Load()
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" + connectstring
    intervalMinutes = -1
    If Repindex = 1 Then
       ' LblHead.Caption = "Allocation List"
     '   Me.Caption = LblHead.Caption
'        Label7.Visible = False
'        DTPicker2.Visible = False
        Me.Caption = "Freight Bill List"
    ElseIf Repindex = 3 Then
        LBLYarnRecHead.Caption = "Supplier Payment List"
        Me.Caption = LBLYarnRecHead.Caption
        List_Supplier.Top = 4000
        Label3.Top = 4000
        Text3.Top = 3600
        Label6.Visible = True
        Lt_Division.Visible = True
        List_Supplier.Height = 3345
        Lt_Division.ColumnHeaders.Clear
        Lt_Division.ColumnHeaders.ADD , , "Supplier Name", 5300, lvwColumnLeft
        Lt_Division.ColumnHeaders.ADD , , "Supplier Code", 2000, lvwColumnCenter
       
       
        List_Supplier.ColumnHeaders.Clear
        List_Supplier.ColumnHeaders.ADD , , "Lot No", 1200, lvwColumnLeft
        List_Supplier.ColumnHeaders.ADD , , "Lot Date", 1200, lvwColumnCenter
        List_Supplier.ColumnHeaders.ADD , , "Supplie Code", 1200, lvwColumnLeft
        List_Supplier.ColumnHeaders.ADD , , "Supplie Name", 4200, lvwColumnCenter
        List_Supplier.ColumnHeaders.ADD , , "Lot No", 10, lvwColumnLeft
        Frame1.Caption = "Payment Option"
        
        Check8.Visible = True
        Label6.Caption = "Supplier"
        Label3.Caption = "Lot No."
        DTPicker1.value = mfdate
        DTPicker2.value = mfdate
   
        Picture3.Visible = True
        OptRec(0).Caption = "Lotwise"
        OptRec(1).Caption = "Payment VoucherDatewise"
        Call load_DivisionListbox
        Option3.Caption = "80% Payment"
        Option1.Caption = "100% Payment"
        
        If UCase(Trim(CustID)) = "JAT" Then
            Command3.Visible = True
        Else
            Command3.Visible = False
        End If
    ElseIf Repindex = 2 Then
        LBLYarnRecHead.Caption = "Consumption List"
        Me.Caption = LBLYarnRecHead.Caption
        Frame1.Caption = ""
        Label3.Caption = "Variety"
        List_Supplier.Top = 4000
        Label3.Top = 4000
        Text3.Top = 3600
        Label6.Visible = True
        Lt_Division.Visible = True
        List_Supplier.Height = 3345
        Command3.Visible = True
        Picture3.Visible = False
        Check8.Visible = True
        Frame1.Visible = True
        Option2.Caption = "Divisionwise"
        Option3.Caption = "Consolidated"
        Option1.Caption = "Monthly"
        
        Call load_DivisionListbox
     ElseIf Repindex = 111 Then
       ' LblHead.Caption = "Allocation List"
     '   Me.Caption = LblHead.Caption
'        Label7.Visible = False
'        DTPicker2.Visible = False
        Me.LBLYarnRecHead = "Job Order List"
        Me.Caption = LBLYarnRecHead.Caption
        OptRec(7).Visible = False
        Frame1.Visible = False
        Command3.Visible = False
        OptRec(0).Caption = "List"
        OptRec(0).value = True
        Label3.Caption = "Vendor"
    End If
            DTPicker1.value = mfdate
        DTPicker2.value = mldate
      '  Call MonthAdd
        Call load_catChkListbox
'        Check1.value = 1
'        Check2.value = 1
       ' Call AutoLoad
      '  Call load_catChkListbox
       ' Call load_StockDetailsCat
    intervalMinutes = -1
End Sub
Private Sub load_catChkListbox()
On Error GoTo DataCombo1_Change_Error
   Screen.MousePointer = 11
    Dim li As ListItem
    Set temprs = New Recordset
    If Repindex = 2 Or Repindex = 3 Then
       L_Rec = ""
    DB.Execute "Delete From  RM_ProductprintDet where Divcode = '" & Divcode & "' and IPadd = '" & LocalIPAdd & "'"
    For I = 1 To Lt_Division.ListItems.Count

        If Lt_Division.ListItems.Item(I).Checked = True Then
            sRecCount = Trim(Lt_Division.ListItems(I).SubItems(1))
            If L_Rec <> "" Then
                L_Rec = L_Rec + "," + "" + Trim(sRecCount) + ""
            Else
                L_Rec = "" + Trim(sRecCount) + ""
            End If
            
            If Repindex = 3 Then
                sql = "insert into RM_ProductprintDet(divcode,supcd,IPadd) " & _
                            "  values( '" & Divcode & "','" & Trim(Trim(Lt_Division.ListItems(I).SubItems(1))) & "', '" & LocalIPAdd & "')"
                
                DB.Execute sql
            End If
        End If
    Next

    If L_Rec = "" Then
       ' MsgBox "Please select Division ", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    End If
   
    If Repindex = 1 Then
        If OptRec(0).value = True Then
            temprs.Open "select distinct a.carcode,c.carname  from RM_FreightBillHD a inner join po_car c on c.CARCODE=a.Carcode  inner join fa_slmas b on a.slcode=b.slcode where a.divcode='" & Divcode & "' and a.docdt between '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' and '" & Format(DTPicker2.value, "YYYY-MM-DD") & "' Order by c.carname ", DB, adOpenStatic, adLockBatchOptimistic
        Else
            temprs.Open "select distinct a.carcode,a.carname  from Vw_RM_PendingFreightBill a   where a.divcode='" & Divcode & "' and a.Pndate between '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' and '" & Format(DTPicker2.value, "YYYY-MM-DD") & "' Order by a.carname ", DB, adOpenStatic, adLockBatchOptimistic
        End If
    ElseIf Repindex = 2 Then
            If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
'                temprs.Open "select distinct a.varcode carcode,b.varname carname  from (select varcode,Divcode from PALLAVAA..rm_issb a where  a.docdt between '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' and '" & Format(DTPicker2.value, "YYYY-MM-DD") & "' union all select varcode,Divcode from sricheran..rm_issb a where  a.docdt between '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' and '" & Format(DTPicker2.value, "YYYY-MM-DD") & "'  )a inner join rm_var b on a.varcode=b.varcode inner join pp_Divmas d on d.Divcode=a.Divcode where d.abbr in (select items from dbo.split('" & L_Rec & "',',')) Order by b.varname ", DB, adOpenStatic, adLockBatchOptimistic ''SASI 070423
                temprs.Open "select distinct a.varcode carcode,b.varname carname  from (select varcode,Divcode from rm_issb a where  a.docdt between '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' and '" & Format(DTPicker2.value, "YYYY-MM-DD") & "'  )a inner join rm_var b on a.varcode=b.varcode inner join pp_Divmas d on d.Divcode=a.Divcode where d.abbr in (select items from dbo.split('" & L_Rec & "',',')) Order by b.varname ", DB, adOpenStatic, adLockBatchOptimistic
'                temprs.Open "select distinct a.varcode carcode,b.varname carname  from (select varcode,Divcode from pallavaa..rm_issb a where  a.docdt between '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' and '" & Format(DTPicker2.value, "YYYY-MM-DD") & "' )a inner join rm_var b on a.varcode=b.varcode inner join pp_Divmas d on d.Divcode=a.Divcode where d.abbr in (select items from dbo.split('" & L_Rec & "',',')) Order by b.varname ", DB, adOpenStatic, adLockBatchOptimistic
            Else
                temprs.Open "select distinct a.varcode carcode,b.varname carname  from rm_issb a inner join rm_var b on a.varcode=b.varcode inner join pp_Divmas d on d.Divcode=a.Divcode where d.abbr in (select items from dbo.split('" & L_Rec & "',',')) Order by b.varname ", DB, adOpenStatic, adLockBatchOptimistic
            End If
    ElseIf Repindex = 3 Then
        If OptRec(0).value = True Then
            temprs.Open "select distinct a.lotno carname ,a.lotdt carcode,isnull(sl.slname ,'') slname,isnull(a.supcd,'') slcode from rm_lot a left join fa_slmas sl on sl.slcode=a.supcd inner join RM_ProductprintDet c on c.supcd=a.supcd and c.divcode=a.divcode and IPadd = '" & LocalIPAdd & "'  where a.lottype='A' and a.divcode='" & Divcode & "'  and a.lotdt between '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' and '" & Format(DTPicker2.value, "YYYY-MM-DD") & "' order by a.lotdt,a.lotno ", DB, adOpenStatic, adLockBatchOptimistic
        Else
            temprs.Open "select distinct a.lotno carname ,a.lotdt carcode,isnull(sl.slname ,'') slname,isnull(a.supcd,'') slcode from rm_lot a inner join FA_APDBTL ap on ap.refvocno=a.pjno and ap.refvocdt=a.pjdt and ap.reftc=a.pjtc and ap.divcode=a.divcode and ap.slcode=a.supcd left join fa_slmas sl on sl.slcode=a.supcd inner join RM_ProductprintDet c on c.supcd=a.supcd and c.divcode=a.divcode and IPadd = '" & LocalIPAdd & "'  where a.lottype='A' and a.divcode='" & Divcode & "'  and ap.vocdt between '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' and '" & Format(DTPicker2.value, "YYYY-MM-DD") & "' order by a.lotdt,a.lotno ", DB, adOpenStatic, adLockBatchOptimistic
        End If
    ElseIf Repindex = 111 Then
        temprs.Open "select distinct isnull(sl.slname ,'') carname,isnull(a.slcode,'') carcode from RM_JobOrderHD a  left join fa_slmas sl on sl.slcode=a.slcode  where a.divcode='" & Divcode & "'  and a.docDate between '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' and '" & Format(DTPicker2.value, "YYYY-MM-DD") & "' order by isnull(sl.slname ,'')", DB, adOpenStatic, adLockBatchOptimistic
    End If
  
    List_Supplier.ListItems.Clear
    If temprs.RecordCount > 0 Then
        Do While Not temprs.EOF
            If Repindex = 3 Then
                Set l1 = List_Supplier.ListItems.ADD(, , temprs!carname)
                List_Supplier.ListItems(List_Supplier.ListItems.Count).ListSubItems.ADD , , temprs!carcode
                List_Supplier.ListItems(List_Supplier.ListItems.Count).ListSubItems.ADD , , temprs!slcode
                List_Supplier.ListItems(List_Supplier.ListItems.Count).ListSubItems.ADD , , temprs!sLname
                List_Supplier.ListItems(List_Supplier.ListItems.Count).ListSubItems.ADD , , temprs!carname
            Else
                 Set l1 = List_Supplier.ListItems.ADD(, , temprs!carname)
                List_Supplier.ListItems(List_Supplier.ListItems.Count).ListSubItems.ADD , , temprs!carcode
            End If
            temprs.MoveNext
        Loop
    End If
    temprs.Close
            
    Check4.value = 1
    Call Check4_Click
    

    intervalMinutes = -1
    
       Screen.MousePointer = 0
 Exit Sub
DataCombo1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Rec list of Form Stock Statement", vbInformation, head
    Screen.MousePointer = 0
    
End Sub



Private Sub load_StockDetailsCat()
    On Error GoTo DataCombo1_Change_Error
'    Set DataCombo2.RowSource = Nothing
'    Set DataCombo3.RowSource = Nothing
'    DataCombo2.Text = ""
'    DataCombo3.Text = ""
            
    If bol Then Exit Sub
    
    L_Rec = ""
    
    For I = 1 To List_RecType.ListItems.Count

        If List_RecType.ListItems.Item(I).Checked = True Then
            sRecCount = Trim(List_RecType.ListItems(I).SubItems(1))
            If L_Rec <> "" Then
                L_Rec = L_Rec + "," + "'" + Trim(sRecCount) + "'"
            Else
                L_Rec = "'" + Trim(sRecCount) + "'"
            End If
        End If
    Next

'    If L_Rec = "" Then
'        MsgBox "Please select Receipt Type", vbInformation, head
'        Exit Sub
'    End If

    
    If L_Rec <> "" Then
            Set temprs = New Recordset
            If Repindex = 1 Then
              temprs.Open "select DISTINCT a.catcd,b.Catname  from rm_lot a inner join rm_cat b on a.catcd=b.catcd where LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE ='" & Divcode & "' and (transfertype in (" & L_Rec & ") or lottype  in (" & L_Rec & ") ) order by b.Catname ", DB, adOpenForwardOnly, adLockReadOnly
            End If
          
            List_CAT.ListItems.Clear
            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                    Set l1 = List_CAT.ListItems.ADD(, , temprs!catname)
                    List_CAT.ListItems(List_CAT.ListItems.Count).ListSubItems.ADD , , temprs!catcd
                    temprs.MoveNext
                Loop
            End If
            temprs.Close
           
    End If
    
    
    Check1.value = 0
    Check3.value = 0
    Check4.value = 0
    Check5.value = 0
    Check6.value = 0
    
    
    
    Exit Sub
  
    intervalMinutes = -1
    
Exit Sub
DataCombo1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure category of Form Stock Statement", vbInformation, head
    Screen.MousePointer = 0
 
End Sub
Private Sub load_StockDetailsVar()
On Error GoTo DataCombo1_Change_Error
            L_Cat = ""
            For I = 1 To List_CAT.ListItems.Count
        
                If List_CAT.ListItems.Item(I).Checked = True Then
                    sRecCount = Trim(List_CAT.ListItems(I).SubItems(1))
                    If L_Cat <> "" Then
                        L_Cat = L_Cat + "," + "'" + Trim(sRecCount) + "'"
                    Else
                        L_Cat = "'" + Trim(sRecCount) + "'"
                    End If
                End If
            Next
            
            If L_Cat <> "" And L_Rec <> "" Then
              Set temprs = New Recordset
              If Repindex = 1 Then
                temprs.Open "select DISTINCT a.varcode,b.varname  from rm_lot a inner join rm_var b on a.varcode=b.varcode where LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE ='" & Divcode & "' and a.catcd in (" & L_Cat & ") and (transfertype in (" & L_Rec & ") or lottype  in (" & L_Rec & ") ) order by b.varname ", DB, adOpenForwardOnly, adLockReadOnly
              End If
            
              List_Varcode.ListItems.Clear
              If temprs.RecordCount > 0 Then
                  Do While Not temprs.EOF
                      Set l1 = List_Varcode.ListItems.ADD(, , temprs!VarName)
                      List_Varcode.ListItems(List_Varcode.ListItems.Count).ListSubItems.ADD , , temprs!Varcode
                      temprs.MoveNext
                  Loop
              End If
              temprs.Close
            End If
            
            
    Check3.value = 0
    Check4.value = 0
    Check5.value = 0
    Check6.value = 0
   Exit Sub
DataCombo1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure variety of Form Stock Statement", vbInformation, head
    Screen.MousePointer = 0
          
End Sub


Private Sub load_StockDetailsSup()
On Error GoTo DataCombo1_Change_Error
      L_Var = ""
            For I = 1 To List_Varcode.ListItems.Count
        
                If List_Varcode.ListItems.Item(I).Checked = True Then
                    sRecCount = Trim(List_Varcode.ListItems(I).SubItems(1))
                    If L_Var <> "" Then
                        L_Var = L_Var + "," + "'" + Trim(sRecCount) + "'"
                    Else
                        L_Var = "'" + Trim(sRecCount) + "'"
                    End If
                End If
            Next
            
            If L_Rec <> "" And L_Cat <> "" And L_Var <> "" Then
              Set temprs = New Recordset
              If Repindex = 1 Then
                temprs.Open "select DISTINCT a.supcd,b.slname  from rm_lot a inner join fa_slmas b on a.supcd=b.slcode where LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE ='" & Divcode & "'   and  a.varcode in (" & L_Var & ") and a.catcd in (" & L_Cat & ") and (transfertype in (" & L_Rec & ") or lottype  in (" & L_Rec & ") ) order by b.slname ", DB, adOpenForwardOnly, adLockReadOnly
              End If
            
              List_Supplier.ListItems.Clear
              If temprs.RecordCount > 0 Then
                  Do While Not temprs.EOF
                      Set l1 = List_Supplier.ListItems.ADD(, , temprs!sLname)
                      List_Supplier.ListItems(List_Supplier.ListItems.Count).ListSubItems.ADD , , temprs!SUPCD
                      temprs.MoveNext
                  Loop
              End If
              temprs.Close
            End If
            
    
    Check4.value = 0
    Check5.value = 0
    Check6.value = 0
    
Exit Sub
DataCombo1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Supplier of Form Stock Statement", vbInformation, head
    Screen.MousePointer = 0
 
            
End Sub

Private Sub load_StockDetailsLot()
On Error GoTo DataCombo1_Change_Error


'    If L_Rec = "" Then
'        MsgBox "Please select Receipt Type", vbInformation, head
'        Exit Sub
'    End If
'    If L_Cat = "" Then
'        MsgBox "Please Select Category ", vbInformation, head
'        Exit Sub
'    End If
'
'    If L_Var = "" Then
'        MsgBox "Please select Variety ", vbInformation, head
'        Exit Sub
'    End If
    


      L_Sup = ""
            For I = 1 To List_Supplier.ListItems.Count
        
                If List_Supplier.ListItems.Item(I).Checked = True Then
                    sRecCount = Trim(List_Supplier.ListItems(I).SubItems(1))
                    If L_Sup <> "" Then
                        L_Sup = L_Sup + "," + "'" + Trim(sRecCount) + "'"
                    Else
                        L_Sup = "'" + Trim(sRecCount) + "'"
                    End If
                End If
            Next
            
            
            
            
            
            
            If L_Rec <> "" And L_Cat <> "" And L_Var <> "" And L_Sup <> "" Then
              Set temprs = New Recordset
              If Repindex = 1 Then
                temprs.Open "select DISTINCT a.lotno,lotdt ,isnull(varcode,'') varcode,isnull(supcd,'') supcd,isnull(lottype,'') lottype,isnull(transfertype,'') transfertype,isnull( GODOWN,'') GODOWN,isnull(catcd,'') catcd ,isnull(lotyear,0) lotyear  from rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE ='" & Divcode & "' and a.supcd in (" & L_Sup & ")   and  a.varcode in (" & L_Var & ") and a.catcd in (" & L_Cat & ") and (transfertype in (" & L_Rec & ") or lottype  in (" & L_Rec & ") ) order by a.lotno ", DB, adOpenForwardOnly, adLockReadOnly
              End If
            
              List_Lot.ListItems.Clear
              If temprs.RecordCount > 0 Then
                  Do While Not temprs.EOF
                      Set l1 = List_Lot.ListItems.ADD(, , temprs!lotno)
                      List_Lot.ListItems(List_Lot.ListItems.Count).ListSubItems.ADD , , temprs!LOTDT
                      List_Lot.ListItems(List_Lot.ListItems.Count).ListSubItems.ADD , , temprs!lottype
                      List_Lot.ListItems(List_Lot.ListItems.Count).ListSubItems.ADD , , temprs!catcd
                      List_Lot.ListItems(List_Lot.ListItems.Count).ListSubItems.ADD , , temprs!Varcode
                      List_Lot.ListItems(List_Lot.ListItems.Count).ListSubItems.ADD , , temprs!godown
                      List_Lot.ListItems(List_Lot.ListItems.Count).ListSubItems.ADD , , temprs!transfertype
                      List_Lot.ListItems(List_Lot.ListItems.Count).ListSubItems.ADD , , temprs!lotno
                      List_Lot.ListItems(List_Lot.ListItems.Count).ListSubItems.ADD , , temprs!lotyear
                      List_Lot.ListItems(List_Lot.ListItems.Count).ListSubItems.ADD , , temprs!SUPCD
                      temprs.MoveNext
                  Loop
              End If
              temprs.Close
            End If
 
    Check5.value = 0
    Check6.value = 0
    
Exit Sub
DataCombo1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lot of Form Stock Statement", vbInformation, head
    Screen.MousePointer = 0
     
End Sub


Private Sub load_StockDetailsGod()
On Error GoTo DataCombo1_Change_Error

'    If L_Rec = "" Then
'        MsgBox "Please select Receipt Type", vbInformation, head
'        Exit Sub
'    End If
'    If L_Cat = "" Then
'        MsgBox "Please Select Category ", vbInformation, head
'        Exit Sub
'    End If
'
'    If L_Var = "" Then
'        MsgBox "Please select Variety ", vbInformation, head
'        Exit Sub
'    End If
'
'    If L_Sup = "" Then
'        MsgBox "Please Select Supplier ", vbInformation, head
'        Exit Sub
'    End If
'
      L_lot = ""
      
            For I = 1 To List_Lot.ListItems.Count
        
                If List_Lot.ListItems.Item(I).Checked = True Then
                    sRecCount = Trim(List_Lot.ListItems(I).SubItems(7))
                    If L_lot <> "" Then
                        L_lot = L_lot + "," + "'" + Trim(sRecCount) + "'"
                    Else
                        L_lot = "'" + Trim(sRecCount) + "'"
                    End If
                End If
            Next
            
'    If L_lot = "" Then
'        MsgBox "Please Select Lot Nos.", vbInformation, head
'        Exit Sub
'    End If
'
            If L_lot <> "" And L_Rec <> "" And L_Cat <> "" And L_Var <> "" And L_Sup <> "" Then
              If Repindex = 1 Then
                Set temprs = New Recordset
                    If OptRec(2).value = True Then
                        List_Godown.ColumnHeaders(1).Text = "Station Name"
                        List_Godown.ColumnHeaders(2).Text = "Station Code"
                        temprs.Open "select DISTINCT a.AREACD GODOWN,b.areaname gname from rm_lot a inner join rm_area b on b.areacode=a.AREACD where LOTYEAR='" & Year(yfdate) & "' and lotno in (" & L_lot & ") AND a.DIVCODE ='" & Divcode & "' and a.supcd in (" & L_Sup & ")   and  a.varcode in (" & L_Var & ") and a.catcd in (" & L_Cat & ") and (transfertype in (" & L_Rec & ") or lottype  in (" & L_Rec & ") ) order by b.areaname ", DB, adOpenForwardOnly, adLockReadOnly
                     Else
                        List_Godown.ColumnHeaders(1).Text = "Godown Name"
                        List_Godown.ColumnHeaders(2).Text = "Godown Code"
                        temprs.Open "select DISTINCT a.GODOWN,b.gname from rm_lot a inner join rm_god b on b.gcode=a.GODOWN where LOTYEAR='" & Year(yfdate) & "' and lotno in (" & L_lot & ") AND a.DIVCODE ='" & Divcode & "' and a.supcd in (" & L_Sup & ")   and  a.varcode in (" & L_Var & ") and a.catcd in (" & L_Cat & ") and (transfertype in (" & L_Rec & ") or lottype  in (" & L_Rec & ") ) order by b.gname ", DB, adOpenForwardOnly, adLockReadOnly
                    End If
                       List_Godown.ListItems.Clear
                       If temprs.RecordCount > 0 Then
                           Do While Not temprs.EOF
                               Set l1 = List_Godown.ListItems.ADD(, , temprs!GNAME)
                               List_Godown.ListItems(List_Godown.ListItems.Count).ListSubItems.ADD , , temprs!godown
                    
                               temprs.MoveNext
                           Loop
                       End If
                     temprs.Close
                     Check6.value = 1
                     Call Check6_Click
             End If
            End If
            


    'Check6.value = 0
   Exit Sub
DataCombo1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Godown of Form Stock Statement", vbInformation, head
    Screen.MousePointer = 0
          
End Sub


Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub List1_Click()
    If Repindex = 1 Then
       ' Check1.value = 0
       bol = False
'        Call load_StockDetails
        
    End If
    
End Sub

Private Sub List2_Click()
 If Repindex = 1 Then
       ' Check2.value = 0
       bol = False
'        Call load_StockDetails
    End If
End Sub

Private Sub List_CAT_Click()
Call load_StockDetailsVar

End Sub

Private Sub List_Dep_Click()

'Call load_StockDetails

End Sub

Private Sub List_Supplier_Click()
'Call load_StockDetailsLot

End Sub
Private Sub List_Varcode_Click()
Call load_StockDetailsSup

End Sub
'
'Private Sub Option1_Click()
'
'     If Repindex = 1 Then
'        Load_Category
'        Call load_StockDetails
'    End If
'    intervalMinutes = -1
'End Sub
'
'Private Sub Option2_Click()
'        Load_Category
'        Call load_StockDetails
'        intervalMinutes = -1
'
'End Sub
'
'Private Sub Option3_Click()
'
'        Load_Category
'        Check1.value = 1
'        Call Check1_Click
'        Call load_StockDetails
'        intervalMinutes = -1
'End Sub

Private Sub Option8_Click()
'If Option8.value Then
'    Label7.Visible = True
'    Text1.Visible = True
'   ' Text1.Text = "10"
'Else
'    Label7.Visible = False
'    Text1.Visible = False
'    Text1.Text = ""
'
'End If

End Sub

Private Sub MonthDate(MM As String)

On Error GoTo monthadd1_Error

MM = UCase(MM)
If MM = "APRIL" Then
       S1 = Format(yfdate, "yyyy") & "04"
       Mo = "01/04/" & Format(yfdate, "yyyy")
       Mol = "30/04/" & Format(yfdate, "yyyy")
    ElseIf MM = "MAY" Then
       S1 = Format(yfdate, "yyyy") & "05"
       Mo = "01/05/" & Format(yfdate, "yyyy")
       Mol = "31/05/" & Format(yfdate, "yyyy")
    ElseIf MM = "JUNE" Then
       S1 = Format(yfdate, "yyyy") & "06"
       Mo = "01/06/" & Format(yfdate, "yyyy")
       Mol = "30/06/" & Format(yfdate, "yyyy")
    ElseIf MM = "JULY" Then
       S1 = Format(yfdate, "yyyy") & "07"
       Mo = "01/07/" & Format(yfdate, "yyyy")
       Mol = "31/07/" & Format(yfdate, "yyyy")
    ElseIf MM = "AUGUST" Then
       S1 = Format(yfdate, "yyyy") & "08"
       Mo = "01/08/" & Format(yfdate, "yyyy")
       Mol = "31/08/" & Format(yfdate, "yyyy")
    ElseIf MM = "SEPTEMBER" Then
       S1 = Format(yfdate, "yyyy") & "09"
       Mo = "01/09/" & Format(yfdate, "yyyy")
       Mol = "30/09/" & Format(yfdate, "yyyy")
    ElseIf MM = "OCTOBER" Then
       S1 = Format(yfdate, "yyyy") & "10"
       Mo = "01/10/" & Format(yfdate, "yyyy")
       Mol = "31/10/" & Format(yfdate, "yyyy")
    ElseIf MM = "NOVEMBER" Then
       S1 = Format(yfdate, "yyyy") & "11"
       Mo = "01/11/" & Format(yfdate, "yyyy")
       Mol = "30/11/" & Format(yfdate, "yyyy")
    ElseIf MM = "DECEMBER" Then
       S1 = Format(yfdate, "yyyy") & "12"
       Mo = "01/12/" & Format(yfdate, "yyyy")
       Mol = "31/12/" & Format(yfdate, "yyyy")
    ElseIf MM = "JANUARY" Then
       S1 = Format(yldate, ("yyyy")) & "01"
       Mo = "01/01/" & Format(yldate, "yyyy")
       Mol = "31/01/" & Format(yldate, "yyyy")
    ElseIf MM = "FEBRUARY" Then
       S1 = Format(yldate, ("yyyy")) & "02"
       Mo = "01/02/" & Format(yldate, "yyyy")
       Mol = Day(Mo) & "/02/" & Format(yldate, "yyyy")
    ElseIf MM = "MARCH" Then
       S1 = Format(yldate, ("yyyy")) & "03"
       Mo = "01/03/" & Format(yldate, "yyyy")
       Mol = "31/03/" & Format(yldate, "yyyy")
    End If

Exit Sub
monthadd1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MonthAdd1 of Form Paramrep1", vbInformation, head
    Screen.MousePointer = 0

End Sub



Private Sub Paystatement()
On Error GoTo BUTTON_Click_Error
Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim Rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant

CustCode = "": custname = "": ContNo = "": sortname = ""
'If Val(Myxl.Application.Version) >= 8 Then
     '   Set osheet = Myxl.ActiveSheet
    'Else
      '  Set osheet = Myxl
    'End If
     'Set osheet = Myxl.ActiveSheet
 tmpFile = "Salary Statement"
tmppath1 = KALFOLDERDATA & tmpFile & ".xls"
'If Check1.value Then
'Set oExcel = CreateObject("ket.Application")
'Else '
Set oExcel = CreateObject("Excel.Application")

'End If
Set oBook = oExcel.Workbooks.ADD
Set osheet = oBook.Worksheets(1)

    oExcel.Visible = True
    Set osheet = oBook.Worksheets(1)
   oExcel.Visible = True
    
        Dim fd As String
        Dim td As String

        Dim stryear As String
        Set Rs = New Recordset
        Rs.Open "select AYEAR from pp_year where  '" & Format(yfdate, "yyyy-mm-dd") & "' between  ayfdate and AYLDATE ", DB
        If Not Rs.EOF Then
            stryear = Rs(0)
        End If
        
        Set Rs = New Recordset
        Rs.Open "select divname ,unit_name from pp_divmas where divcode='" & Divcode & "'", DB
        
        
        osheet.Cells(1, 5).value = Rs(0)
        osheet.Range("A1", "AC1").MergeCells = True
         osheet.Range("A1", "AC1").HorizontalAlignment = Excel.xlCenter
        With osheet.Range("A1").Font
        .Bold = True
        .Size = 16
        .Color = vbBlue
        End With
        
'        oSheet.Cells(2, 5).value = UCase(rs(1))
'        oSheet.Range("A2", "U2").MergeCells = True
'        oSheet.Range("A2", "U2").HorizontalAlignment = Excel.xlCenter
'        With oSheet.Range("A2").Font
'        .Bold = True
'        .Size = 10
'        .Color = vbBlue
'        End With
    
      
        osheet.Name = "Salary Statement"
      
        osheet.Cells(3, 5).value = "Salary Statement for the month of " & Combo1.Text & " " & Right(yfdate, 4)
        osheet.Range("A3", "AC3").HorizontalAlignment = Excel.xlCenter
        osheet.Range("A3", "AC3").MergeCells = True
        With osheet.Range("A3", "AC3").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        
        
            a = Mid(DataCombo1.Text, 1, 2)
    B = Mid(DataCombo2.Text, 1, 2)
    c = Mid(DataCombo3.Text, InStr(1, DataCombo3.Text, "-") + 1)
    d = Mid(DataCombo4.Text, InStr(1, DataCombo4.Text, "-") + 1)
    Stra = Trim(Mid(DataCombo1.Text, InStr(DataCombo1.Text, "-") + 1, Len(DataCombo1.Text)))
    Strb = Trim(Mid(DataCombo2.Text, InStr(DataCombo1.Text, "-") + 1, Len(DataCombo1.Text)))
             '  Cattype = Right(Trim(cmbcattype.Text), 1)
        
             ''Dim salType As String
'            If optbank.value Then
'                salType = "B"
'             ElseIf optcash.value Then
'                salType = "C"
'             Else
'                salType = "A"
'            End If
'
'            If Option11.value Then
'                uanType = "Y"
'             ElseIf Option10.value Then
'                uanType = "N"
'             Else
'                uanType = "A"
'            End If
        Set Rst = New Recordset
        Rst.Open "select distinct Colhead,sno from  Pr_Salaryhead order by sno ", DB, adOpenStatic
        I = 1
        Dim TotCol As Integer
        TotCol = 0
        Do While Not Rst.EOF
            osheet.Cells(5, I).value = Rst(0)
           ' oSheet.Cells(6, i).CopyFromRecordset Rst

            TotCol = TotCol + 1
            I = I + 1
        Rst.MoveNext
        Loop
        
                m_ROW = osheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "AC" & m_ROW
                With osheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                osheet.Range(lr, HR).Columns.AutoFit
                osheet.Range(lr, HR).Rows.AutoFit


           
        Set Rs = New Recordset
        Rs.Open "select count( Colhead) from  Pr_Salaryhead  ", DB, adOpenStatic
        TotCol = Rs(0)
        Set Rs = New Recordset
'        If chkdep.value = 1 Then
'
'        rs.Open "exec KSP_SalaryStatementExcel '" & divcode & "','" & a & "','" & b & "','" & C & "','" & d & "','" & S1 & "','" & chkot.value & "','D','" & Trim(Cattype) & "','" & salType & "','" & uanType & "'", Db, adOpenStatic
'        Else
'        rs.Open "exec KSP_SalaryStatementExcel '" & divcode & "','" & a & "','" & b & "','" & C & "','" & d & "','" & S1 & "','" & chkot.value & "','C','" & Trim(Cattype) & "','" & salType & "','" & uanType & "'", Db, adOpenStatic
'        End If


          
         L_Cat = ""
         
'       If Check1.value Then
'        L_Cat = "A"
'       Else
         For l = 0 To List1.ListCount - 1
             If List1.Selected(l) = True Then
                 If L_Cat <> "" Then
                     L_Cat = L_Cat + "," + Trim(Mid(List1.List(l), 1, InStr(List1.List(l), "-") - 1))
                 Else
                     L_Cat = Trim(Mid(List1.List(l), 1, InStr(List1.List(l), "-") - 1))
                 End If
             End If
         Next l
'       End If
       
       
        L_Dep = ""
'       If Check2.value Then
'        L_Dep = "A"
'       Else
         For l = 0 To List2.ListCount - 1
             If List2.Selected(l) = True Then
                 If L_Dep <> "" Then
                     L_Dep = L_Dep + "," + Trim(Mid(List2.List(l), 1, InStr(List2.List(l), "-") - 1))
                 Else
                     L_Dep = Trim(Mid(List2.List(l), 1, InStr(List2.List(l), "-") - 1))
                 End If
             End If
         Next l
         
         
         
         
'       End If


      L_Bank = ""
'       If Check2.value Then
'        L_Dep = "A"
'       Else
         For l = 0 To List3.ListCount - 1
             If List3.Selected(l) = True Then
                 If L_Bank <> "" Then
                     L_Bank = L_Bank + "," + Trim(Mid(List3.List(l), 1, InStr(List3.List(l), "-") - 1))
                 Else
                     L_Bank = Trim(Mid(List3.List(l), 1, InStr(List3.List(l), "-") - 1))
                 End If
             End If
         Next l
       
       
         
           a = Mid(DataCombo1.Text, 1, 2)
          B = Mid(DataCombo2.Text, InStr(1, DataCombo2.Text, "-") + 1)
          c = Mid(DataCombo3.Text, InStr(1, DataCombo3.Text, "-") + 1)
          d = Mid(DataCombo4.Text, InStr(1, DataCombo4.Text, "-") + 1)
            Stra = Trim(Mid(DataCombo1.Text, InStr(DataCombo1.Text, "-") + 1, Len(DataCombo1.Text)))
            Strb = Trim(Mid(DataCombo2.Text, InStr(DataCombo2.Text, "-") + 1, Len(DataCombo2.Text)))
        
        Set Rs = New Recordset
            Rs.Open " SELECT wcat FROM pr_wcat WHERE (wcat in (select items from dbo.split ('" & L_Cat & "',',')) or '" & L_Cat & "'='A') AND isnull(STAFF_TYPE,'')='S'", DB, adOpenForwardOnly, adLockReadOnly
        
        If Rs.EOF = False Then
            strhead = "Salary Statement "
        Else
            strhead = "Wages Statement "
        End If
        Rs.Close
        
'        If C > d Then
'             MsgBox " No Records Found  Employee Selection Invalid ", vbInformation, head
'             Screen.MousePointer = 0
'             Exit Sub
'        End If
   Dim StrEmpType As String
   
   Dim rsrec As Recordset
   Set rsrec = New Recordset
   
   If Option6.value Then
    StrEmpType = "Left"
   ElseIf Option5.value Then
    StrEmpType = "New"
   ElseIf Option7.value Then
    StrEmpType = "Live"
   ElseIf Option8.value Then
    StrEmpType = "Leave"
   Else
    StrEmpType = "ALL"
   End If
   
        If rsrec.State = adStateOpen Then rsrec.Close
             
        
       ' Rsrec.Open " Exec KSP_SalarySTNew '" & divcode & "'," & S1 & ",'" & L_Cat & "','" & b & "','" & C & "','" & L_Dep & "'", Db, adOpenKeyset, adLockReadOnly
  
        
        Set RsDiv = New Recordset
            RsDiv.Open "Select * From pp_divmas where divcode='" & Divcode & "'", DB, adOpenDynamic, adLockOptimistic
      
        Dim clsCryRptSaStmt As New clsCrystal
        
        Dim sType As String
        If Option1.value Then
        sType = "S"
        ElseIf Option2.value Then
        sType = "W"
        Else
        
        sType = "A"
        End If
        
        
            
'MonthDate (Combo1.Text)
 
MM = UCase(Combo1.Text)
If MM = "APRIL" Then
       S1 = Format(yfdate, "yyyy") & "04"
       Mo = "01/04/" & Format(yfdate, "yyyy")
       Mol = "30/04/" & Format(yfdate, "yyyy")
    ElseIf MM = "MAY" Then
       S1 = Format(yfdate, "yyyy") & "05"
       Mo = "01/05/" & Format(yfdate, "yyyy")
       Mol = "31/05/" & Format(yfdate, "yyyy")
    ElseIf MM = "JUNE" Then
       S1 = Format(yfdate, "yyyy") & "06"
       Mo = "01/06/" & Format(yfdate, "yyyy")
       Mol = "30/06/" & Format(yfdate, "yyyy")
    ElseIf MM = "JULY" Then
       S1 = Format(yfdate, "yyyy") & "07"
       Mo = "01/07/" & Format(yfdate, "yyyy")
       Mol = "31/07/" & Format(yfdate, "yyyy")
    ElseIf MM = "AUGUST" Then
       S1 = Format(yfdate, "yyyy") & "08"
       Mo = "01/08/" & Format(yfdate, "yyyy")
       Mol = "31/08/" & Format(yfdate, "yyyy")
    ElseIf MM = "SEPTEMBER" Then
       S1 = Format(yfdate, "yyyy") & "09"
       Mo = "01/09/" & Format(yfdate, "yyyy")
       Mol = "30/09/" & Format(yfdate, "yyyy")
    ElseIf MM = "OCTOBER" Then
       S1 = Format(yfdate, "yyyy") & "10"
       Mo = "01/10/" & Format(yfdate, "yyyy")
       Mol = "31/10/" & Format(yfdate, "yyyy")
    ElseIf MM = "NOVEMBER" Then
       S1 = Format(yfdate, "yyyy") & "11"
       Mo = "01/11/" & Format(yfdate, "yyyy")
       Mol = "30/11/" & Format(yfdate, "yyyy")
    ElseIf MM = "DECEMBER" Then
       S1 = Format(yfdate, "yyyy") & "12"
       Mo = "01/12/" & Format(yfdate, "yyyy")
       Mol = "31/12/" & Format(yfdate, "yyyy")
    ElseIf MM = "JANUARY" Then
       S1 = Format(yldate, ("yyyy")) & "01"
       Mo = "01/01/" & Format(yldate, "yyyy")
       Mol = "31/01/" & Format(yldate, "yyyy")
    ElseIf MM = "FEBRUARY" Then
       S1 = Format(yldate, ("yyyy")) & "02"
       Mo = "01/02/" & Format(yldate, "yyyy")
       Mol = Day(Mo) & "/02/" & Format(yldate, "yyyy")
    ElseIf MM = "MARCH" Then
       S1 = Format(yldate, ("yyyy")) & "03"
       Mo = "01/03/" & Format(yldate, "yyyy")
       Mol = "31/03/" & Format(yldate, "yyyy")
    End If
sday = 1
Set TmpRst = New Recordset
TmpRst.Open "select paycalcfday FROM pr_gendet WHERE divcode = '" & Divcode & "' ", DB

If TmpRst.EOF = False Then
    sday = TmpRst(0)
End If

    If sday = 1 Then
         sDate = CDate(Trim(CStr(1)) & "/" & CStr(MONTH(Mo)) & "/" & Year(Mo))
    Else
        sDate = CDate(Trim(CStr(sday)) & "/" & CStr(MONTH(DateAdd("m", -1, Mo))) & "/" & CStr(Year(DateAdd("m", -1, Mo))))
        If Not IsDate(sDate) Then
            sDate = CDate(Trim(CStr(1)) & "/" & CStr(MONTH(Mo)) & "/" & Year(Mo))
        End If
    End If
    

    EDate = DateAdd("m", 1, sDate) - 1



     
    Rhead = "Employee OT Register For The Month of " & Format(Mo, "MMM-YYYY")
    RHead1 = "Register of Workers For the Month of " & Format(Mo, "MMM-YYYY") & ". No. of days worked in the month: "
    If RsDiv.State = adStateOpen Then RsDiv.Close
    RsDiv.Open " select DIV_PRINTNAME,DIV_UNITNAME  from PP_DIVMAS where divcode='" & Divcode & "'", DB, adOpenKeyset, adLockReadOnly
    
    
    If RsDiv.EOF = False Then
        div_printname = RsDiv("DIV_PRINTNAME")
        Div_UnitName = RsDiv("DIV_UNITNAME")
    End If
     Set Rs = New Recordset
      Rs.Open " Exec KSP_SalaryStatementExcel '" & Divcode & "','" & S1 & "','" & Trim(L_Cat) & "','" & Trim(L_Dep) & "','" & Trim(B) & "','" & Trim(c) & "','" & Trim(d) & "','" & Trim(sType) & "','" & Trim(StrEmpType) & "','" & Trim(Trim(Text1.Text)) & "','" & Trim(Trim(Combo2.Text)) & "','" & L_Bank & "'", DB
      


'        Set rs = New Recordset
'        rs.Open "select * from tmpsalarystmt order by ticketno", Db
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If
            co = 7
            i1 = 1
            
            osheet.Cells(6, i1).CopyFromRecordset Rs
                


                
                m = osheet.UsedRange.Rows.Count
                Max = m + 1
                
'                osheet.Columns.AutoFit
                osheet.Rows.AutoFit
                
                'Dim M_ROW As Integer
                
                m_ROW = osheet.UsedRange.Rows.Count + 1
                MR = "S" & m_ROW
'                osheet.Cells(M_ROW + 1, 3) = "Grand Total"
'                'osheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G4 :G" & m_ROW & ")"
'                osheet.Cells(M_ROW + 1, 8) = CStr(GinvVal)
'                osheet.Cells(M_ROW + 1, 11) = CStr(GDuamt)
                
                            m_ROW = osheet.UsedRange.Rows.Count + 1
                            lr = "A" & m_ROW
                            HR = "AC" & m_ROW
                            With osheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With
'                      SheetName = ActiveSheet.name
'                        MsgBox (SheetName)
'                        Dim r As Range
'                        Set r = oSheet.Cells.find("Designation")
'                        MsgBox (r.Address)
'                        Dim a1() As String
'                        a1 = Split(r.Address, "$")
'                        MsgBox (a1(1))
'                        MsgBox (a1(2))
                        
'
'                oSheet.Cells(m_ROW + 1, 6).Formula = "=SUM(a1(1):F" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 8).Formula = "=SUM(H7:H" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 11).Formula = "=SUM(K4:K" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 12).Formula = "=SUM(L4:L" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 13).Formula = "=SUM(M4:M" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 14).Formula = "=SUM(N4:N" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G7:G" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 16).Formula = "=SUM(P7:P" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 19).Formula = "=SUM(S7:S" & m_ROW & ")"
                
                m_ROW = osheet.UsedRange.Rows.Count
                ''
                
                lr = "A" & 1
                HR = "AC" & m_ROW
                
                With osheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With
                
                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With
                
               ' Myxl.Application.Visible = True
                
                Set osheet = Nothing
                Set Myxl = Nothing
                'MsgBox "Copied " & Format$(RS.RecordCount) & " values."
'                Else
'                MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
'                'CmbVtype.SetFocus
'                Exit Sub
          '  End If
  
    Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form ", vbInformation, head
  
End Sub




Private Sub List_RecType_Click()
    Call load_StockDetailsCat
    Call AutoLoad
'    Check1.value = 0
'    Check3.value = 0
'    Check4.value = 0
'    Check5.value = 0
'    Check6.value = 0
End Sub



Private Sub Lt_Division_BeforeLabelEdit(Cancel As Integer)

Call load_catChkListbox
End Sub

Private Sub Lt_Division_Click()
Call load_catChkListbox
End Sub

Private Sub OptRec_Click(Index As Integer)
If Repindex <> 3 And Repindex <> 111 Then
If OptRec(0).value = True Then
    Frame1.Visible = True
Else
    Frame1.Visible = False
End If
End If
Call load_catChkListbox
End Sub

Private Sub Text1_Change()
On Error GoTo err_lvcustclick
intervalMinutes = -1
Dim itm3 As ListItem

Dim itmX As ListView
'itmX = LT_Emp.FindItemWithText(TextBox1.Text, False, Trim(UCase(txt_Cntsearch.Text)))

    For I = 1 To List_Varcode.ListItems.Count
        If InStr(1, List_Varcode.ListItems(I).Text, Trim(Text1.Text), vbTextCompare) > 0 Then
                List_Varcode.ListItems(I).Selected = True
                List_Varcode.ListItems(I).Bold = True
                List_Varcode.ListItems(I).ForeColor = vbBlue
                List_Varcode.ListItems(I).EnsureVisible
                Exit For
        
        Else
                List_Varcode.ListItems(I).Bold = False
                List_Varcode.ListItems(I).ForeColor = vbBlack
        End If
    Next
  Exit Sub
err_lvcustclick:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)
       
End Sub

Private Sub Text2_Change()
On Error GoTo err_lvcustclick
intervalMinutes = -1
Dim itm5 As ListItem

Dim itmX As ListView
'itmX = LT_Emp.FindItemWithText(TextBox1.Text, False, Trim(UCase(txt_Cntsearch.Text)))

    For I = 1 To List_Lot.ListItems.Count
        If InStr(1, List_Lot.ListItems(I).Text, Trim(Text2.Text), vbTextCompare) > 0 Then
                List_Lot.ListItems(I).Selected = True
                List_Lot.ListItems(I).Bold = True
                List_Lot.ListItems(I).ForeColor = vbBlue
                List_Lot.ListItems(I).EnsureVisible
                Exit For
        
        
        Else
                List_Lot.ListItems(I).Bold = False
                List_Lot.ListItems(I).ForeColor = vbBlack
        End If
    Next
  Exit Sub
err_lvcustclick:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)
       
End Sub

Private Sub Text3_Change()
On Error GoTo err_lvcustclick
intervalMinutes = -1
Dim itm4 As ListItem

Dim itmX As ListView
'itmX = LT_Emp.FindItemWithText(TextBox1.Text, False, Trim(UCase(txt_Cntsearch.Text)))

    For I = 1 To List_Supplier.ListItems.Count
        If InStr(1, List_Supplier.ListItems(I).Text, Trim(Text3.Text), vbTextCompare) > 0 Then
                List_Supplier.ListItems(I).Selected = True
                List_Supplier.ListItems(I).Bold = True
                List_Supplier.ListItems(I).ForeColor = vbBlue
                List_Supplier.ListItems(I).EnsureVisible
                Exit For
        
        
        Else
                List_Supplier.ListItems(I).Bold = False
                List_Supplier.ListItems(I).ForeColor = vbBlack
        End If
    Next
  Exit Sub
err_lvcustclick:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)
       
End Sub

Private Sub txt_GodSearch_Change()
On Error GoTo err_lvcustclick
intervalMinutes = -1
Dim itm7 As ListItem

Dim itmX As ListView
'itmX = LT_Emp.FindItemWithText(TextBox1.Text, False, Trim(UCase(txt_Cntsearch.Text)))

    For I = 1 To List_Godown.ListItems.Count
        If InStr(1, List_Godown.ListItems(I).Text, Trim(txt_GodSearch.Text), vbTextCompare) > 0 Then
                List_Godown.ListItems(I).Selected = True
                List_Godown.ListItems(I).Bold = True
                List_Godown.ListItems(I).ForeColor = vbBlue
                List_Godown.ListItems(I).EnsureVisible
                Exit For
        
        
        Else
                List_Godown.ListItems(I).Bold = False
                List_Godown.ListItems(I).ForeColor = vbBlack
        End If
    Next
  Exit Sub
err_lvcustclick:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)
       
End Sub

Private Sub EmpSearch()
On Error GoTo err_lvcustclick


Exit Sub
err_lvcustclick:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)
   
End Sub



Public Sub StockLotReport2(U As String, v As String, W As String, fltn As Integer, tltn As Integer, pRecType As String, Optional footerstr As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim pagelen As Integer
'divname = "KALPATHARU TEXTILES LIMITED"
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim totbal As Double
Dim Cnn As Connection
'Dim f As New repform1
On Error GoTo StockLotReport2_Error

Set Cnn = New Connection
Set RS2 = New Recordset
Cnn.Provider = "MSDATASHAPE"
Cnn.CursorLocation = adUseClient
Cnn.Open connectstring
vrectype = Trim(Left(pRecType, 3))
catcd = Trim(Left(W, 1))
    Set rs1 = New Recordset
        
  strSQL = ""
  strSQL = " select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
        strSQL = strSQL + "(SUM(ISNULL(A.RECKGS,0))+SUM(ISNULL(A.ISSRETKGS,0))) AS RECKGS, SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.TRANSKGS,0))+SUM(ISNULL(A.JWKGS,0))AS ISSKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))-sum(isnull(a.ISSRETBAL,0))))"
        'strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-sum(isnull(a.ISSRETBAL,0)) -(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0))  )) END CLOBALES," -- commented on 17-11-18
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0)) -(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)) -sum(isnull(a.ISSRETBAL,0)) )) END CLOBALES,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)) )-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))-sum(isnull(a.ISSRETKGS,0))))"
    '   strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-sum(isnull(a.ISSRETKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))-sum(isnull(a.ISSRETKGS,0)))) END CLOKGS," -- commented on 17-11-18
        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))-sum(isnull(a.ISSRETKGS,0)))) END CLOKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))-sum(isnull(a.ISSRETVAL,0)) ))"
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))-sum(isnull(a.ISSRETVAL,0))   )) END CLOVALUE"
        strSQL = strSQL + ",ISNULL(RATEKG,0) AS RATEKG,ISNULL(RATECY,0) AS RATECY, "
        strSQL = strSQL + " (SUM(ISNULL(A.RECbal,0))+SUM(ISNULL(A.ISSRETBAL,0))) AS RECBAL,(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))) ISSBAL ,SUM(ISNULL(A.REJKGS,0)) AS REJKGS, sum(IsNull(a.REJBAL, 0)) As REJBALES"
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(U, v)
       '' 'strSQL = strSQL + " ) A , RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "

        strSQL = strSQL + " ) A inner join RM_LOT B on b.divcode='" & Divcode & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE   "
        strSQL = strSQL + "  inner join RM_VAR C on  B.CATCD=C.CATCD AND b.VARCODE=C.VARCODE  "
        strSQL = strSQL + "  inner join rm_CAT D on B.CATCD= D.CATCD"
        strSQL = strSQL + " inner join  FA_SLMAS E on B.SUPCD=E.SLCODE"
        strSQL = strSQL + " inner join  RM_ProductprintDet Param on Param.SUPCD=b.supcd and Param.lotno=b.lotno and param.lotdt=b.lotdt and Param.varcode=b.varcode and Param.lotyear=b.lotyear and Param.divcode=b.divcode and Param.lottype=b.lottype and IPadd='" & LocalIPAdd & "'"
        strSQL = strSQL + " WHERE "

         strSQL = strSQL & "  b.divcode ='" & Divcode & "'   and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' and b.GODOWN in (" & L_God & ")  and  (b.transfertype in (" & L_Rec & ") or b.lottype  in (" & L_Rec & ") )  group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"



        
        
                    
'        If Trim(Left(W, 3)) <> "ALL" Then
'
'            If vrectype <> "ALL" Then
'                If vrectype = "A" Then
'                    strSQL = strSQL & "  (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.catcd= '" & Trim(Trim(Left(W, 1))) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
'                Else
'                    strSQL = strSQL & "  b.Transfertype = '" & Trim(vrectype) & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd= '" & Trim(Trim(Left(W, 1))) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
'                End If
'            Else
'                    strSQL = strSQL & "  b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd= '" & Trim(Trim(Left(W, 1))) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
'            End If
'        Else
'            If vrectype <> "ALL" Then
'                If vrectype = "A" Then
'                    strSQL = strSQL & "  b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
'                Else
'                    strSQL = strSQL & "  b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
'                End If
'            Else
'                    strSQL = strSQL & "  b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
'            End If
'        End If
Set rs1 = New Recordset
'Cnn.ConnectionTimeout = 5000
rs1.Open strSQL, Cnn, adOpenStatic

If rs1.EOF Then
   MsgBox "No Stock found for this month", vbInformation, head
   Screen.MousePointer = 0
    Exit Sub
End If

Set rs4 = New Recordset
 rs4.Open "select * from sysobjects where name ='StockLotwisetemp1'", DB, adOpenStatic, adLockBatchOptimistic
    If rs4.RecordCount > 0 Then
        DB.Execute "drop table StockLotwisetemp1"
End If

DB.Execute "Create table StockLotwisetemp1(Catname char(40),lotno numeric(5),plotno varchar(20),lotdt datetime,varname char(80),unit char(10),opbales numeric(8),opboras numeric(5),opkgs numeric(18,3),reckgs numeric(18,3),isskgs numeric(18,3),clobales numeric(8),cloboras numeric(8),clokgs numeric(18,3),value numeric(18,3),ratekg numeric(18,4),ratecy numeric(18,4),RecBales numeric(10),IssBales numeric(10),REJKGS numeric(18,3),REJBALES numeric(10) )"
Do While Not rs1.EOF
    'SqlStr = "insert into StockLotwisetemp1 Values ('" & rs1(0) & " '," & rs1(1) & ",'" & rs1(2) & "','" & Format(rs1(3), "yyyy-MM-dd") & "','" & rs1(4) & "','" & IIf(rs1(5) = "B", "BALES", "BORAH") & "'," & rs1(6) & "," & rs1(7) & "," & rs1(8) & "," & rs1(9) & " , " & rs1(10) & ", " & rs1(11) & ", " & rs1(12) & "," & rs1(13) & "," & rs1(14) & "," & rs1("RecBal") & "," & rs1("IssBal") & "," & rs1("REJKGS") & "," & rs1("REJBALES") & ")"
    DB.Execute "insert into StockLotwisetemp1 Values ('" & rs1(0) & " '," & rs1(1) & ",'" & rs1(2) & "','" & Format(rs1(3), "yyyy-MM-dd") & "','" & rs1(4) & "','" & IIf(rs1(5) = "B", "BALES", "BORAH") & "'," & rs1(6) & "," & rs1(7) & "," & rs1(8) & "," & rs1(9) & " , " & rs1(10) & ", " & rs1(11) & ", " & rs1(12) & "," & rs1(13) & "," & rs1(14) & "," & rs1(15) & "," & rs1(16) & "," & rs1("RecBal") & "," & rs1("IssBal") & "," & rs1("REJKGS") & "," & rs1("REJBALES") & ")"
    rs1.MoveNext
Loop

If Check7.value = 1 Then
Call LotwiseStockExcel
Exit Sub
End If


        Dim clsCryRpt1 As New clsCrystal
        Set clsCryRpt1.cryRept = Rep_Stock_lot_nrej1 'Rep_Stock_lot_nrej 'Rep_stock_lotwise2 ' Rep_stock_lotwise1
        clsCryRpt1.CrystalPrint
        Crr.Reset
        Crr.Connect = connectstring
        Crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        Crr.Formulas(0) = "div='" & divname & "'"
        Crr.Formulas(1) = "UnitName='" & PrUnitName & "'"
        Crr.Formulas(2) = "rep='" & "Stock Statement Lotwise From " & Format(DTPicker1.value, "dd/mm/yy") & " To " & Format(DTPicker2.value, "dd/mm/yy") & "'"
        Crr.WindowShowPrintSetupBtn = True
        Crr.WindowShowSearchBtn = True
        Crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        
        Crr.Action = 1
        Crr.PrinterCopies = 1
Exit Sub
StockLotReport2_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockLotReport2 of Form repform1", vbInformation, head
Screen.MousePointer = 0

End Sub


Public Sub StockVarietyReport2(F_Date As String, T_Date As String, catcd As String, Optional pRecType As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
'divname = "KALPATHARU TEXTILES LIMITED"
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim tot11 As Double
Dim tot12 As Double
Dim tot13 As Double
Dim tot14 As Double
Dim tot15 As Double
Dim tot16 As Double
Dim Cnn As Connection
On Error GoTo StockVarietyReport2_Error

Set Cnn = New Connection

Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
SR = catcd
'SR = Trim(Mid$(SR, 1, InStr(SR, "-") - 1))
'vrectype = Trim(Left(pRecType, 3))
'Set rptv = New Report.ReportView
'a = FreeFile
'Close #a
'Close
''Open "C:\sv.TXT" For Output As #a
'Open KALFOLDERDATA & "\sv.TXT" For Output As #a
pg1 = 1
co = 0
          Cnn.Execute "delete Temp_per_stockstatementvar"
        
  If Year(yfdate) = Year(F_Date) And Year(F_Date) = Year(T_Date) Then
      YFF = Year(yfdate)
   ElseIf Year(yfdate) + 1 = Year(F_Date) Then
      YFF = Year(yfdate)
   Else
      YFF = Year(yfdate)
   End If
   grpname = "C.VARNAME"
   If OptRec(6).value = True Then
       grpname = "dd.CATNAME"
   Else
    grpname = "C.VARNAME"
   End If
   
   
  
    Set RSV = New Recordset
        strSQL = " select " & grpname & " VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,"
        strSQL = strSQL + "(SUM(ISNULL(A.RECBAL,0))+SUM(ISNULL(A.ISSRETBAL,0))) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,(SUM(ISNULL(A.RECKGS,0))+SUM(ISNULL(A.ISSRETKGS,0))) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.JWBAL,0))+SUM(ISNULL(A.TRANSBAL,0)) AS ISSBALES,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.JWKGS,0))+SUM(ISNULL(A.TRANSKGS,0)) AS ISSKGS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0))+SUM(ISNULL(A.JWVALUE,0))+SUM(ISNULL(A.TRANSVALUE,0)) AS ISSVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.TRANSBAL,0)) AS TRANSBAL,SUM(ISNULL(A.TRANSBOR,0)) AS TRANSBOR,SUM(ISNULL(A.TRANSKGS,0)) as TRANSKGS,SUM(ISNULL(A.TRANSVALUE,0)) AS TRANSVALUE,SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))-sum(isnull(a.ISSRETBAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0))-sum(isnull(a.ISSRETBAL,0)))) END CLOBALES,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0))+sum(isnull(ISSRETKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))+sum(isnull(ISSRETKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))-sum(isnull(ISSRETVAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))-sum(isnull(ISSRETVAL,0)))) END CLOSEVALUE"
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(F_Date, T_Date)
        strSQL = strSQL + " ) A inner join RM_LOT B on  A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE   inner join RM_VAR C on  B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE inner join rm_cat dd on dd.catcd=b.catcd  "
        strSQL = strSQL + " inner join  RM_ProductprintDet Param on Param.SUPCD=b.supcd and Param.lotno=b.lotno and param.lotdt=b.lotdt and Param.varcode=b.varcode and Param.lotyear=b.lotyear and Param.divcode=b.divcode and Param.lottype=b.lottype and IPadd='" & LocalIPAdd & "'"
        strSQL = strSQL + " WHERE "

         strSQL = strSQL & "  b.divcode ='" & Divcode & "'   and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' and b.GODOWN in (" & L_God & ")  and  (b.transfertype in (" & L_Rec & ") or b.lottype  in (" & L_Rec & ") )  group by " & grpname & ""
                    
'        If Trim(SR) <> "ALL" Then
'
'            If vrectype <> "ALL" Then
'                If vrectype = "A" Then
'                    strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' group by C.VARNAME"
'                Else
'                    strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' group by C.VARNAME"
'                End If
'            Else
'                    strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME"
'            End If
'        Else
'            If vrectype <> "ALL" Then
'                If vrectype = "A" Then
'                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME"
'                Else
'                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME"
'                End If
'            Else
'                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME"
'            End If
'        End If
'        MsgBox rs1!varcode
    Set RSV = New Recordset
        RSV.Open strSQL, Cnn, adOpenStatic, adLockBatchOptimistic
If RSV.EOF Then
   MsgBox "No Records Found", vbInformation, head
   Exit Sub
End If

'rs1.MoveFirst
Do While Not RSV.EOF

            
         VTOT = RSV("opbales")
         vtot1 = RSV("opboras")
         vtot2 = RSV("opkgs")
         vtot3 = RSV("recbales")
         VTOT4 = RSV("recboras")
         VTOT5 = RSV("reckgs")
         VTOT6 = RSV("issbales")
         VTOT7 = RSV("issboras")
         VTOT8 = RSV("isskgs")
        
        VTOT9 = RSV("clobales")
        VTOT10 = RSV("cloboras")
        VTOT11 = RSV("clokgs")
        vtotRejValue = RSV!REJVALUE
        VTOT15 = IIf(RSV("closevalue") < 0, 0, RSV("CLOSEVALUE"))
         
         VTOT12 = RSV("opvalue")
         VTOT13 = RSV("recvalue")
         VTOT14 = RSV("issvalue")
         
         vtotRejBales = RSV!rejBales
         vtotRejKgs = RSV!rejkgs
         vtotRejval = RSV!REJVALUE
         
         vtottrnsBales = RSV!TRANSBAL
         vtottrnsKgs = RSV!transkgs
         vtottrnsval = RSV!TRANSVALUE
      'End If
                
'   Else
'      GoTo 30
'   End If
                
           
'   Set Namers = New Recordset
'   Namers.Open "Select varname from rm_var where varcode='" & rs1("VARCODE") & "'", DB, adOpenStatic
'   If Not Namers.EOF Then VarName = Namers(0)
    VarName = Trim(RSV!VarName)
                
  
'   strSQL = "insert into Temp_per_stockstatementvar Values ('" & VarName & " ','" & (VTOT + vtot1) & "','" & vtot2 & "','" & VTOT12 & "','" & (vtot3 + VTOT4) & "','" & VTOT5 & "','" & VTOT13 & "','" & (VTOT6 + VTOT7) & "'," & VTOT8 & "," & VTOT14 & "," & (VTOT9 + VTOT10) & "," & VTOT11 & "," & VTOT15 & ")"
   
  DB.Execute "insert into Temp_per_stockstatementvar Values ('" & VarName & " '," & VTOT & "," & vtot1 & "," & vtot2 & "," & VTOT12 & "," & vtot3 & "," & VTOT4 & "," & VTOT5 & "," & VTOT13 & "," & VTOT6 & "," & VTOT7 & "," & VTOT8 & "," & VTOT14 & "," & vtotRejBales & "," & vtotRejKgs & "," & vtotRejval & "," & VTOT9 & "," & VTOT10 & "," & VTOT11 & "," & VTOT15 & ")"
   RSV.MoveNext
Loop

If Check7.value = 1 Then
    Call VarietywiseStockExcel
    Exit Sub
End If

MousePointer = 11
Set rsrate = New Recordset
rsrate.Open "select * from rm_rateunit where unitcode='CAN'", DB, adOpenStatic
If rsrate.RecordCount > 0 Then
 RATECY = rsrate("value")
End If

'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Periodical_VarietywiseStockStatement.rpt"
'FrmRpt.RptHead = 4
'parameter1 = DIVNAME
'parameter2 = Format(DTPicker2.value, "dd/MM/yy")
'parameter3 = Format(DTPicker3.value, "dd/MM/yy")
'parameter4 = RATECY
'FrmRpt.Show


        Dim clsCryRpt1 As New clsCrystal
        Set clsCryRpt1.cryRept = Cry_StockStatment_Variety ' Rep_stock_varwise 'rep_stock_varwise1 '
        clsCryRpt1.CrystalPrint
        Crr.Reset
        Crr.Connect = connectstring
        Crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    
        Crr.Formulas(0) = "div='" & divname & "'"
        Crr.Formulas(1) = "rep='" & "Varietywise Stock Statement From " & Format(DTPicker1.value, "dd/mm/yy") & " To " & Format(DTPicker2.value, "dd/mm/yy") & "'"
        If OptRec(6).value = True Then
        Crr.Formulas(2) = "ReptOpt='" & "0" & "'"
        Else
        Crr.Formulas(2) = "ReptOpt='" & "1" & "'"
        End If
   
        Crr.Formulas(3) = "fdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "'"
        Crr.Formulas(4) = "tdate='" & Format(DTPicker2.value, "yyyy-mm-dd") & "'"
        Crr.Formulas(5) = "Divcode='" & Divcode & "'"
        Crr.Formulas(6) = "yfdate='" & Format(yfdate, "yyyy-mm-dd") & "'"
        Crr.Formulas(7) = "IPAdd='" & LocalIPAdd & "'"
        
        Crr.WindowShowPrintSetupBtn = True
        Crr.WindowShowSearchBtn = True
        Crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        Crr.Action = 1
        Crr.PrinterCopies = 1
       

MousePointer = 0
Exit Sub

StockVarietyReport2_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockVarietyReport2 of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub StockGodownReportCrystal(U As String, v As String, W As String, divname, X As String, Y As String, ChkFlg As String, fg As String, TG As String, Optional pRecType As String)
Dim RS2 As Recordset
Dim rs1 As Recordset
Dim rs3 As Recordset
Dim RESULT As Recordset
Dim TEMP As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim gtot1 As Double
Dim ab As Integer
Dim gtot2 As Double
Dim god(100) As String, bale(100) As Double, stock(100) As Double, Value1(100) As Double
Dim gtot3 As Double, gt1 As Double, gt2 As Double, gt3 As Double
Dim gtot4 As Double
Dim gtot5 As Double
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim Str As String
Dim FLG As String
Dim Cnn As Connection
On Error GoTo StockGodownReportCrystal_Error

Set Cnn = New Connection

Set RS2 = New Recordset
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
'rs2.Open "select  distinct a.tax_code,b.description from ig_invdt a,ig_tax b,ig_invhd c where a.tax_code*=b.tax_Code and a.inv_no=c.inv_no and c.date between '" & u & "'and '" & v & "' and a.tax_code between '" & w & "' and '" & z & "' and a.divcode='" & divcode & "'", cnn, adOpenStatic, adLockOptimistic
vrectype = Trim(Left(pRecType, 3))
Cnn.CommandTimeout = 2000
DB.CommandTimeout = 2000
Set RS2 = New Recordset
SR = W
Set RS2 = New Recordset


strSQL = " select b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg as unit,b.ratecy, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,"
strSQL = strSQL + "SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
strSQL = strSQL + "SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,"
strSQL = strSQL + "SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
strSQL = strSQL + "SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0))+SUM(ISNULL(A.JWVALUE,0)) AS ISSVALUE,"
strSQL = strSQL + "SUM(ISNULL(A.TRANSBAL,0)) AS TRANSBAL,SUM(ISNULL(A.TRANSBOR,0)) AS TRANSBOR,SUM(ISNULL(A.TRANSKGS,0)) as TRANSKGS,SUM(ISNULL(A.TRANSVALUE,0)) AS TRANSVALUE,SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))-SUM(ISNULL(ISSRETBAL,0))))"
strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0))-SUM(ISNULL(ISSRETBAL,0)))) END CLOBALES,"
strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))-SUM(ISNULL(ISSRETKGS,0))))"
strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))-SUM(ISNULL(ISSRETKGS,0)))) END CLOKGS,"
strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))- SUM(ISNULL(ISSRETVAL,0))))"
strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))- SUM(ISNULL(ISSRETVAL,0)))) END CLOSEVALUE"
strSQL = strSQL + " FROM ("
strSQL = strSQL + gStockStatement(U, v)
'strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C,rm_cat d WHERE B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE and c.catcd=d.catcd AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE"
strSQL = strSQL + " ) A inner join RM_LOT B on  A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE   inner join RM_VAR C on  B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE  inner join rm_cat d on d.catcd=b.catcd "
strSQL = strSQL + " inner join  RM_ProductprintDet Param on Param.SUPCD=b.supcd and Param.lotno=b.lotno and param.lotdt=b.lotdt and Param.varcode=b.varcode and Param.lotyear=b.lotyear and Param.divcode=b.divcode and Param.lottype=b.lottype and IPadd='" & LocalIPAdd & "'"
strSQL = strSQL + " WHERE "

strSQL = strSQL & "  b.divcode ='" & Divcode & "'   and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' and b.GODOWN in (" & L_God & ")  and  (b.transfertype in (" & L_Rec & ") or b.lottype  in (" & L_Rec & ") )  group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy "
                    
'
'If Trim(SR) <> "ALL" Then
'
'    If vrectype <> "ALL" Then
'        If vrectype = "A" Then
'           ' commented on 25-04-19 by mariyaiya
'           ' strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' and b.Godown between '" & FG & "' and '" & TG & "' group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy"
'             ' Added on 25-04-19 by mariyaiya
'             strSQL = strSQL & " and  b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' and b.Godown between '" & fg & "' and '" & TG & "' group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy"
'
'        Else
'           ' commented on 25-04-19 by mariyaiya
'           ' strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' and b.Godown between '" & FG & "' and '" & TG & "' group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy"
'           ' Added on 25-04-19 by mariyaiya
'             strSQL = strSQL & "  and b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' and b.Godown between '" & fg & "' and '" & TG & "' group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy"
'
'        End If
'    Else
'            strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' and b.lotyear='" & Year(yfdate) & "' and b.Godown between '" & fg & "' and '" & TG & "' group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy"
'    End If
'Else
'    If vrectype <> "ALL" Then
'        If vrectype = "A" Then
'            ' commented on 25-04-19 by mariyaiya
'           ' strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' and b.Godown between '" & FG & "' and '" & TG & "' group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy"
'            ' Added on 25-04-19 by mariyaiya
'            strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' and b.Godown between '" & fg & "' and '" & TG & "' group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy"
'        Else
'            ' commented on 25-04-19 by mariyaiya
'            'strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "' and b.Godown between '" & FG & "' and '" & TG & "' group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy"
'            ' Added on 25-04-19 by mariyaiya
'            strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "'  and b.lotyear='" & Year(yfdate) & "' and b.Godown between '" & fg & "' and '" & TG & "' group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy"
'        End If
'    Else
'            strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' and b.Godown between '" & fg & "' and '" & TG & "' group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy"
'    End If
'End If
RS2.Open strSQL, DB, adOpenStatic
If RS2.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
If RS2.BOF = False Then
    RS2.MoveFirst
End If
If Table_Exists("Temp_GodownWise_Stock_St") Then
    DB.Execute "Drop table Temp_GodownWise_Stock_St"
End If

strSQL = "Create Table Temp_GodownWise_Stock_St (godown varchar(250),VarName varchar(250),Supplier nvarchar(250)," & _
        "Lotno numeric(10), lotdt varchar(12),pLotno varchar(20),Rec_Date varchar(12),Qty  numeric(12), Kgs numeric(15,3) ," & _
        "value numeric(15,2), RateCY numeric(15,4),Divcode varchar(2))"
    
DB.Execute strSQL

Do While Not RS2.EOF

If RS2("lotno") = "1819" Then
'MsgBox "21"
End If

Set rssup = New Recordset
'rssup.Open "select slname from rm_lot a,fa_slmas b where a.supcd*=b.slcode and divcode='" & Divcode & "' and lotno=" & rs2("lotno") & " and lotdt='" & Format(rs2("LOTDT"), "yyyy-mm-dd") & "'", DB, adOpenStatic
rssup.Open "select slname from rm_lot a left join fa_slmas b on a.supcd=b.slcode where divcode='" & Divcode & "' and lotno=" & RS2("lotno") & " and lotdt='" & Format(RS2("LOTDT"), "yyyy-mm-dd") & "'", DB, adOpenStatic

sLname = ""
If rssup.RecordCount > 0 Then
    sLname = rssup("slname")
End If

        clokgs = 0
        CLOVALUE = 0
        If RS2("CLObales") + RS2("CLOBORAS") <= 0 Then
            clokgs = 0
            CLOVALUE = 0
        Else
            clokgs = RS2("CLOKGS")
            CLOVALUE = RS2("CLOSEVALUE")
        End If
        If clokgs > 0 Then
            strSQL = "INSERT Temp_GodownWise_Stock_St VALUES ( '" & RS2!godown & "','" & RS2!VarName & "','" & sLname & "'," & RS2!lotno & ",'" & Format(RS2("lotdt"), "dd/mm/yy") & "','" & RS2!PlotNo & "','" & Format(RS2("lotdt"), "dd/mm/yy") & "'," & (RS2!CLOBORAS + RS2!clobales) & "," & clokgs & "," & val(CLOVALUE) & "," & IIf(IsNull(RS2!RATECY), 0, RS2!RATECY) & ",'" & Divcode & "')"
             DB.Execute strSQL
        End If
    RS2.MoveNext
Loop
Dim rstQry As Recordset
Set rstQry = New Recordset

rstQry.Open "Select * from Temp_GodownWise_Stock_St", DB, adOpenStatic
    If Not rstQry.EOF Then
'        FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\StockStatementGodownwise.rpt"
'        FrmRpt.RptHead = 3
'        parameter1 = DIVNAME
'        parameter2 = Format(U, "dd/MM/YY")
'        parameter3 = Format(V, "dd/MM/YY")
'        FrmRpt.Show
        
        

        Dim clsCryRpt1 As New clsCrystal
        Set clsCryRpt1.cryRept = Rep_Stockgodown
        clsCryRpt1.CrystalPrint
        Crr.Reset
        Crr.Connect = connectstring
        Crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    
        Crr.Formulas(0) = "div='" & divname & "'"
        Crr.Formulas(1) = "rep='" & "Stock statement  Godownwise from  " & Format(U, "dd/mm/yy") & " To " & Format(v, "dd/mm/yy") & "'"
        
        Crr.WindowShowPrintSetupBtn = True
        Crr.WindowShowSearchBtn = True
        Crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        Crr.Action = 1
        Crr.PrinterCopies = 1
       
                
        
        
        Screen.MousePointer = 0
        Exit Sub
    End If

Exit Sub
StockGodownReportCrystal_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockGodownReportCrystal of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub




Private Sub StockReportStationwise(U As String, v As String)
On Error GoTo StockGodownReportCrystal_Error

            DB.BeginTrans
            
            Set Rs = New Recordset
            Rs.Open "select * from sysobjects where name ='RMI_Temp_Periodical_StockStatement_Stationwise'", DB, adOpenStatic
            If Not Rs.EOF Then
                DB.Execute "Drop table RMI_Temp_Periodical_StockStatement_Stationwise"
            End If
            
            Me.MousePointer = 11
'
'            fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
'
'            If CDate(fdate) > CDate(tdate) Then
'                    MsgBox "From Date should not be greater than To Date", vbInformation, head
'                    DataCombo2.SetFocus
'                    Screen.MousePointer = 0
'                Exit Sub
'                End If
'                If CDate(tdate) < CDate(fdate) Then
'                    MsgBox "To Date should not be less than From Date", vbInformation, head
'                    DataCombo2.SetFocus
'                    Screen.MousePointer = 0
'                Exit Sub
'            End If
'            intervalMinutes = -1
'            fSupplier = Right(Trim(cboFromSupplier.Text), 3)
'            tSupplier = Right(Trim(cboToSupplier.Text), 3)
'            iSelect = Len(cboFromVariety.Text)
'            iLenght = InStr(cboFromVariety.Text, " --") + 3
'
'            fVariety = Right(Trim(cboFromVariety.Text), iSelect - iLenght)
'
'            iSelect = Len(cboToVariety.Text)
'            iLenght = InStr(cboToVariety.Text, " --") + 3
'
'            tVariety = Right(Trim(cboToVariety.Text), iSelect - iLenght)
'
'            U = fdate:    v = tdate
'            W = Trim(CboCategory.Text)
'            fltn = Trim(cboFromLotNo.Text)
'            tltn = Trim(cboToLotNo.Text)
'            FVar = fVariety
'            TVar = tVariety
'            fstat = fSupplier
'            tstat = tSupplier
'            issuetype = Trim(cboissue.Text)
'
'            catcd = Trim(Mid$(W, 1, InStr(1, W, "-") - 1))
'            vrectype = Trim(Left(issuetype, 3))

            strSQL = " select C.VARNAME,a.lotno,a.lotdt,D.Station,b.Ratekg,A.VARCODE,d.areacode,B.SUPCD,B.BRKCD,CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as OPENBAL,"
            strSQL = strSQL + Chr(13) + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as OPENBOR,"
            strSQL = strSQL + Chr(13) + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPENKGS,"
            strSQL = strSQL + Chr(13) + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPENVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.RECBAL,0)) AS RECBAL,SUM(ISNULL(A.RECBOR,0)) AS RECBOR,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.LOSSBAL,0)) AS LOSSBAL,SUM(ISNULL(A.LOSSKGS,0)) AS LOSSKGS, SUM(ISNULL(A.LOSSVALUE,0)) AS LOSSVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.RTNBAL,0)) AS RTNBAL,SUM(ISNULL(A.RTNKGS,0)) AS RTNKGS,SUM(ISNULL(A.RTNVALUE,0)) AS RTNVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.PRODBAL,0)) AS PRODBAL,SUM(ISNULL(A.PRODBOR,0)) AS PRODBOR,SUM(ISNULL(A.PRODKGS,0)) AS PRODKGS,SUM(ISNULL(A.PRODVALUE,0)) AS PRODVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.SALESBAL,0)) AS SALESBAL,SUM(ISNULL(A.SALESBOR,0)) AS SALESBOR,SUM(ISNULL(A.SALESKGS,0)) AS SALESKGS,SUM(ISNULL(A.SALESVALUE,0)) AS SALESVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.TRANSBAL,0)) AS TRANSBAL,SUM(ISNULL(A.TRANSBOR,0)) AS TRANSBOR,SUM(ISNULL(A.TRANSKGS,0)) AS TRANSKGS,SUM(ISNULL(A.TRANSVALUE,0)) AS TRANSVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.JWBAL,0)) AS JWBAL,SUM(ISNULL(A.JWBOR,0)) AS JWBOR,SUM(ISNULL(A.JWKGS,0)) AS JWKGS,SUM(ISNULL(A.JWVALUE,0)) AS JWVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.REJBAL,0)) AS REJBAL,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLSBAL,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLSBOR,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLSKGS,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLSVALUE"
            strSQL = strSQL + Chr(13) + "Into RMI_Temp_Periodical_StockStatement_Stationwise"
            strSQL = strSQL + Chr(13) + " FROM ("
            strSQL = strSQL + Chr(13) + gStockStatement(U, v)
'            strSQL = strSQL + Chr(13) + " ) A ,RM_LOT B, RM_VAR C,RM_AREA D WHERE b.AREACD= D.AREACODE AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.VARCODE BETWEEN '" & FVar & "' AND '" & TVar & "' AND A.lotno BETWEEN '" & fltn & "' AND '" & tltn & "'AND b.areacd BETWEEN '" & Trim(fstat) & "' AND '" & Trim(tstat) & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "
'            strSQL = strSQL & Chr(13) + " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "'"
            strSQL = strSQL + " ) A inner join RM_LOT B on  A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE   inner join RM_VAR C on  B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE  inner join RM_AREA D on b.AREACD= D.AREACODE  "
            strSQL = strSQL + " inner join  RM_ProductprintDet Param on Param.SUPCD=b.supcd and Param.lotno=b.lotno and param.lotdt=b.lotdt and Param.varcode=b.varcode and Param.lotyear=b.lotyear and Param.divcode=b.divcode and Param.lottype=b.lottype and IPadd='" & LocalIPAdd & "'"
            strSQL = strSQL + " WHERE "
            strSQL = strSQL & "  b.divcode ='" & Divcode & "'   and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' and b.areacd in (" & L_God & ")  and  (b.transfertype in (" & L_Rec & ") or b.lottype  in (" & L_Rec & ") ) group by C.VARNAME,A.LotNo,A.lotdt,D.Station,B.Ratekg,A.VARCODE,d.areacode,B.SUPCD,B.BRKCD  Order by C.VARNAME,A.lotdt,A.LotNo,D.Station "
                
'            If Trim(catcd) <> "All" Then
'                If vrectype <> "All" Then
'                    If vrectype = "A" Then
'                        strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARNAME,A.LotNo,A.lotdt,D.Station,B.Ratekg,A.VARCODE,d.areacode,B.SUPCD,B.BRKCD  Order by C.VARNAME,A.lotdt,A.LotNo,D.Station "
'                    Else
'                        strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARNAME,A.LotNo,A.lotdt,D.Station,B.Ratekg,A.VARCODE,d.areacode,B.SUPCD,B.BRKCD  Order by C.VARNAME,A.lotdt,A.LotNo,D.Station "
'                    End If
'                Else
'                        strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARNAME,A.LotNo,A.lotdt,D.Station,B.Ratekg,A.VARCODE,d.areacode,B.SUPCD,B.BRKCD  Order by C.VARNAME,A.lotdt,A.LotNo,D.Station "
'                End If
'            Else
'                If vrectype <> "All" Then
'                    If vrectype = "A" Then
'                        strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME,A.LotNo,A.lotdt,D.Station,B.Ratekg,A.VARCODE,d.areacode,B.SUPCD,B.BRKCD  Order by C.VARNAME,A.lotdt,A.LotNo,D.Station "
'                    Else
'                        strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME,A.LotNo,A.lotdt,D.Station,B.Ratekg,A.VARCODE,d.areacode,B.SUPCD,B.BRKCD  Order by C.VARNAME,A.lotdt,A.LotNo,D.Station "
'                    End If
'                Else
'                        strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME,A.LotNo,A.lotdt,D.Station,B.Ratekg,A.VARCODE,d.areacode,B.SUPCD,B.BRKCD  Order by C.VARNAME,A.lotdt,A.LotNo,D.Station "
'                End If
'            End If
            Set rs1 = New Recordset
            rs1.Open strSQL, DB, adOpenStatic
    
'            If rs1.EOF Then
'                MsgBox "No Records Found", vbInformation, head
'                Screen.MousePointer = 0
'                Exit Sub
'            End If
            intervalMinutes = -1
            DB.CommitTrans
    
'            With CR
'                .Connect = connectstring
'                .ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\rpt_Periodical_StockStatement_Stationwise.rpt"
'
'                .ParameterFields(0) = "name;" & "Raw Material Stock Statement Stationwise From " & Format(dtpFromDate, "dd/MM/yy") & " To " & Format(dtpToDate, "dd/MM/yy") & ""
'                .ParameterFields(1) = "divname;" & DIVNAME
'
'                .WindowState = crptMaximized
'                .PrinterCopies = 1
'                SendKeys "{enter}"
'                .Action = True
'            End With

'            FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\rpt_Periodical_StockStatement_Stationwise.rpt"
'            FrmRpt.RptHead = "2A"
'            parameter1 = "Raw Material Stock Statement Stationwise From " & Format(dtpFromDate, "dd/MM/yy") & " To " & Format(dtpToDate, "dd/MM/yy")
'            parameter2 = DIVNAME
'            FrmRpt.Show
'            Me.MousePointer = 0
'
          intervalMinutes = -1
        Dim clsCryRpt1 As New clsCrystal
        Set clsCryRpt1.cryRept = Rep_Stockstation
        clsCryRpt1.CrystalPrint
        Crr.Reset
        Crr.Connect = connectstring
        Crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        Crr.Formulas(0) = "div='" & divname & "'"
        Crr.Formulas(1) = "rep='" & "Raw Material Stock Statement Stationwise From " & Format(DTPicker1.value, "dd/mm/yy") & " To " & Format(DTPicker2.value, "dd/mm/yy") & "'"
        Crr.WindowShowPrintSetupBtn = True
        Crr.WindowShowSearchBtn = True
        Crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        Crr.Action = 1
        Crr.PrinterCopies = 1
        Exit Sub
        
 
    intervalMinutes = -1
Exit Sub
StockGodownReportCrystal_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockStationwiseReportof Form StockStatmentReport", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub LotwiseStockExcel()
On Error GoTo LotwiseStockExcel_Error

Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim Rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant

CustCode = "": custname = "": ContNo = "": sortname = ""
'If Val(Myxl.Application.Version) >= 8 Then
     '   Set osheet = Myxl.ActiveSheet
    'Else
      '  Set osheet = Myxl
    'End If
     'Set osheet = Myxl.ActiveSheet
 tmpFile = "Arrival List Datewise"
tmppath1 = KALFOLDERDATA & tmpFile & ".xls"
'If Check1.value Then
'Set oExcel = CreateObject("ket.Application")
'Else '
Set oExcel = CreateObject("Excel.Application")

'End If
Set oBook = oExcel.Workbooks.ADD
Set osheet = oBook.Worksheets(1)

    oExcel.Visible = True
    Set osheet = oBook.Worksheets(1)
   oExcel.Visible = True
    
        Dim fd As String
        Dim td As String

        Dim stryear As String
        Set Rs = New Recordset
        Rs.Open "select AYEAR from pp_year where  '" & Format(yfdate, "yyyy-mm-dd") & "' between  ayfdate and AYLDATE ", DB
        If Not Rs.EOF Then
            stryear = Rs(0)
        End If
        
        Set Rs = New Recordset
        Rs.Open "select DIV_PRINTNAME ,DIV_UNITNAME from pp_divmas where divcode='" & Divcode & "'", DB
        
        
        osheet.Cells(1, 5).value = Rs(0)
        osheet.Range("A1", "O1").MergeCells = True
         osheet.Range("A1", "O1").HorizontalAlignment = Excel.xlCenter
        With osheet.Range("A1").Font
        .Bold = True
        .Size = 16
        .Color = vbBlue
        End With
        
        osheet.Cells(2, 5).value = Rs(1)
        osheet.Range("A2", "O2").MergeCells = True
         osheet.Range("A2", "O2").HorizontalAlignment = Excel.xlCenter
        With osheet.Range("A2").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With

      
        osheet.Name = "Stock Statement lotwise"
        
                
    intervalMinutes = -1
    U = Format(DTPicker1.value, "yyyy-mm-dd")
    v = Format(DTPicker2.value, "yyyy-mm-dd")


      
        osheet.Cells(3, 5).value = "Stock Statement Lot wise from  " & Format(DTPicker1.value, "dd-mm-yyyy") & " to " & Format(DTPicker2.value, "dd-mm-yyyy")
        osheet.Range("A3", "O3").HorizontalAlignment = Excel.xlCenter
        osheet.Range("A3", "O3").MergeCells = True
        With osheet.Range("A3", "O3").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        


        

        Set Rst = New Recordset

        Rst.Open "select distinct RptHead,sno from  RM_EXCELLRPTHEAD where Rptname='STMTLOT' order by sno ", DB, adOpenStatic

        I = 1
        Dim TotCol As Integer
        TotCol = 0
        Do While Not Rst.EOF
            osheet.Cells(4, I).value = Rst(0)
           ' oSheet.Cells(6, i).CopyFromRecordset Rst

            TotCol = TotCol + 1
            I = I + 1
        Rst.MoveNext
        Loop
        
                m_ROW = osheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "S" & m_ROW
                With osheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                  With osheet.Range(lr, HR).Interior
                              
                     .Color = &HE0E0E0
                            
                 End With
                osheet.Range(lr, HR).Columns.AutoFit
                osheet.Range(lr, HR).Rows.AutoFit


        Set RsDiv = New Recordset



    
    
'    DB.CommandTimeout = 1000
'    DB.Execute " set arithabort on "
'
'    DB.Execute "delete from RPTArrivalDetails"
'
'
'    DB.Execute " set arithabort off "
    
     Set Rs = New Recordset
    
       ' Rs.Open " select * from VW_RM_ArrivalList where divcode='" & Divcode & "' and arrdate between '" & a & "' and '" & B & "'", DB
'       DB.Execute " insert into RPTArrivalDetails exec Ksp_RMI_ArrivalList_Datewise '" & Divcode & "' , '" & U & "' , '" & v & "' ,'" & S1 & "','" & s2 & "' "


       Rs.Open "select *from VW_RM_StockStatmentLotwise  order by catname ,lotno desc ", DB
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

        
        
        
            co = 7
            i1 = 1
            
            osheet.Cells(5, i1).CopyFromRecordset Rs
                


                
                m = osheet.UsedRange.Rows.Count
                Max = m + 1
                
'                osheet.Columns.AutoFit
                osheet.Rows.AutoFit
                

                
                m_ROW = osheet.UsedRange.Rows.Count + 1
                MR = "S" & m_ROW

                
                            m_ROW = osheet.UsedRange.Rows.Count + 1
                            lr = "A" & m_ROW
                            HR = "S" & m_ROW
                            With osheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With
'                      SheetName = ActiveSheet.name
'                        MsgBox (SheetName)
'                        Dim r As Range
'                        Set r = oSheet.Cells.find("Designation")
'                        MsgBox (r.Address)
'                        Dim a1() As String
'                        a1 = Split(r.Address, "$")
'                        MsgBox (a1(1))
'                        MsgBox (a1(2))
                        
'
'                oSheet.Cells(m_ROW + 1, 6).Formula = "=SUM(a1(1):F" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 8).Formula = "=SUM(H7:H" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 11).Formula = "=SUM(K4:K" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 12).Formula = "=SUM(L4:L" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 13).Formula = "=SUM(M4:M" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 14).Formula = "=SUM(N4:N" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G7:G" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 16).Formula = "=SUM(P7:P" & m_ROW & ")"
'                 oSheet.Cells(m_ROW + 1, 19).Formula = "=SUM(S7:S" & m_ROW & ")"
                
                m_ROW = osheet.UsedRange.Rows.Count
                ''
                
                lr = "A" & 1
                HR = "S" & m_ROW
               
                

        
                
                With osheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With
                
                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With
                
                
                      '   Max = Max + 1
                            m_ROW = osheet.UsedRange.Rows.Count
                            lr = "A" & m_ROW - 1
                            HR = "S" & m_ROW - 1
                            With osheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 11
                            .Color = vbBlue
                        End With
                
                
             '''''''-----------------------------    Abstract------------------------
            For I = 6 To m_ROW
                If InStr(UCase(Trim(osheet.Cells(I, 5))), UCase("Sub Tot")) > 0 Or InStr(UCase(Trim(osheet.Cells(I, 5))), UCase("Grand Tot")) > 0 Then
                      
                            osheet.Cells(I, 1) = ""
                            osheet.Cells(I, 2) = ""
                            osheet.Cells(I, 3) = ""
                       
                            lr = "A" & I
                            HR = "S" & I
                            With osheet.Range(lr, HR).Font
                                .Bold = True
                                .Size = 10
                                .Color = &H80&
                              '  .Interior.Color = &HE0E0E0
                            End With
                            With osheet.Range(lr, HR).Interior
                              
                                .Color = &HC0E0FF
                            
                            End With
                            'osheet.Cells(0, 1).EntireRow.Font.Bold = True
    
                 End If
      
             
            Next I
                

        

         m_ROW = m_ROW + 5
        osheet.Cells(m_ROW, 5).value = "Stock Statement Abstract"
        osheet.Range("A" + CStr(m_ROW), "N" + CStr(m_ROW)).HorizontalAlignment = Excel.xlCenter
        osheet.Range("A" + CStr(m_ROW), "N" + CStr(m_ROW)).MergeCells = True
        With osheet.Range("A" + CStr(m_ROW), "N" + CStr(m_ROW)).Font
        .Bold = True
        .Size = 14
        .Color = vbBlue
        End With
        


        

        Set Rst = New Recordset

        Rst.Open "select distinct RptHead,sno from  RM_EXCELLRPTHEAD where Rptname='STMTLOTABS' order by sno ", DB, adOpenStatic
        m_ROW = m_ROW + 1
        I = 2
        m_ROW = m_ROW + 1
        TotCol = 0
        Do While Not Rst.EOF
            osheet.Cells(m_ROW, I).value = Rst(0)
           ' oSheet.Cells(6, i).CopyFromRecordset Rst

            TotCol = TotCol + 1
            I = I + 1
        Rst.MoveNext
        Loop
        
                m_ROW = osheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "N" & m_ROW
                With osheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                osheet.Range(lr, HR).Columns.AutoFit
                osheet.Range(lr, HR).Rows.AutoFit
                With osheet.Range(lr, HR).Interior
                              
                     .Color = &HE0E0E0
                            
                 End With

        Set RsDiv = New Recordset


    
    
'    DB.CommandTimeout = 1000
'    DB.Execute " set arithabort on "
'
'    DB.Execute "delete from RPTArrivalDetails"
''
''
''    DB.Execute " set arithabort off "
'
    Set Rs = New Recordset
'
'       ' Rs.Open " select * from VW_RM_ArrivalList where divcode='" & Divcode & "' and arrdate between '" & a & "' and '" & B & "'", DB
'       DB.Execute " insert into RPTArrivalDetails exec Ksp_RMI_ArrivalList_Datewise '" & Divcode & "' , '" & a & "' , '" & B & "' "
'
'
       Rs.Open "SELECT *FROM VW_RM_StockStatmentLotwiseABS ORDER BY CATNAME ", DB
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

        
        
        
            co = 7
            i1 = 2
            
            osheet.Cells(m_ROW + 2, i1).CopyFromRecordset Rs
                


                
                m = osheet.UsedRange.Rows.Count
                Max = m + 1
                
'                osheet.Columns.AutoFit
                osheet.Rows.AutoFit
                

                
                m_ROW = osheet.UsedRange.Rows.Count + 1
                MR = "S" & m_ROW

                
                            m_ROW = osheet.UsedRange.Rows.Count + 1
                            lr = "A" & m_ROW
                            HR = "S" & m_ROW
                            With osheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With
'                      SheetName = ActiveSheet.name
'                        MsgBox (SheetName)
'                        Dim r As Range
'                        Set r = oSheet.Cells.find("Designation")
'                        MsgBox (r.Address)
'                        Dim a1() As String
'                        a1 = Split(r.Address, "$")
'                        MsgBox (a1(1))
'                        MsgBox (a1(2))
                        
'
'                oSheet.Cells(m_ROW + 1, 6).Formula = "=SUM(a1(1):F" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 8).Formula = "=SUM(H7:H" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 11).Formula = "=SUM(K4:K" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 12).Formula = "=SUM(L4:L" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 13).Formula = "=SUM(M4:M" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 14).Formula = "=SUM(N4:N" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G7:G" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 16).Formula = "=SUM(P7:P" & m_ROW & ")"
'                 oSheet.Cells(m_ROW + 1, 19).Formula = "=SUM(S7:S" & m_ROW & ")"
                
                m_ROW = osheet.UsedRange.Rows.Count
                ''
                
                lr = "A" & 1
                HR = "S" & m_ROW
                
                
 
'                For Each cell In Range("b2:b6")
'                    If InStr(cell.value, "Sub Total") > 0 Then
'                        cell.Offset(0, 1).value = ""
'                    End If
'                Next cell
                            
                
                With osheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With
                
                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With
                
                
                      '   Max = Max + 1
                                 m_ROW = osheet.UsedRange.Rows.Count
                            lr = "A" & m_ROW - 1
                            HR = "S" & m_ROW - 1
                            With osheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With
                

                For I = 6 To m_ROW
                If InStr(UCase(Trim(osheet.Cells(I, 3))), UCase("Sub Tot")) > 0 Or InStr(UCase(Trim(osheet.Cells(I, 3))), UCase("Grand Tot")) > 0 Then
                      
                            osheet.Cells(I, 2) = ""
'                            osheet.Cells(i, 2) = ""
'                            osheet.Cells(i, 3) = ""
                       
                            lr = "A" & I
                            HR = "S" & I
                            With osheet.Range(lr, HR).Font
                                .Bold = True
                                .Size = 10
                                .Color = &H80&
                              '  .Interior.Color = &HE0E0E0
                            End With
                            With osheet.Range(lr, HR).Interior
                              
                                .Color = &HC0E0FF
                            
                            End With
                            'osheet.Cells(0, 1).EntireRow.Font.Bold = True
    
                 End If
      
             
            Next I

'For i = 6 To M_ROW
'            If InStr(Trim(osheet.Cells(i, 6)), "Sub Tot") > 0 Then
'
'                        osheet.Cells(i, 1) = ""
'                        osheet.Cells(i, 4) = ""
'                         lr = "A" & i
'                        HR = "S" & i
'                        With osheet.Range(lr, HR).Font
'                            .Bold = True
'                            .Size = 12
'                            .Color = vbGrayed
'                        End With
'                        'osheet.Cells(0, 1).EntireRow.Font.Bold = True
'
'             End If
'             If InStr(Trim(osheet.Cells(i, 6)), "Grand Total") > 0 Then
'                        osheet.Cells(i, 1) = ""
'                        osheet.Cells(i, 4) = ""
'             End If
'
'Next i
                
MsgBox "Excel File Downloaded Successfully", vbInformation, head
                Set oBook = Nothing
                Set osheet = Nothing
                Set Myxl = Nothing
                Set oExcel = Nothing


Exit Sub
LotwiseStockExcel_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockStationwiseReport of Form StockStatmentReport", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub VarietywiseStockExcel()
On Error GoTo VarietywiseStockExcel_Error

Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim Rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant

CustCode = "": custname = "": ContNo = "": sortname = ""
'If Val(Myxl.Application.Version) >= 8 Then
     '   Set osheet = Myxl.ActiveSheet
    'Else
      '  Set osheet = Myxl
    'End If
     'Set osheet = Myxl.ActiveSheet
 tmpFile = "Arrival List Datewise"
tmppath1 = KALFOLDERDATA & tmpFile & ".xls"
'If Check1.value Then
'Set oExcel = CreateObject("ket.Application")
'Else '
Set oExcel = CreateObject("Excel.Application")

'End If
Set oBook = oExcel.Workbooks.ADD
Set osheet = oBook.Worksheets(1)

    oExcel.Visible = True
    Set osheet = oBook.Worksheets(1)
   oExcel.Visible = True
    
        Dim fd As String
        Dim td As String

        Dim stryear As String
        Set Rs = New Recordset
        Rs.Open "select AYEAR from pp_year where  '" & Format(yfdate, "yyyy-mm-dd") & "' between  ayfdate and AYLDATE ", DB
        If Not Rs.EOF Then
            stryear = Rs(0)
        End If
        
        Set Rs = New Recordset
        Rs.Open "select DIV_PRINTNAME ,DIV_UNITNAME from pp_divmas where divcode='" & Divcode & "'", DB
        
        
        osheet.Cells(1, 5).value = Rs(0)
        osheet.Range("A1", "N1").MergeCells = True
         osheet.Range("A1", "N1").HorizontalAlignment = Excel.xlCenter
        With osheet.Range("A1").Font
        .Bold = True
        .Size = 16
        .Color = vbBlue
        End With
        
        osheet.Cells(2, 5).value = Rs(1)
        osheet.Range("A2", "N2").MergeCells = True
         osheet.Range("A2", "N2").HorizontalAlignment = Excel.xlCenter
        With osheet.Range("A2").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With

      
        osheet.Name = "Stock Statement lotwise"
        
                
    intervalMinutes = -1
    U = Format(DTPicker1.value, "yyyy-mm-dd")
    v = Format(DTPicker2.value, "yyyy-mm-dd")


      
        osheet.Cells(3, 5).value = "Stock Statement Variety wise from  " & Format(DTPicker1.value, "dd-mm-yyyy") & " to " & Format(DTPicker2.value, "dd-mm-yyyy")
        osheet.Range("A3", "N3").HorizontalAlignment = Excel.xlCenter
        osheet.Range("A3", "N3").MergeCells = True
        With osheet.Range("A3", "N3").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        


        

        Set Rst = New Recordset

        Rst.Open "select distinct RptHead,sno from  RM_EXCELLRPTHEAD where Rptname='STMTVAR' order by sno ", DB, adOpenStatic

        I = 1
        Dim TotCol As Integer
        TotCol = 0
        Do While Not Rst.EOF
            osheet.Cells(4, I).value = Rst(0)
           ' oSheet.Cells(6, i).CopyFromRecordset Rst

            TotCol = TotCol + 1
            I = I + 1
        Rst.MoveNext
        Loop
        
                m_ROW = osheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "N" & m_ROW
                With osheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                  With osheet.Range(lr, HR).Interior
                              
                     .Color = &HE0E0E0
                            
                 End With
                osheet.Range(lr, HR).Columns.AutoFit
                osheet.Range(lr, HR).Rows.AutoFit


        Set RsDiv = New Recordset



    
    
'    DB.CommandTimeout = 1000
'    DB.Execute " set arithabort on "
'
'    DB.Execute "delete from RPTArrivalDetails"
'
'
'    DB.Execute " set arithabort off "
    
     Set Rs = New Recordset
    
       ' Rs.Open " select * from VW_RM_ArrivalList where divcode='" & Divcode & "' and arrdate between '" & a & "' and '" & B & "'", DB
'       DB.Execute " insert into RPTArrivalDetails exec Ksp_RMI_ArrivalList_Datewise '" & Divcode & "' , '" & U & "' , '" & v & "' ,'" & S1 & "','" & s2 & "' "


       Rs.Open "select *from VW_RM_StockStatmentVaritywise  order by varname  ", DB
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

        
        
        
            co = 7
            i1 = 1
            
            osheet.Cells(5, i1).CopyFromRecordset Rs
                


                
                m = osheet.UsedRange.Rows.Count
                Max = m + 1
                
               osheet.Columns.AutoFit
                osheet.Rows.AutoFit
                

                
                m_ROW = osheet.UsedRange.Rows.Count + 1
                MR = "N" & m_ROW

                
                            m_ROW = osheet.UsedRange.Rows.Count + 1
                            lr = "A" & m_ROW
                            HR = "N" & m_ROW
                            With osheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With
'                      SheetName = ActiveSheet.name
'                        MsgBox (SheetName)
'                        Dim r As Range
'                        Set r = oSheet.Cells.find("Designation")
'                        MsgBox (r.Address)
'                        Dim a1() As String
'                        a1 = Split(r.Address, "$")
'                        MsgBox (a1(1))
'                        MsgBox (a1(2))
                        
'
'                oSheet.Cells(m_ROW + 1, 6).Formula = "=SUM(a1(1):F" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 8).Formula = "=SUM(H7:H" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 11).Formula = "=SUM(K4:K" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 12).Formula = "=SUM(L4:L" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 13).Formula = "=SUM(M4:M" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 14).Formula = "=SUM(N4:N" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G7:G" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 16).Formula = "=SUM(P7:P" & m_ROW & ")"
'                 oSheet.Cells(m_ROW + 1, 19).Formula = "=SUM(S7:S" & m_ROW & ")"
                
                m_ROW = osheet.UsedRange.Rows.Count
                ''
                
                lr = "A" & 1
                HR = "N" & m_ROW
               
                

        
                
                With osheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With
                
                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With
                
                
                      '   Max = Max + 1
                            m_ROW = osheet.UsedRange.Rows.Count
                            lr = "A" & m_ROW - 1
                            HR = "N" & m_ROW - 1
                            With osheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 11
                            .Color = vbBlue
                        End With
                
           
             '''''''-----------------------------    Abstract------------------------
            For I = 6 To m_ROW
                If InStr(UCase(Trim(osheet.Cells(I, 1))), UCase("Sub Tot")) > 0 Or InStr(UCase(Trim(osheet.Cells(I, 1))), UCase("Grand Tot")) > 0 Then
                      
                            osheet.Cells(I, 1) = "Grand Total"
                            osheet.Cells(I, 2) = ""
                            osheet.Cells(I, 3) = ""
                       
                            lr = "A" & I
                            HR = "N" & I
                            With osheet.Range(lr, HR).Font
                                .Bold = True
                                .Size = 10
                                .Color = &H80&
                              '  .Interior.Color = &HE0E0E0
                            End With
                            With osheet.Range(lr, HR).Interior
                              
                                .Color = &HC0E0FF
                            
                            End With
                            'osheet.Cells(0, 1).EntireRow.Font.Bold = True
    
                 End If
      
             
            Next I
                 Exit Sub

        

         m_ROW = m_ROW + 5
        osheet.Cells(m_ROW, 5).value = "Stock Statement Abstract"
        osheet.Range("A" + CStr(m_ROW), "N" + CStr(m_ROW)).HorizontalAlignment = Excel.xlCenter
        osheet.Range("A" + CStr(m_ROW), "N" + CStr(m_ROW)).MergeCells = True
        With osheet.Range("A" + CStr(m_ROW), "N" + CStr(m_ROW)).Font
        .Bold = True
        .Size = 14
        .Color = vbBlue
        End With
        


        

        Set Rst = New Recordset

        Rst.Open "select distinct RptHead,sno from  RM_EXCELLRPTHEAD where Rptname='STMTLOTABS' order by sno ", DB, adOpenStatic
        m_ROW = m_ROW + 1
        I = 2
        m_ROW = m_ROW + 1
        TotCol = 0
        Do While Not Rst.EOF
            osheet.Cells(m_ROW, I).value = Rst(0)
           ' oSheet.Cells(6, i).CopyFromRecordset Rst

            TotCol = TotCol + 1
            I = I + 1
        Rst.MoveNext
        Loop
        
                m_ROW = osheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "N" & m_ROW
                With osheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                osheet.Range(lr, HR).Columns.AutoFit
                osheet.Range(lr, HR).Rows.AutoFit
                With osheet.Range(lr, HR).Interior
                              
                     .Color = &HE0E0E0
                            
                 End With

        Set RsDiv = New Recordset


    
    
'    DB.CommandTimeout = 1000
'    DB.Execute " set arithabort on "
'
'    DB.Execute "delete from RPTArrivalDetails"
''
''
''    DB.Execute " set arithabort off "
'
    Set Rs = New Recordset
'
'       ' Rs.Open " select * from VW_RM_ArrivalList where divcode='" & Divcode & "' and arrdate between '" & a & "' and '" & B & "'", DB
'       DB.Execute " insert into RPTArrivalDetails exec Ksp_RMI_ArrivalList_Datewise '" & Divcode & "' , '" & a & "' , '" & B & "' "
'
'
       Rs.Open "SELECT *FROM VW_RM_StockStatmentLotwiseABS ORDER BY CATNAME ", DB
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

        
        
        
            co = 7
            i1 = 2
            
            osheet.Cells(m_ROW + 2, i1).CopyFromRecordset Rs
                


                
                m = osheet.UsedRange.Rows.Count
                Max = m + 1
                
'                osheet.Columns.AutoFit
                osheet.Rows.AutoFit
                

                
                m_ROW = osheet.UsedRange.Rows.Count + 1
                MR = "S" & m_ROW

                
                            m_ROW = osheet.UsedRange.Rows.Count + 1
                            lr = "A" & m_ROW
                            HR = "S" & m_ROW
                            With osheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With

                
                m_ROW = osheet.UsedRange.Rows.Count
                ''
                
                lr = "A" & 1
                HR = "S" & m_ROW
                
                
 
'                For Each cell In Range("b2:b6")
'                    If InStr(cell.value, "Sub Total") > 0 Then
'                        cell.Offset(0, 1).value = ""
'                    End If
'                Next cell
                            
                
                With osheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With
                
                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With
                
                
                      '   Max = Max + 1
                                 m_ROW = osheet.UsedRange.Rows.Count
                            lr = "A" & m_ROW - 1
                            HR = "S" & m_ROW - 1
                            With osheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With
                

                For I = 6 To m_ROW
                If InStr(UCase(Trim(osheet.Cells(I, 3))), UCase("Sub Tot")) > 0 Or InStr(UCase(Trim(osheet.Cells(I, 3))), UCase("Grand Tot")) > 0 Then
                      
                            osheet.Cells(I, 2) = ""
'                            osheet.Cells(i, 2) = ""
'                            osheet.Cells(i, 3) = ""
                       
                            lr = "A" & I
                            HR = "S" & I
                            With osheet.Range(lr, HR).Font
                                .Bold = True
                                .Size = 10
                                .Color = &H80&
                              '  .Interior.Color = &HE0E0E0
                            End With
                            With osheet.Range(lr, HR).Interior
                              
                                .Color = &HC0E0FF
                            
                            End With
                            'osheet.Cells(0, 1).EntireRow.Font.Bold = True
    
                 End If
      
             
            Next I

MsgBox "Excel File Downloaded Successfully", vbInformation, head

                Set oBook = Nothing
                Set osheet = Nothing
                Set Myxl = Nothing
                Set oExcel = Nothing


Exit Sub
VarietywiseStockExcel_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockStationwiseReport of Form StockStatmentReport", vbInformation, head
Screen.MousePointer = 0
End Sub





Public Sub StockVarietyLedger(F_Date As String, T_Date As String, catcd As String, Optional pRecType As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
'divname = "KALPATHARU TEXTILES LIMITED"
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim tot11 As Double
Dim tot12 As Double
Dim tot13 As Double
Dim tot14 As Double
Dim tot15 As Double
Dim tot16 As Double
Dim Cnn As Connection
On Error GoTo StockVarietyReport2_Error

Set Cnn = New Connection

Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
SR = catcd
'SR = Trim(Mid$(SR, 1, InStr(SR, "-") - 1))
'vrectype = Trim(Left(pRecType, 3))
'Set rptv = New Report.ReportView
'a = FreeFile
'Close #a
'Close
''Open "C:\sv.TXT" For Output As #a
'Open KALFOLDERDATA & "\sv.TXT" For Output As #a
pg1 = 1
co = 0
'T_Date=DateAdd ("D",-1,T_Date)
          Cnn.Execute "delete Temp_per_stockstatementvar"
        
  If Year(yfdate) = Year(F_Date) And Year(F_Date) = Year(T_Date) Then
      YFF = Year(yfdate)
   ElseIf Year(yfdate) + 1 = Year(F_Date) Then
      YFF = Year(yfdate)
   Else
      YFF = Year(yfdate)
   End If
  
    Set RSV = New Recordset
        strSQL = " select c.varcode,C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,"
        strSQL = strSQL + "(SUM(ISNULL(A.RECBAL,0))+SUM(ISNULL(A.ISSRETBAL,0))) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,(SUM(ISNULL(A.RECKGS,0))+SUM(ISNULL(A.ISSRETKGS,0))) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.JWBAL,0))+SUM(ISNULL(A.TRANSBAL,0)) AS ISSBALES,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.JWKGS,0))+SUM(ISNULL(A.TRANSKGS,0)) AS ISSKGS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0))+SUM(ISNULL(A.JWVALUE,0))+SUM(ISNULL(A.TRANSVALUE,0)) AS ISSVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.TRANSBAL,0)) AS TRANSBAL,SUM(ISNULL(A.TRANSBOR,0)) AS TRANSBOR,SUM(ISNULL(A.TRANSKGS,0)) as TRANSKGS,SUM(ISNULL(A.TRANSVALUE,0)) AS TRANSVALUE,SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))-sum(isnull(a.ISSRETBAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0))-sum(isnull(a.ISSRETBAL,0)))) END CLOBALES,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0))+sum(isnull(ISSRETKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))+sum(isnull(ISSRETKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))-sum(isnull(ISSRETVAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))-sum(isnull(ISSRETVAL,0)))) END CLOSEVALUE"
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(DateAdd("D", 0, F_Date), DateAdd("D", 0, F_Date))
        strSQL = strSQL + " ) A inner join RM_LOT B on  A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE   inner join RM_VAR C on  B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE   "
        strSQL = strSQL + " inner join  RM_ProductprintDet Param on Param.SUPCD=b.supcd and Param.lotno=b.lotno and param.lotdt=b.lotdt and Param.varcode=b.varcode and Param.lotyear=b.lotyear and Param.divcode=b.divcode and Param.lottype=b.lottype and IPadd='" & LocalIPAdd & "'"
        strSQL = strSQL + " WHERE "

         strSQL = strSQL & "  b.divcode ='" & Divcode & "'   and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' and b.GODOWN in (" & L_God & ")  and  (b.transfertype in (" & L_Rec & ") or b.lottype  in (" & L_Rec & ") )  group by C.VARNAME,c.varcode"
                    
'        If Trim(SR) <> "ALL" Then
'
'            If vrectype <> "ALL" Then
'                If vrectype = "A" Then
'                    strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' group by C.VARNAME"
'                Else
'                    strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' group by C.VARNAME"
'                End If
'            Else
'                    strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME"
'            End If
'        Else
'            If vrectype <> "ALL" Then
'                If vrectype = "A" Then
'                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME"
'                Else
'                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME"
'                End If
'            Else
'                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME"
'            End If
'        End If
'        MsgBox rs1!varcode
    Set RSV = New Recordset
        RSV.Open strSQL, Cnn, adOpenStatic, adLockBatchOptimistic
If RSV.EOF Then
   MsgBox "No Records Found", vbInformation, head
   Exit Sub
End If
' Dim strSQL As String
     If Table_Exists("Temp_itemwiseLedger") Then
        DB.Execute "Drop table Temp_itemwiseLedger"
    End If
    strSQL = "Create Table Temp_itemwiseLedger (idate datetime,isno varchar(20),Supplier varchar(120),Lotno varchar(18),recbal decimal(12,2) default 0,reckg decimal(12,3) default 0,issbal decimal(12,2) default 0,isskg decimal(12,3) default 0,closbal decimal(12,2)default 0,closekg decimal(15,3)default 0,varcode varchar(10),trntype numeric(5,0))"
    DB.Execute strSQL
    
    If RSV.RecordCount > 0 Then
            RSV.MoveFirst
            Do While Not RSV.EOF
                clobales = RSV("clobales")
                clokgs = RSV("clokgs")
                   If F_Date <= yfdate Then

                    strSQL = "INSERT into Temp_itemwiseLedger(idate,isno,supplier,lotno,recbal,reckg,closbal,closekg,varcode,trntype) VALUES('" & Format(F_Date, "yyyy/mm/dd") & "','" & val(0) & "','" & "Opening Value " & " ',' '," & 0 & "," & 0 & "," & clobales & "," & clokgs & ",'" & RSV("varcode") & "',0 )"
                Else
                    strSQL = "INSERT into Temp_itemwiseLedger(idate,isno,supplier,lotno,recbal,reckg,closbal,closekg,varcode,trntype) VALUES('" & Format(F_Date, "yyyy/mm/dd") & "','" & val(0) & "','" & "Opening Value " & " ',' '," & 0 & "," & 0 & "," & RSV("opbales") & "," & RSV("opkgs") & ",'" & RSV("varcode") & "',0 )"
                End If
                DB.Execute strSQL
                clobales = 0
                clokgs = 0
                RSV.MoveNext
        Loop
    Else
        clobales = 0
        clokgs = 0
    End If
    

    

           Set rsg = New Recordset
'            If vrectype <> "A" Then
'                If vrectype = "A" Then
'                    tmptypestr = "a.LotType"
'                Else
'                    tmptypestr = "a.TransferType"
'                End If
'                  If vr <> "ALL" Then
'
'                rsg.Open "select Lotno,Lotdt,isnull(Billno,'')as Billno,Bales,netwt,SLNAME,varcode  from rm_lot A,FA_SLMAS B where  A.SUPCD=B.SLCODE AND lotdt between '" & Format(F_Date, "YYYY-MM-DD") & "'  and '" & Format(T_Date, "YYYY-MM-DD") & "'  AND VARCODE='" & vr & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
'                Else
                rsg.Open "select a.Lotno,a.Lotdt,isnull(Billno,'')as Billno,Bales,favaourablewgt netwt,SLNAME,a.varcode from rm_lot A inner join FA_SLMAS B on A.SUPCD=B.SLCODE    inner join  RM_ProductprintDet Param on Param.SUPCD=a.supcd and Param.lotno=a.lotno and param.lotdt=a.lotdt and Param.varcode=a.varcode and Param.lotyear=a.lotyear and Param.divcode=a.divcode and Param.lottype=a.lottype and IPadd='" & LocalIPAdd & "' where   a.lotdt between '" & Format(F_Date, "YYYY-MM-DD") & "'  and '" & Format(T_Date, "YYYY-MM-DD") & "'  and a.GODOWN in (" & L_God & ")  and  (a.transfertype in (" & L_Rec & ") or a.lottype  in (" & L_Rec & ") )  AND a.DIVCODE='" & Divcode & "'", DB, adOpenStatic
'                End If
'            Else
'                If vr = "ALL" Then
'                    rsg.Open "select Lotno,Lotdt,isnull(Billno,'')as Billno,Bales,netwt,SLNAME,varcode from rm_lot A,FA_SLMAS B where  A.SUPCD=B.SLCODE AND lotdt between '" & Format(F_Date, "YYYY-MM-DD") & "'  and '" & Format(T_Date, "YYYY-MM-DD") & "'   AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
'                Else
'                    rsg.Open "select Lotno,Lotdt,isnull(Billno,'')as Billno,Bales,netwt,SLNAME,varcode from rm_lot A,FA_SLMAS B where  A.SUPCD=B.SLCODE AND lotdt between '" & Format(F_Date, "YYYY-MM-DD") & "'  and '" & Format(T_Date, "YYYY-MM-DD") & "'   AND VARCODE='" & vr & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
'                End If
'            End If
            While Not rsg.EOF
                'clobales = clobales + rsg("bales")
                'clokgs = clokgs + rsg("NETWT")
                'If LDT = rsg("lotdt") Then
                'Else
                '    LDT = rsg("lotdt")
                'End If

                'strSQL = "INSERT into Temp_itemwiseLedger(idate,isno,supplier,lotno,recbal,reckg,closbal,closekg,varcode) VALUES('" & Format(rsg("lotdt"), "yyyy/mm/dd") & "','" & rsg("BILLNO") & "','" & rsg("SLNAME") & "','" & rsg("LOTNO") & "'," & rsg("bales") & "," & rsg("netwt") & "," & clobales & "," & clokgs & ",'" & rsg("varcode") & "' )"
                strSQL = "INSERT into Temp_itemwiseLedger(idate,isno,supplier,lotno,recbal,reckg,closbal,closekg,varcode,trntype) VALUES('" & Format(rsg("lotdt"), "yyyy/mm/dd") & "','" & rsg("BILLNO") & "','" & rsg("SLNAME") & "','" & rsg("LOTNO") & "'," & rsg("bales") & "," & rsg("netwt") & "," & 0 & "," & 0 & ",'" & rsg("varcode") & "',2 )"
                DB.Execute strSQL
                rsg.MoveNext
            Wend


            Set rsg = New Recordset
'            If vrectype <> "ALL" Then
'                If vrectype = "A" Then
'                    tmptypestr = "c.LotType"
'                Else
'                    tmptypestr = "c.TransferType"
'                End If
'                If vr = "ALL" Then
'                    SstrVarcode = ""
'                Else
'                    SstrVarcode = " and a.varcode='" & vr & "'"
'                End If
'                rsg.Open "select a.varcode,A.docdt,A.docno,ORDNO,EE.issue_desc, count(baleno) as Bales,sum(isskgs) AS NETWT from rm_issb A INNER JOIN RM_ISSH B ON   a.divcode=b.divcode and A.DOCNO=B.DOCNO AND A.DOCDT=B.DOCDT  INNER JOIN  rm_lot c  ON a.lotno=c.lotno and a.lotdt=c.lotdt and a.divcode=c.divcode and a.varcode=c.varcode  INNER JOIN RM_ISSUETYPE EE ON A.ISSTYPE = EE.ISSUE_CODE where " & _
'                     "  A.DOCDT  between '" & Format(F_Date, "YYYY-MM-DD") & "'  and '" & Format(T_Date, "YYYY-MM-DD") & "'   " & SstrVarcode & " AND A.DIVCODE='" & Divcode & "' and c.lotyear='" & Year(yfdate) & "' and " & tmptypestr & "='" & vrectype & "' GROUP BY a.varcode,A.DOCNO,A.DOCDT,ORDNO,EE.issue_desc", DB, dbopenstatic
'            Else
'            If vr = "ALL" Then
                rsg.Open "select a.varcode,A.docdt,A.docno,ORDNO,EE.issue_desc, count(baleno) as Bales,sum(isskgs) AS NETWT from rm_issb A INNER JOIN RM_ISSH B ON   a.divcode=b.divcode and A.DOCNO=B.DOCNO AND A.DOCDT=B.DOCDT  INNER JOIN  rm_lot c  ON a.lotno=c.lotno and a.lotdt=c.lotdt and a.divcode=c.divcode and a.varcode=c.varcode and a.catcd=c.catcd INNER JOIN RM_ISSUETYPE EE ON A.ISSTYPE = EE.ISSUE_CODE   " & _
                    " inner join  RM_ProductprintDet Param on Param.SUPCD=c.supcd and Param.lotno=c.lotno and param.lotdt=c.lotdt and Param.varcode=c.varcode and Param.lotyear=c.lotyear and Param.divcode=c.divcode and Param.lottype=c.lottype and IPadd='" & LocalIPAdd & "' WHERE" & _
                    " A.docdt  between '" & Format(F_Date, "YYYY-MM-DD") & "'  and '" & Format(T_Date, "YYYY-MM-DD") & "'   AND A.DIVCODE='" & Divcode & "'  and c.lotyear='" & Year(yfdate) & "' GROUP BY a.varcode,A.DOCNO,A.DOCDT,a.varcode,ORDNO,EE.issue_desc", DB, dbopenstatic
'            Else
'                rsg.Open "select a.varcode,A.docdt,A.docno,ORDNO,EE.issue_desc, count(baleno) as Bales,sum(isskgs) AS NETWT from rm_issb A INNER JOIN RM_ISSH B ON   a.divcode=b.divcode and A.DOCNO=B.DOCNO AND A.DOCDT=B.DOCDT  INNER JOIN  rm_lot c  ON a.lotno=c.lotno and a.lotdt=c.lotdt and a.divcode=c.divcode and a.varcode=c.varcode  INNER JOIN RM_ISSUETYPE EE ON A.ISSTYPE = EE.ISSUE_CODE WHERE" & _
'                     " A.docdt  between '" & Format(F_Date, "YYYY-MM-DD") & "'  and '" & Format(T_Date, "YYYY-MM-DD") & "'   and a.varcode='" & vr & "' AND A.DIVCODE='" & Divcode & "' and c.lotyear='" & Year(yfdate) & "'  GROUP BY a.varcode,A.DOCNO,A.DOCDT,a.varcode,ORDNO,EE.issue_desc", DB, dbopenstatic
'            End If
           ' End If
            While Not rsg.EOF
                'clobales = clobales - rsg("bales")
                'clokgs = clokgs - rsg("NETWT")
                'If idt = rsg("docdt") Then
                'Else
                 '   idt = rsg("docdt")
                'End If
                strSQL = "INSERT into Temp_itemwiseLedger(idate,isno,lotno,supplier,issbal,isskg,closbal,closekg,varcode,trntype) VALUES('" & Format(rsg("docdt"), "yyyy/mm/dd") & "','" & rsg("docno") & "' ,'" & IIf(IsNull(rsg("issue_desc")), " ", rsg("issue_desc")) & "','" & rsg("ordno") & "'," & rsg("bales") & "," & rsg("netwt") & "," & 0 & "," & 0 & ",'" & rsg("varcode") & "',3)"
                DB.Execute strSQL
                rsg.MoveNext
            Wend

 Set Rs = New Recordset
    Rs.Open "Select * from Temp_ItemwiseLedger", DB, adOpenStatic
    If Rs.EOF = False Then
        Dim ClsItmLedger As New clsCrystal
        Set ClsItmLedger.cryRept = Cry_StkItemwiseLedger
        ClsItmLedger.CrystalPrint
        Crr.Reset
        Crr.DiscardSavedData = True
        Crr.Connect = connectstring
        Crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        Crr.Formulas(0) = "divname = '" & divname & "'"
        Crr.ReportTitle = "Raw Material Item Ledger From " & Format(DTPicker1.value, "dd/mm/yy") & " To " & Format(DTPicker2.value, "dd/mm/yy")
        Crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        Crr.Action = 2
        Crr.PrinterCopies = 1
        Screen.MousePointer = 0
    

    
    Else
        MsgBox "No Records Found", vbInformation, head
        Exit Sub
    End If
Exit Sub






'-------------------------------------------------------




'rs1.MoveFirst
Do While Not RSV.EOF

            
         VTOT = RSV("opbales")
         vtot1 = RSV("opboras")
         vtot2 = RSV("opkgs")
         vtot3 = RSV("recbales")
         VTOT4 = RSV("recboras")
         VTOT5 = RSV("reckgs")
         VTOT6 = RSV("issbales")
         VTOT7 = RSV("issboras")
         VTOT8 = RSV("isskgs")
         
         
                        
        
            VTOT9 = RSV("clobales")
            VTOT10 = RSV("cloboras")
            VTOT11 = RSV("clokgs")
            vtotRejValue = RSV!REJVALUE
            VTOT15 = IIf(RSV("closevalue") < 0, 0, RSV("CLOSEVALUE"))
         
         VTOT12 = RSV("opvalue")
         VTOT13 = RSV("recvalue")
         VTOT14 = RSV("issvalue")
         
         vtotRejBales = RSV!rejBales
         vtotRejKgs = RSV!rejkgs
         vtotRejval = RSV!REJVALUE
         
         vtottrnsBales = RSV!TRANSBAL
         vtottrnsKgs = RSV!transkgs
         vtottrnsval = RSV!TRANSVALUE
      'End If
                
'   Else
'      GoTo 30
'   End If
                
           
'   Set Namers = New Recordset
'   Namers.Open "Select varname from rm_var where varcode='" & rs1("VARCODE") & "'", DB, adOpenStatic
'   If Not Namers.EOF Then VarName = Namers(0)
    VarName = Trim(RSV!VarName)
                
  
'   strSQL = "insert into Temp_per_stockstatementvar Values ('" & VarName & " ','" & (VTOT + vtot1) & "','" & vtot2 & "','" & VTOT12 & "','" & (vtot3 + VTOT4) & "','" & VTOT5 & "','" & VTOT13 & "','" & (VTOT6 + VTOT7) & "'," & VTOT8 & "," & VTOT14 & "," & (VTOT9 + VTOT10) & "," & VTOT11 & "," & VTOT15 & ")"
   
  DB.Execute "insert into Temp_per_stockstatementvar Values ('" & VarName & " '," & VTOT & "," & vtot1 & "," & vtot2 & "," & VTOT12 & "," & vtot3 & "," & VTOT4 & "," & VTOT5 & "," & VTOT13 & "," & VTOT6 & "," & VTOT7 & "," & VTOT8 & "," & VTOT14 & "," & vtotRejBales & "," & vtotRejKgs & "," & vtotRejval & "," & VTOT9 & "," & VTOT10 & "," & VTOT11 & "," & VTOT15 & ")"
   RSV.MoveNext
Loop
'
'If Check7.value = 1 Then
'    Call VarietywiseStockExcel
'    Exit Sub
'End If
'
'MousePointer = 11
'Set rsrate = New Recordset
'rsrate.Open "select * from rm_rateunit where unitcode='CAN'", DB, adOpenStatic
'If rsrate.RecordCount > 0 Then
' RATECY = rsrate("value")
'End If
'
''FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Periodical_VarietywiseStockStatement.rpt"
''FrmRpt.RptHead = 4
''parameter1 = DIVNAME
''parameter2 = Format(DTPicker2.value, "dd/MM/yy")
''parameter3 = Format(DTPicker3.value, "dd/MM/yy")
''parameter4 = RATECY
''FrmRpt.Show
'
'
'        Dim clsCryRpt1 As New clsCrystal
'        Set clsCryRpt1.cryRept = rep_stock_varwise1 'Rep_stock_varwise
'        clsCryRpt1.CrystalPrint
'        Crr.Reset
'        Crr.Connect = connectstring
'        Crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
'
'        Crr.Formulas(0) = "div='" & divname & "'"
'        Crr.Formulas(1) = "rep='" & "Varietywise Stock Statement From " & Format(DTPicker1.value, "dd/mm/yy") & " To " & Format(DTPicker2.value, "dd/mm/yy") & "'"
'
'        Crr.WindowShowPrintSetupBtn = True
'        Crr.WindowShowSearchBtn = True
'        Crr.WindowState = crptMaximized
'        SendKeys "{ENTER}"
'        Crr.Action = 1
'        Crr.PrinterCopies = 1
'
'


MousePointer = 0
Exit Sub

StockVarietyReport2_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockVarietyReport2 of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub


'
'
'Private Sub Paystatement_Custom()
'On Error GoTo BUTTON_Click_Error
'Dim CustCode As Variant
'Dim custname As Variant
'Dim custname1 As Variant
'Dim ContNo As Variant
'Dim sortname As Variant
'Dim rate As Variant
'Dim delqty As Variant
'Dim DesQty As Variant
'Dim balqty As Variant
'
'CustCode = "": custname = "": ContNo = "": sortname = ""
''If Val(Myxl.Application.Version) >= 8 Then
'     '   Set osheet = Myxl.ActiveSheet
'    'Else
'      '  Set osheet = Myxl
'    'End If
'     'Set osheet = Myxl.ActiveSheet
' tmpFile = "Salary Statement"
'tmppath1 = KALFOLDERDATA & tmpFile & ".xls"
''If Check1.value Then
''Set oExcel = CreateObject("ket.Application")
''Else '
'Set oExcel = CreateObject("Excel.Application")
'
''End If
'Set oBook = oExcel.Workbooks.ADD
'Set osheet = oBook.Worksheets(1)
'
'    oExcel.Visible = True
'    Set osheet = oBook.Worksheets(1)
'   oExcel.Visible = True
'
'        Dim fd As String
'        Dim td As String
'
'        Dim stryear As String
'        Set Rs = New Recordset
'        Rs.Open "select AYEAR from pp_year where  '" & Format(yfdate, "yyyy-mm-dd") & "' between  ayfdate and AYLDATE ", DB
'        If Not Rs.EOF Then
'            stryear = Rs(0)
'        End If
'
'        Set Rs = New Recordset
'        Rs.Open "select divname ,unit_name from pp_divmas where divcode='" & Divcode & "'", DB
'
'
'        osheet.Cells(1, 5).value = Rs(0)
'        osheet.Range("A1", "AF1").MergeCells = True
'         osheet.Range("A1", "AF1").HorizontalAlignment = Excel.xlCenter
'        With osheet.Range("A1").Font
'        .Bold = True
'        .Size = 16
'        .Color = vbBlue
'        End With
'
''        oSheet.Cells(2, 5).value = UCase(rs(1))
''        oSheet.Range("A2", "U2").MergeCells = True
''        oSheet.Range("A2", "U2").HorizontalAlignment = Excel.xlCenter
''        With oSheet.Range("A2").Font
''        .Bold = True
''        .Size = 10
''        .Color = vbBlue
''        End With
'
'
'        osheet.Name = "Salary Statement"
'
'        osheet.Cells(3, 5).value = "Salary Statement for the month of " & Combo1.Text & " " & Right(yfdate, 4)
'        osheet.Range("A3", "AF3").HorizontalAlignment = Excel.xlCenter
'        osheet.Range("A3", "AF3").MergeCells = True
'        With osheet.Range("A3", "AF3").Font
'        .Bold = True
'        .Size = 12
'        .Color = vbBlue
'        End With
'
'
'            a = Mid(DataCombo1.Text, 1, 2)
'    B = Mid(DataCombo2.Text, 1, 2)
'    c = Mid(DataCombo3.Text, InStr(1, DataCombo3.Text, "-") + 1)
'    d = Mid(DataCombo4.Text, InStr(1, DataCombo4.Text, "-") + 1)
'    Stra = Trim(Mid(DataCombo1.Text, InStr(DataCombo1.Text, "-") + 1, Len(DataCombo1.Text)))
'    Strb = Trim(Mid(DataCombo2.Text, InStr(DataCombo1.Text, "-") + 1, Len(DataCombo1.Text)))
'             '  Cattype = Right(Trim(cmbcattype.Text), 1)
'
'             ''Dim salType As String
''            If optbank.value Then
''                salType = "B"
''             ElseIf optcash.value Then
''                salType = "C"
''             Else
''                salType = "A"
''            End If
''
''            If Option11.value Then
''                uanType = "Y"
''             ElseIf Option10.value Then
''                uanType = "N"
''             Else
''                uanType = "A"
''            End If
'
'        If Option1.value Then
'        sType = "S"
'        ElseIf Option2.value Then
'        sType = "W"
'        Else
'
'        sType = "A"
'        End If
'
'
'        Set rst = New Recordset
'        If UCase(sCust_ID) = "SKY" Then
'            If sType = "W" Then
'            rst.Open "select distinct Colhead,sno from  Pr_Salaryhead order by sno ", DB, adOpenStatic
'            Else
'            rst.Open "select distinct Colhead,sno from  Pr_SalaryheadSF order by sno ", DB, adOpenStatic
'            End If
'        Else
'            rst.Open "select distinct Colhead,sno from  Pr_Salaryhead order by sno ", DB, adOpenStatic
'        End If
'        I = 1
'        Dim TotCol As Integer
'        TotCol = 0
'        Do While Not rst.EOF
'           ' oSheet.Cells(5, i).Value = Rst(0)
'           ' oSheet.Cells(6, i).CopyFromRecordset Rst
'
'            TotCol = TotCol + 1
'            I = I + 1
'        rst.MoveNext
'        Loop
'         osheet.Cells(5, 1).value = "1"
'                m_ROW = osheet.UsedRange.Rows.Count
'                lr = "A" & m_ROW
'                HR = "AF" & m_ROW
'                With osheet.Range(lr, HR).Font
'                .Bold = True
'                .Size = 9
'                .Color = vbBlue
'                End With
'                osheet.Range(lr, HR).Columns.AutoFit
'                osheet.Range(lr, HR).Rows.AutoFit
'
'
'
''        Set rs = New Recordset
''        If Stype = "W" Then
''            rs.Open "select count( Colhead) from  Pr_Salaryhead  ", DB, adOpenStatic
''        Else
''            rs.Open "select count( Colhead) from  Pr_Salaryhead  ", DB, adOpenStatic
''        End If
''        TotCol = rs(0)
'        Set Rs = New Recordset
''        If chkdep.value = 1 Then
''
''        rs.Open "exec KSP_SalaryStatementExcel '" & divcode & "','" & a & "','" & b & "','" & C & "','" & d & "','" & S1 & "','" & chkot.value & "','D','" & Trim(Cattype) & "','" & salType & "','" & uanType & "'", Db, adOpenStatic
''        Else
''        rs.Open "exec KSP_SalaryStatementExcel '" & divcode & "','" & a & "','" & b & "','" & C & "','" & d & "','" & S1 & "','" & chkot.value & "','C','" & Trim(Cattype) & "','" & salType & "','" & uanType & "'", Db, adOpenStatic
''        End If
'
' Call monthadd
'
'         L_Cat = ""
'
''       If Check1.value Then
''        L_Cat = "A"
''       Else
'         For l = 0 To List1.ListCount - 1
'             If List1.Selected(l) = True Then
'                 If L_Cat <> "" Then
'                     L_Cat = L_Cat + "," + Trim(Mid(List1.List(l), 1, InStr(List1.List(l), "-") - 1))
'                 Else
'                     L_Cat = Trim(Mid(List1.List(l), 1, InStr(List1.List(l), "-") - 1))
'                 End If
'             End If
'         Next l
''       End If
'
'
'        L_Dep = ""
''       If Check2.value Then
''        L_Dep = "A"
''       Else
'         For l = 0 To List2.ListCount - 1
'             If List2.Selected(l) = True Then
'                 If L_Dep <> "" Then
'                     L_Dep = L_Dep + "," + Trim(Mid(List2.List(l), 1, InStr(List2.List(l), "-") - 1))
'                 Else
'                     L_Dep = Trim(Mid(List2.List(l), 1, InStr(List2.List(l), "-") - 1))
'                 End If
'             End If
'         Next l
'
'
'
'
''       End If
'
'
'      L_Bank = ""
''       If Check2.value Then
''        L_Dep = "A"
''       Else
'         For l = 0 To List3.ListCount - 1
'             If List3.Selected(l) = True Then
'                 If L_Bank <> "" Then
'                     L_Bank = L_Bank + "," + Trim(Mid(List3.List(l), 1, InStr(List3.List(l), "-") - 1))
'                 Else
'                     L_Bank = Trim(Mid(List3.List(l), 1, InStr(List3.List(l), "-") - 1))
'                 End If
'             End If
'         Next l
'
'
'
'           a = Mid(DataCombo1.Text, 1, 2)
'          B = Mid(DataCombo2.Text, InStr(1, DataCombo2.Text, "-") + 1)
'          c = Mid(DataCombo3.Text, InStr(1, DataCombo3.Text, "-") + 1)
'          d = Mid(DataCombo4.Text, InStr(1, DataCombo4.Text, "-") + 1)
'            Stra = Trim(Mid(DataCombo1.Text, InStr(DataCombo1.Text, "-") + 1, Len(DataCombo1.Text)))
'            Strb = Trim(Mid(DataCombo2.Text, InStr(DataCombo2.Text, "-") + 1, Len(DataCombo2.Text)))
'
'        Set Rs = New Recordset
'            Rs.Open " SELECT wcat FROM pr_wcat WHERE (wcat in (select items from dbo.split ('" & L_Cat & "',',')) or '" & L_Cat & "'='A') AND isnull(STAFF_TYPE,'')='S'", DB, adOpenForwardOnly, adLockReadOnly
'
'        If Rs.EOF = False Then
'            strhead = "Salary Statement "
'        Else
'            strhead = "Wages Statement "
'        End If
'        Rs.Close
'
''        If C > d Then
''             MsgBox " No Records Found  Employee Selection Invalid ", vbInformation, head
''             Screen.MousePointer = 0
''             Exit Sub
''        End If
'   Dim StrEmpType As String
'
'   Dim Rsrec As Recordset
'   Set Rsrec = New Recordset
'
'   If Option6.value Then
'    StrEmpType = "Left"
'   ElseIf Option5.value Then
'    StrEmpType = "New"
'   ElseIf Option7.value Then
'    StrEmpType = "Live"
'   ElseIf Option8.value Then
'    StrEmpType = "Leave"
'   Else
'    StrEmpType = "ALL"
'   End If
'
'        If Rsrec.State = adStateOpen Then Rsrec.Close
'
'
'       ' Rsrec.Open " Exec KSP_SalarySTNew '" & divcode & "'," & S1 & ",'" & L_Cat & "','" & b & "','" & C & "','" & L_Dep & "'", Db, adOpenKeyset, adLockReadOnly
'
'
'        Set RsDiv = New Recordset
'            RsDiv.Open "Select * From pp_divmas where divcode='" & Divcode & "'", DB, adOpenDynamic, adLockOptimistic
'
'        Dim clsCryRptSaStmt As New clsCrystal
'
'       ' Dim Stype As String
'        If Option1.value Then
'            sType = "S"
'        ElseIf Option2.value Then
'            sType = "W"
'        Else
'            sType = "A"
'        End If
'
'
'
''MonthDate (Combo1.Text)
'
'MM = UCase(Combo1.Text)
'If MM = "APRIL" Then
'       S1 = Format(yfdate, "yyyy") & "04"
'       Mo = "01/04/" & Format(yfdate, "yyyy")
'       Mol = "30/04/" & Format(yfdate, "yyyy")
'    ElseIf MM = "MAY" Then
'       S1 = Format(yfdate, "yyyy") & "05"
'       Mo = "01/05/" & Format(yfdate, "yyyy")
'       Mol = "31/05/" & Format(yfdate, "yyyy")
'    ElseIf MM = "JUNE" Then
'       S1 = Format(yfdate, "yyyy") & "06"
'       Mo = "01/06/" & Format(yfdate, "yyyy")
'       Mol = "30/06/" & Format(yfdate, "yyyy")
'    ElseIf MM = "JULY" Then
'       S1 = Format(yfdate, "yyyy") & "07"
'       Mo = "01/07/" & Format(yfdate, "yyyy")
'       Mol = "31/07/" & Format(yfdate, "yyyy")
'    ElseIf MM = "AUGUST" Then
'       S1 = Format(yfdate, "yyyy") & "08"
'       Mo = "01/08/" & Format(yfdate, "yyyy")
'       Mol = "31/08/" & Format(yfdate, "yyyy")
'    ElseIf MM = "SEPTEMBER" Then
'       S1 = Format(yfdate, "yyyy") & "09"
'       Mo = "01/09/" & Format(yfdate, "yyyy")
'       Mol = "30/09/" & Format(yfdate, "yyyy")
'    ElseIf MM = "OCTOBER" Then
'       S1 = Format(yfdate, "yyyy") & "10"
'       Mo = "01/10/" & Format(yfdate, "yyyy")
'       Mol = "31/10/" & Format(yfdate, "yyyy")
'    ElseIf MM = "NOVEMBER" Then
'       S1 = Format(yfdate, "yyyy") & "11"
'       Mo = "01/11/" & Format(yfdate, "yyyy")
'       Mol = "30/11/" & Format(yfdate, "yyyy")
'    ElseIf MM = "DECEMBER" Then
'       S1 = Format(yfdate, "yyyy") & "12"
'       Mo = "01/12/" & Format(yfdate, "yyyy")
'       Mol = "31/12/" & Format(yfdate, "yyyy")
'    ElseIf MM = "JANUARY" Then
'       S1 = Format(yldate, ("yyyy")) & "01"
'       Mo = "01/01/" & Format(yldate, "yyyy")
'       Mol = "31/01/" & Format(yldate, "yyyy")
'    ElseIf MM = "FEBRUARY" Then
'       S1 = Format(yldate, ("yyyy")) & "02"
'       Mo = "01/02/" & Format(yldate, "yyyy")
'       Mol = Day(Mo) & "/02/" & Format(yldate, "yyyy")
'    ElseIf MM = "MARCH" Then
'       S1 = Format(yldate, ("yyyy")) & "03"
'       Mo = "01/03/" & Format(yldate, "yyyy")
'       Mol = "31/03/" & Format(yldate, "yyyy")
'    End If
'sday = 1
'Set TmpRst = New Recordset
'TmpRst.Open "select paycalcfday FROM pr_gendet WHERE divcode = '" & Divcode & "' ", DB
'
'If TmpRst.EOF = False Then
'    sday = TmpRst(0)
'End If
'
'    If sday = 1 Then
'         sDate = CDate(Trim(CStr(1)) & "/" & CStr(MONTH(Mo)) & "/" & Year(Mo))
'    Else
'        sDate = CDate(Trim(CStr(sday)) & "/" & CStr(MONTH(DateAdd("m", -1, Mo))) & "/" & CStr(Year(DateAdd("m", -1, Mo))))
'        If Not IsDate(sDate) Then
'            sDate = CDate(Trim(CStr(1)) & "/" & CStr(MONTH(Mo)) & "/" & Year(Mo))
'        End If
'    End If
'
'
'    EDate = DateAdd("m", 1, sDate) - 1
'
'
'
'
'    Rhead = "Employee OT Register For The Month of " & Format(Mo, "MMM-YYYY")
'    RHead1 = "Register of Workers For the Month of " & Format(Mo, "MMM-YYYY") & ". No. of days worked in the month: "
'    If RsDiv.State = adStateOpen Then RsDiv.Close
'    RsDiv.Open " select DIV_PRINTNAME,DIV_UNITNAME  from PP_DIVMAS where divcode='" & Divcode & "'", DB, adOpenKeyset, adLockReadOnly
'
'
'    If RsDiv.EOF = False Then
'        DIV_PRINTNAME = RsDiv("DIV_PRINTNAME")
'        DIV_UNITNAME = RsDiv("DIV_UNITNAME")
'    End If
'
'
'                    Dim salType As String
'            If optbank.value Then
'                salType = "B"
'             ElseIf optcash.value Then
'                salType = "C"
'             Else
'                salType = "A"
'            End If
'
'            Dim UANType As String
'
'            Dim rptdisp As String
'            If Option9.value Then
'             rptdisp = "0"
'            Else
'             rptdisp = "1"
'            End If
'            If Option11.value Then
'             UANType = "Y"
'            ElseIf Option12.value Then
'             UANType = "N"
'             Else
'             UANType = "A"
'            End If
'
'        osheet.Cells(5, 1).value = "S.NO"
'        osheet.Cells(5, 2).value = "Variety"
''        oSheet.Cells(5, 3).value = "Employee Name "
''        oSheet.Cells(5, 4).value = "Designation "
''        oSheet.Cells(5, 5).value = " PF NO"
'
'
'
''        DB.Execute ("Delete from SalaryStatmentExcel where Divcode='" & Divcode & "' ")
''
''     DB.Execute " insert  into SalaryStatmentExcel Exec Ksp_PR_SalaryStatement '" & Divcode & "','" & S1 & "','" & Trim(L_Cat) & "','" & Trim(L_Dep) & "','" & Trim(B) & "','" & Trim(c) & "','" & Trim(d) & "','" & Trim(sType) & "','" & Trim(StrEmpType) & "','" & Trim(Trim(Text1.Text)) & "','" & Trim(Trim(Combo2.Text)) & "','" & val(rptdisp) & "','" & CStr(Check10.value) & "','" & salType & "','" & L_Bank & "','" & UANType & "','" & Trim(Combo3.Text) & "','" & Trim(Combo4.Text) & "','" & Trim(LocalIPAdd) & "','" & Trim(sType) & "'" ', DB
'
'            co = 6
'            i1 = 1
'
'         '   oSheet.Cells(6, i1).CopyFromRecordset rs
'
'            Set Rs = New Recordset
'            Rs.Open "select row_number() over (order by  Ticketno) sno, Empno,Ename,Ticketno,isnull(pfno,'')pfno,isnull(desigdesc,'') desigdesc from (select Distinct Empno,Ename,Ticketno,isnull(pfno,'')pfno,isnull(desigdesc,'') desigdesc from SalaryStatmentExcel ) x order by Ticketno", DB, adOpenStatic
'
'        If Rs.EOF Then
'            MsgBox "No Record Found", vbInformation, head
'            Exit Sub
'        End If
'        Set rst = New Recordset
'        rst.Open "select distinct isnull(ColumHead,'') ColumHead,orderno from( SELECT ColumHead ,orderno froM SalaryStatmentExcel where ColumHead<>''  union all SELECT col2 ColumHead ,orderno  FROM SalaryStatmentExcel where col2<>'' ) x where ColumHead<>'' order by orderno ", DB, adOpenStatic
'        I = 6
'       ' Dim TotCol As Integer
'        TotCol = 0
'        Do While Not rst.EOF
'            osheet.Cells(5, I).value = rst(0)
'            TotCol = TotCol + 1
'            I = I + 1
'        rst.MoveNext
'        Loop
'
'
'           Do While Not Rs.EOF
'
'                osheet.Cells(co, 1).value = Rs("Sno") 'Format(STKrs!SaleOrderNo, "dd/MM/yyyy")
'                osheet.Cells(co, 2).value = Rs("Ticketno")
'                osheet.Cells(co, 3).value = Rs("Ename")
'                osheet.Cells(co, 4).value = Rs("desigdesc")
'                osheet.Cells(co, 5).value = Rs("pfno")
'
'                    Set rst = New Recordset
'                     rst.Open "select distinct isnull(value,'0') value,orderno,Empno,ColumHead from( SELECT value1 value,orderno,ColumHead,empno froM SalaryStatmentExcel where Divcode='" & Divcode & "' and empno='" & Rs("empno") & "'  union all SELECT value2 ColumHead ,orderno,col2 ColumHead,empno  FROM SalaryStatmentExcel where Divcode='" & Divcode & "' and empno='" & Rs("empno") & "' ) x where ColumHead<>'' order by orderno ", DB, adOpenStatic
'                     I = 6
'                    ' Dim TotCol As Integer
''                     TotCol = 0
''                     Do While Not Rst.EOF
''                         oSheet.Cells(co, i).Value = Rst(0)
''
''                         i = i + 1
''                     Rst.MoveNext
''                     Loop
'
'                    empnoo = rst("empno")
'
'                               Do While Not rst.EOF
'                               ii = 1
'                                   Do While ii <= (TotCol + 10)
'                                       If Trim(osheet.Cells(5, ii).value) = Trim(rst("ColumHead")) Then
'
'                                        osheet.Cells(co, ii).value = rst("value")
'                                        i1 = i1 + 1
'                                        GoTo NXT
'                                       End If
'                                       ii = ii + 1
'                                   Loop
'
'
'
'NXT:
'                                 rst.MoveNext
'                              Loop
'                                If i1 <> 7 Then
''                                   If empnoo <> Rst("empno") Then
''                                    '  co = co + 1
''                                   End If
'                                End If
''
'
'                co = co + 1
'
'            Rs.MoveNext
'            Loop
'
'                m = osheet.UsedRange.Rows.Count
'                Max = m + 1
'
'                osheet.Columns.AutoFit
'                osheet.Rows.AutoFit
'
'                'Dim M_ROW As Integer
'
'                m_ROW = osheet.UsedRange.Rows.Count + 1
'                MR = "O" & m_ROW
''                osheet.Cells(M_ROW + 1, 3) = "Grand Total"
''                'osheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G4 :G" & m_ROW & ")"
''                osheet.Cells(M_ROW + 1, 8) = CStr(GinvVal)
''                osheet.Cells(M_ROW + 1, 11) = CStr(GDuamt)
'
'                            m_ROW = osheet.UsedRange.Rows.Count + 1
'                            lr = "A" & m_ROW
'                            HR = "AF" & m_ROW
'                            With osheet.Range(lr, HR).Font
'                            .Bold = True
'                            .Size = 9
'                            .Color = vbBlue
'                        End With
''                      SheetName = ActiveSheet.name
''                        MsgBox (SheetName)
''                        Dim r As Range
''                        Set r = oSheet.Cells.find("Designation")
''                        MsgBox (r.Address)
''                        Dim a1() As String
''                        a1 = Split(r.Address, "$")
''                        MsgBox (a1(1))
''                        MsgBox (a1(2))
'
''
''                oSheet.Cells(m_ROW + 1, 6).Formula = "=SUM(a1(1):F" & m_ROW & ")"
''                oSheet.Cells(m_ROW + 1, 8).Formula = "=SUM(H7:H" & m_ROW & ")"
''                oSheet.Cells(m_ROW + 1, 11).Formula = "=SUM(K4:K" & m_ROW & ")"
''                oSheet.Cells(m_ROW + 1, 12).Formula = "=SUM(L4:L" & m_ROW & ")"
''                oSheet.Cells(m_ROW + 1, 13).Formula = "=SUM(M4:M" & m_ROW & ")"
''                oSheet.Cells(m_ROW + 1, 14).Formula = "=SUM(N4:N" & m_ROW & ")"
''                oSheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G7:G" & m_ROW & ")"
''                oSheet.Cells(m_ROW + 1, 16).Formula = "=SUM(P7:P" & m_ROW & ")"
''                 oSheet.Cells(m_ROW + 1, 19).Formula = "=SUM(S7:S" & m_ROW & ")"
'
'                m_ROW = osheet.UsedRange.Rows.Count
'                ''
'
'                lr = "A" & 1
'                HR = "AF" & m_ROW
'
'                With osheet.Range(lr, HR)
'                .Borders.LineStyle = xlThin
'
'                With .Borders(xlInsideHorizontal)
'                .LineStyle = xlContinuous
'                .Weight = xlThin
'                .ColorIndex = xlAutomatic
'                End With
'
'                With .Borders(xlInsideVertical)
'                .LineStyle = xlContinuous
'                .Weight = xlThin
'                .ColorIndex = xlAutomatic
'                End With
'
'                With .Borders(xlEdgeTop)
'                .Weight = xlThin
'                End With
'
'                With .Borders(xlEdgeBottom)
'                .Weight = xlThin
'                End With
'                End With
'
'               ' Myxl.Application.Visible = True
'
'                Set osheet = Nothing
'                Set Myxl = Nothing
'                'MsgBox "Copied " & Format$(RS.RecordCount) & " values."
''                Else
''                MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
''                'CmbVtype.SetFocus
''                Exit Sub
'          '  End If
'
'    Exit Sub
'BUTTON_Click_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form ", vbInformation, head
'
'End Sub




Private Sub load_DivisionListbox()
On Error GoTo DataCombo1_Change_Error
   Screen.MousePointer = 11
    Dim li As ListItem
    Set temprs = New Recordset


   
    If Repindex = 1 Then
   
    ElseIf Repindex = 2 Then
        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
'            temprs.Open "select distinct a.Abbr Code,a.Divname Name,Divcode  from Pallavaa..pp_Divmas a union all  select distinct a.Abbr Code,a.Divname Name,Divcode  from Sricheran..pp_Divmas a ", DB, adOpenStatic, adLockBatchOptimistic
            temprs.Open "select distinct a.Abbr Code,a.Divname Name,Divcode  from pp_Divmas a  ", DB, adOpenStatic, adLockBatchOptimistic
            
'            temprs.Open "select distinct a.Abbr Code,a.Divname Name,Divcode  from Pallavaa..pp_Divmas a ", DB, adOpenStatic, adLockBatchOptimistic
        Else
            temprs.Open "select distinct a.Abbr Code,a.Divname Name,Divcode  from pp_Divmas a  ", DB, adOpenStatic, adLockBatchOptimistic
        End If
    ElseIf Repindex = 3 Then
        If OptRec(0).value = True Then
            temprs.Open "select distinct isnull(sl.slname ,'') Name,isnull(a.supcd,'') code from rm_lot a left join fa_slmas sl on sl.slcode=a.supcd  where a.lottype='A' and a.divcode='" & Divcode & "' and  a.lotdt between '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' and '" & Format(DTPicker2.value, "YYYY-MM-DD") & "' order by isnull(sl.slname ,'')", DB, adOpenStatic, adLockBatchOptimistic
         Else
            temprs.Open "select distinct isnull(sl.slname ,'') Name,isnull(a.supcd,'') code from rm_lot a inner join FA_APDBTL ap on ap.refvocno=a.pjno and ap.refvocdt=a.pjdt and ap.reftc=a.pjtc and ap.divcode=a.divcode and ap.slcode=a.supcd left join fa_slmas sl on sl.slcode=a.supcd  where a.lottype='A' and a.divcode='" & Divcode & "' and  ap.vocdt between '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' and '" & Format(DTPicker2.value, "YYYY-MM-DD") & "' order by isnull(sl.slname ,'')", DB, adOpenStatic, adLockBatchOptimistic
         End If
          
         
    End If
  
    Lt_Division.ListItems.Clear
    If temprs.RecordCount > 0 Then
        Do While Not temprs.EOF
            Set l1 = Lt_Division.ListItems.ADD(, , temprs!Name)
            Lt_Division.ListItems(Lt_Division.ListItems.Count).ListSubItems.ADD , , temprs!code
            If Repindex = 2 Then
             Lt_Division.ListItems(Lt_Division.ListItems.Count).ListSubItems.ADD , , temprs!Divcode
            End If
            temprs.MoveNext
        Loop
    End If
    temprs.Close
            
  Check8.value = 1
  Call Check8_Click

    intervalMinutes = -1
    
       Screen.MousePointer = 0
 Exit Sub
DataCombo1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Rec list of Form Stock Statement", vbInformation, head
    Screen.MousePointer = 0
    
End Sub


Private Sub PUTDATAConsumption()
On Error GoTo BUTTON_Click_Error
Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim Rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant

CustCode = "": custname = "": ContNo = "": sortname = ""
Set oExcel = CreateObject("Excel.Application")

'End If

        L_Div = ""
        L_abbr = ""
        For I = 1 To Lt_Division.ListItems.Count
    
            If Lt_Division.ListItems.Item(I).Checked = True Then
                sRecCount = Trim(Lt_Division.ListItems(I).SubItems(2))
                sRecCount1 = Trim(Lt_Division.ListItems(I).SubItems(1))
                If L_Div <> "" Then
                    L_Div = L_Div + "," + "" + Trim(sRecCount) + ""
                    L_abbr = L_abbr + "," + "" + Trim(sRecCount1) + ""
                Else
                    L_Div = "" + Trim(sRecCount) + ""
                    L_abbr = "" + Trim(sRecCount1) + ""
                End If
            End If
        Next
    
        If L_Div = "" Then
            MsgBox "Please select Division ", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
  

          '  DB.BeginTrans
            DB.Execute "Delete From  RM_ProductprintDet where Divcode = '" & Divcode & "' and IPadd = '" & LocalIPAdd & "'"
         sRecSupp = ""
            For I = 1 To List_Supplier.ListItems.Count
                If List_Supplier.ListItems.Item(I).Checked Then
                     sRecSupp = Trim(List_Supplier.ListItems(I).SubItems(1))
                    
                    sql = "insert into RM_ProductprintDet(divcode,varcode,IPadd) " & _
                        "  values( '" & Divcode & "','" & Trim(Trim(List_Supplier.ListItems(I).SubItems(1))) & "', '" & LocalIPAdd & "')"
                    
                     DB.Execute sql
                End If
            Next I
           ' DB.CommitTrans
  

Set oBook = oExcel.Workbooks.ADD
Set osheet = oBook.Worksheets(1)
'    oExcel.Visible = True
    oExcel.Visible = True
    Set osheet = oBook.Worksheets(1)
   oExcel.Visible = True
        Dim fd As String
        Dim td As String

        fd = Format(DTPicker1.value, "yyyy-mm-dd")
        td = Format(DTPicker2.value, "yyyy-mm-dd")
        
        Set Rs = New Recordset
        Rs.Open "select divname,unit_name from pp_divmas where divcode='" & Divcode & "'", DB
        

        Dim stryear As String
        Set Rs = New Recordset
        Rs.Open "select AYEAR from pp_year where  '" & Format(yfdate, "yyyy-mm-dd") & "' between  ayfdate and AYLDATE ", DB
        If Not Rs.EOF Then
            stryear = Rs(0)
        End If
        
        Set Rs = New Recordset
        Rs.Open "select divname ,unit_name from pp_divmas where divcode='" & Divcode & "'", DB
        
        
        osheet.Cells(1, 5).value = Rs(0)
        osheet.Range("A1", "AR1").MergeCells = True
         osheet.Range("A1", "AR1").HorizontalAlignment = Excel.xlCenter
        With osheet.Range("A1").Font
        .Bold = True
        .Size = 16
        .Color = vbBlue
        End With
        
        
        intervalMinutes = -1
        U = Format(DTPicker1.value, "yyyy-mm-dd")
        v = Format(DTPicker2.value, "yyyy-mm-dd")


      
        osheet.Cells(3, 4).value = "Consumption List from " & Format(fd, "DD/MM/YY") & " TO " & Format(td, "DD/MM/YY")
        osheet.Range("A3", "N3").HorizontalAlignment = Excel.xlCenter
        osheet.Range("A3", "N3").MergeCells = True
        With osheet.Range("A3", "N3").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
      
'        XLSheet.Cells(7, 5).value = "Fibre Credit Note list from " & Format(fd, "DD/MM/YY") & " TO " & Format(td, "DD/MM/YY")
'
'        XLSheet.Range("A7", "M7").MergeCells = True
'        With XLSheet.Range("A7", "M7").Font
'        .Bold = True
'        .Size = 9
'        .Color = vbBlue
'        End With
        Dim chemstartpos, CHEMLAST As Integer
        packin = ""
        Mac = ""
        L_supcd = ""
    
'        Option2.Caption = "Divisionwise"
'        Option3.Caption = "Consolidated"
'        Option1.Caption = "Monthly"
        
    packin = Mid$(packin, 2, Len(packin))
   ' DB.Execute "Exec KSP_LoomPlan '" & Trim(divcode) & "','" & Format(fd, "YYYY-MM-DD") & "','" & Format(td, "YYYY-MM-DD") & "'"
      If Option1.value Then
        RPT_OPTION = "M"
      ElseIf Option3.value Then
        RPT_OPTION = "C"
      ElseIf Option2.value Then
        RPT_OPTION = "D"
      End If
      

      DB.CommandTimeout = 5000
      Set Rs = New Recordset
      If RPT_OPTION = "M" Then
        Rs.Open " Exec KSP_RMIDAY_IssueDetails_MonthExcel '" & L_Div & "','" & L_abbr & "','" & Format(DTPicker1.value, "YYYY-MM-DD") & "','" & Format(DTPicker2.value, "YYYY-MM-DD") & "','" & LocalIPAdd & "','" & Divcode & "','" & RPT_OPTION & "'", DB
      Else
        Rs.Open " Exec KSP_RMIDAY_IssueDetails_Excel '" & L_Div & "','" & L_abbr & "','" & Format(DTPicker1.value, "YYYY-MM-DD") & "','" & Format(DTPicker2.value, "YYYY-MM-DD") & "','" & LocalIPAdd & "','" & Divcode & "','" & RPT_OPTION & "'", DB
      End If

        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If
        Set ts = New Recordset
        'ts.Open "SELECT COLUMN_NAME  FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = N'Rmitest1'", DB
        ts.Open "select name from sys.all_columns where object_id=OBJECT_ID('Rmitest1') order by column_id", DB
        Dim inc As Integer
        inc = 1
        Do While Not ts.EOF
            osheet.Cells(4, inc).value = ts(0)
            inc = inc + 1
            ts.MoveNext
        Loop
        i1 = 1
                osheet.Cells(6, i1).CopyFromRecordset Rs
                m = osheet.UsedRange.Rows.Count
                Max = m + 1
                osheet.Columns.AutoFit
                osheet.Rows.AutoFit
                'Dim M_ROW As Integer
                
                m_ROW = osheet.UsedRange.Rows.Count + 1
                MR = "ZV" & m_ROW

                
                m_ROW = osheet.UsedRange.Rows.Count + 1
                lr = "A" & m_ROW
                HR = "ZV" & m_ROW
                With osheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With

                m_ROW = osheet.UsedRange.Rows.Count
                ''
                
                lr = "A" & 1
                HR = "ZV" & m_ROW
                
                With osheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With
                
                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With
                
                oExcel.Application.Visible = True
                
                Set osheet = Nothing
                Set Myxl = Nothing
  
  
  
    Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form ", vbInformation, head
  
End Sub



Private Sub PUTDATAConsumption_JAT()

On Error GoTo BUTTON_Click_Error
Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim Rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant

CustCode = "": custname = "": ContNo = "": sortname = ""
Set oExcel = CreateObject("Excel.Application")

        intervalMinutes = -1
        Screen.MousePointer = 11
        L_Dep = ""
        Dim FRgBillStatus As String
        If Option3.value = True Then
        FRgBillStatus = "C"
        ElseIf Option1.value = True Then
        FRgBillStatus = "P"
        Else
        FRgBillStatus = "A"
        End If
         L_Div = ""
         L_Dabbr = ""
        
        
          '  DB.BeginTrans
            DB.Execute "Delete From  RM_ProductprintDet where Divcode = '" & Divcode & "' and IPadd = '" & LocalIPAdd & "'"
         
            For I = 1 To List_Supplier.ListItems.Count
                If List_Supplier.ListItems.Item(I).Checked Then
                     sRecSupp = Trim(List_Supplier.ListItems(I).SubItems(1))
                     If Repindex = 1 Then
                         sql = "insert into RM_ProductprintDet(divcode,supcd,IPadd) " & _
                        "  values( '" & Divcode & "','" & Trim(Trim(List_Supplier.ListItems(I).SubItems(1))) & "', '" & LocalIPAdd & "')"
                     ElseIf Repindex = 3 Then
                     
                        sql = "insert into RM_ProductprintDet(divcode,lotno,lotdt,supcd,IPadd) " & _
                        "  values( '" & Divcode & "','" & Trim(Trim(List_Supplier.ListItems(I).SubItems(4))) & "','" & Format(Trim(List_Supplier.ListItems(I).SubItems(1)), "yyyy-mm-dd") & "','" & Trim(Trim(List_Supplier.ListItems(I).SubItems(2))) & "', '" & LocalIPAdd & "')"
                     ElseIf Repindex = 2 Then
                        sql = "insert into RM_ProductprintDet(divcode,varcode,IPadd) " & _
                        "  values( '" & Divcode & "','" & Trim(Trim(List_Supplier.ListItems(I).SubItems(1))) & "', '" & LocalIPAdd & "')"
                     End If
                     DB.Execute sql
                End If
            Next I
  

Set oBook = oExcel.Workbooks.ADD
Set osheet = oBook.Worksheets(1)
'    oExcel.Visible = True
    oExcel.Visible = True
    Set osheet = oBook.Worksheets(1)
   oExcel.Visible = True
        Dim fd As String
        Dim td As String

        fd = Format(DTPicker1.value, "yyyy-mm-dd")
        td = Format(DTPicker2.value, "yyyy-mm-dd")
        
        Set Rs = New Recordset
        Rs.Open "select divname,unit_name from pp_divmas where divcode='" & Divcode & "'", DB
        

        Dim stryear As String
        Set Rs = New Recordset
        Rs.Open "select AYEAR from pp_year where  '" & Format(yfdate, "yyyy-mm-dd") & "' between  ayfdate and AYLDATE ", DB
        If Not Rs.EOF Then
            stryear = Rs(0)
        End If
        
        Set Rs = New Recordset
        Rs.Open "select divname ,unit_name from pp_divmas where divcode='" & Divcode & "'", DB
        
        
        osheet.Cells(1, 5).value = Rs(0)
        osheet.Range("A1", "J1").MergeCells = True
         osheet.Range("A1", "J1").HorizontalAlignment = Excel.xlCenter
        With osheet.Range("A1").Font
        .Bold = True
        .Size = 16
        .Color = vbBlue
        End With
        
        osheet.Range("A2", "J2").MergeCells = True
        
        intervalMinutes = -1
        U = Format(DTPicker1.value, "yyyy-mm-dd")
        v = Format(DTPicker2.value, "yyyy-mm-dd")


      
        osheet.Cells(3, 4).value = "Supplier Payment List from " & Format(fd, "DD/MM/YY") & " TO " & Format(td, "DD/MM/YY")
'        osheet.Range("A3", "J3").HorizontalAlignment = Excel.xlCenter
        osheet.Range("A3", "J3").MergeCells = True
        With osheet.Range("A3", "J3").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
      
'        XLSheet.Cells(7, 5).value = "Fibre Credit Note list from " & Format(fd, "DD/MM/YY") & " TO " & Format(td, "DD/MM/YY")
'
'        XLSheet.Range("A7", "M7").MergeCells = True
'        With XLSheet.Range("A7", "M7").Font
'        .Bold = True
'        .Size = 9
'        .Color = vbBlue
'        End With
        Dim chemstartpos, CHEMLAST As Integer
        packin = ""
        Mac = ""
        L_supcd = ""
    
'        Option2.Caption = "Divisionwise"
'        Option3.Caption = "Consolidated"
'        Option1.Caption = "Monthly"
        
    packin = Mid$(packin, 2, Len(packin))
   ' DB.Execute "Exec KSP_LoomPlan '" & Trim(divcode) & "','" & Format(fd, "YYYY-MM-DD") & "','" & Format(td, "YYYY-MM-DD") & "'"
      If Option1.value Then
        RPT_OPTION = "M"
      ElseIf Option3.value Then
        RPT_OPTION = "C"
      ElseIf Option2.value Then
        RPT_OPTION = "D"
      End If
      
      Dim qerystring As String
        qerystring = " "
     If Option2.value Then
        qerystring = " where (TotBillAmt>=0 or TotBillAmt<=0)"
      ElseIf Option3.value Then
        qerystring = " where (Pay80PerAmt>0 and BalAmt>0)"
      ElseIf Option1.value Then
        qerystring = " where BalAmt=0"
      End If
      
      inc = 1
      
      osheet.Cells(4, inc).value = "S.No."
      inc = inc + 1
      osheet.Cells(4, inc).value = "Arrival Date"
      inc = inc + 1
      osheet.Cells(4, inc).value = "Party Name"
       inc = inc + 1
      osheet.Cells(4, inc).value = "Bill No."
       inc = inc + 1
      osheet.Cells(4, inc).value = "Bill Date."
      inc = inc + 1
      osheet.Cells(4, inc).value = "Mill Lot No."
      inc = inc + 1
      osheet.Cells(4, inc).value = "Variety."
      inc = inc + 1
      osheet.Cells(4, inc).value = "Candy Rate."
      inc = inc + 1
      osheet.Cells(4, inc).value = "No.of Bales."
      inc = inc + 1
      osheet.Cells(4, inc).value = "Weight in Kgs."
      inc = inc + 1
      osheet.Cells(4, inc).value = "Invoice Amount"
      inc = inc + 1
      osheet.Cells(4, inc).value = "TDS Amount"
      inc = inc + 1
      osheet.Cells(4, inc).value = "80% Payment Amount"
      inc = inc + 1
      osheet.Cells(4, inc).value = "Credit/Debit Amount"
      inc = inc + 1
      osheet.Cells(4, inc).value = "20% Payment Amount"
       inc = inc + 1
       osheet.Cells(4, inc).value = "Due Amount"
     
      With osheet.Range("A4", "P4").Font
        .Bold = True
        .Color = vbBlue
      End With
      

      DB.CommandTimeout = 5000
      Set Rs = New Recordset
      
      RptOpt = "L"
      DB.Execute "ksp_MIS_RM_CottonPayRpt '" & Divcode & "'," & "0" & ",'" & Format(DTPicker1.value, "yyyy-MM-dd") & "','" & Format(DTPicker2.value, "yyyy-MM-dd") & "','" & LocalIPAdd & "'"
      
     ' Rs.Open "select Sno,BulkTest_dt,SuppName,Spot,TotBillAmt,TDS_Amount,Pay80PerAmt,DebitAmt,Amt80,Payment20Per,invoice_by,invoice_dt,varietyname,SpotRate_Candy,SpotRate_bales,PartyWt_Kgs,BalAmt from RM_MIS_CottonPayAdv1", DB
        Rs.Open "select Sno,BulkTest_dt,SuppName,invoice_by,invoice_dt,Spot,varietyname,SpotRate_Candy,Totbale,PartyWt_Kgs,TotBillAmt,TDS_Amount,Pay80PerAmt,DebitAmt,Payment20Per,BalAmt from RM_MIS_CottonPayAdv1 " & qerystring & "  order by Sno asc", DB

'      If RPT_OPTION = "M" Then
'        Rs.Open " Exec KSP_RMIDAY_IssueDetails_MonthExcel '" & L_Div & "','" & L_abbr & "','" & Format(DTPicker1.value, "YYYY-MM-DD") & "','" & Format(DTPicker2.value, "YYYY-MM-DD") & "','" & LocalIPAdd & "','" & Divcode & "','" & RPT_OPTION & "'", DB
'      Else
'        Rs.Open " Exec KSP_RMIDAY_IssueDetails_Excel '" & L_Div & "','" & L_abbr & "','" & Format(DTPicker1.value, "YYYY-MM-DD") & "','" & Format(DTPicker2.value, "YYYY-MM-DD") & "','" & LocalIPAdd & "','" & Divcode & "','" & RPT_OPTION & "'", DB
'      End If
'
'        If Rs.EOF Then
'            MsgBox "No Record Found", vbInformation, head
'            Exit Sub
'        End If
'        Set ts = New Recordset
'        'ts.Open "SELECT COLUMN_NAME  FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = N'Rmitest1'", DB
'        ts.Open "select name from sys.all_columns where object_id=OBJECT_ID('Rmitest1') order by column_id", DB
'        Dim inc As Integer
'        inc = 1
'        Do While Not ts.EOF
'            osheet.Cells(4, inc).value = ts(0)
'            inc = inc + 1
'            ts.MoveNext
'        Loop
        i1 = 1
                osheet.Cells(6, i1).CopyFromRecordset Rs
                
                m = osheet.UsedRange.Rows.Count
                Max = m + 1
                osheet.Columns.AutoFit
                osheet.Rows.AutoFit
                'Dim M_ROW As Integer
                
                m_ROW = osheet.UsedRange.Rows.Count + 1
                MR = "P" & m_ROW

                
                m_ROW = osheet.UsedRange.Rows.Count + 1
                lr = "A" & m_ROW
                HR = "P" & m_ROW
                With osheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With

                m_ROW = osheet.UsedRange.Rows.Count
                
                osheet.Cells(m_ROW + 1, 3) = "Total"
                osheet.Cells(m_ROW + 1, 9).Formula = "=SUM(I6 :I" & m_ROW & ")"
                osheet.Cells(m_ROW + 1, 10).Formula = "=SUM(J6 :J" & m_ROW & ")"
                osheet.Cells(m_ROW + 1, 11).Formula = "=SUM(K6 :K" & m_ROW & ")"
                osheet.Cells(m_ROW + 1, 12).Formula = "=SUM(L6 :L" & m_ROW & ")"
                osheet.Cells(m_ROW + 1, 13).Formula = "=SUM(M6 :M" & m_ROW & ")"
                osheet.Cells(m_ROW + 1, 14).Formula = "=SUM(N6 :N" & m_ROW & ")"
                osheet.Cells(m_ROW + 1, 15).Formula = "=SUM(O6 :O" & m_ROW & ")"
                osheet.Cells(m_ROW + 1, 16).Formula = "=SUM(P6 :P" & m_ROW & ")"
                
                m_ROW = m_ROW + 1
                
                lr = "A" & m_ROW
                HR = "P" & m_ROW
                
                With osheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                lr = "A" & 1
                HR = "P" & m_ROW
                
                With osheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With
                
                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With
                
                oExcel.Application.Visible = True
                
                Set osheet = Nothing
                Set Myxl = Nothing
  
                Screen.MousePointer = 0
  
    Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form ", vbInformation, head
  
End Sub

