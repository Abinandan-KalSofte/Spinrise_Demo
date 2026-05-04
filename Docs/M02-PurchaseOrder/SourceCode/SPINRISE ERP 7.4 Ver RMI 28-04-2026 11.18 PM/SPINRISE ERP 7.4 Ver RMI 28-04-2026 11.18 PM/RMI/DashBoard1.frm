VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{65E121D4-0C60-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCHRT20.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Begin VB.Form Dashboard1 
   Caption         =   "Dash Board"
   ClientHeight    =   4980
   ClientLeft      =   75
   ClientTop       =   465
   ClientWidth     =   7275
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   4980
   ScaleWidth      =   7275
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame7 
      Height          =   855
      Left            =   16680
      TabIndex        =   39
      Top             =   10440
      Visible         =   0   'False
      Width           =   7215
   End
   Begin VB.Frame Frame1 
      BorderStyle     =   0  'None
      Height          =   8895
      Left            =   -120
      TabIndex        =   3
      Top             =   2000
      Width           =   20535
      Begin VB.PictureBox Picture1 
         BackColor       =   &H00C0C0C0&
         BorderStyle     =   0  'None
         Height          =   13680
         Left            =   120
         ScaleHeight     =   13680
         ScaleWidth      =   19935
         TabIndex        =   5
         Top             =   0
         Width           =   19935
         Begin VB.Frame Frame11 
            BackColor       =   &H00FFF4E1&
            Height          =   4185
            Left            =   0
            TabIndex        =   56
            Top             =   8400
            Width           =   13020
            Begin FPSpreadADO.fpSpread SPDPOSTATUS 
               Height          =   3750
               Left            =   45
               TabIndex        =   57
               Top             =   360
               Width           =   12930
               _Version        =   524288
               _ExtentX        =   22807
               _ExtentY        =   6615
               _StockProps     =   64
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ScrollBarExtMode=   -1  'True
               SpreadDesigner  =   "DashBoard1.frx":0000
            End
            Begin VB.Label Label24 
               Alignment       =   2  'Center
               Appearance      =   0  'Flat
               BackColor       =   &H80000005&
               BackStyle       =   0  'Transparent
               Caption         =   "PO Status "
               BeginProperty Font 
                  Name            =   "Palatino Linotype"
                  Size            =   9
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000008&
               Height          =   255
               Left            =   -210
               TabIndex        =   58
               Top             =   120
               Width           =   13125
            End
         End
         Begin VB.Frame Frame6 
            BackColor       =   &H00FFF4E1&
            Height          =   3585
            Left            =   13200
            TabIndex        =   34
            Top             =   4800
            Width           =   6630
            Begin FPSpreadADO.fpSpread SPDTOPSUP 
               Height          =   3150
               Left            =   45
               TabIndex        =   35
               Top             =   360
               Width           =   6570
               _Version        =   524288
               _ExtentX        =   11589
               _ExtentY        =   5556
               _StockProps     =   64
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ScrollBarExtMode=   -1  'True
               SpreadDesigner  =   "DashBoard1.frx":049E
            End
            Begin VB.Label lblSup 
               Alignment       =   2  'Center
               BackStyle       =   0  'Transparent
               Caption         =   "Top 5 Suppliers For the Year"
               BeginProperty Font 
                  Name            =   "Palatino Linotype"
                  Size            =   9
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H000000C0&
               Height          =   240
               Left            =   60
               TabIndex        =   36
               Top             =   90
               Width           =   6690
            End
         End
         Begin VB.Frame Frame3 
            BackColor       =   &H00FFF4E1&
            Height          =   3585
            Left            =   6600
            TabIndex        =   31
            Top             =   4800
            Width           =   6420
            Begin FPSpreadADO.fpSpread SPDISSUEMIX 
               Height          =   3150
               Left            =   45
               TabIndex        =   32
               Top             =   360
               Width           =   6330
               _Version        =   524288
               _ExtentX        =   11165
               _ExtentY        =   5556
               _StockProps     =   64
               BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                  Name            =   "Tahoma"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ScrollBarExtMode=   -1  'True
               SpreadDesigner  =   "DashBoard1.frx":093C
            End
            Begin VB.Label Label4 
               Alignment       =   2  'Center
               Appearance      =   0  'Flat
               BackColor       =   &H80000005&
               BackStyle       =   0  'Transparent
               Caption         =   "Mixwise Issue"
               BeginProperty Font 
                  Name            =   "Palatino Linotype"
                  Size            =   9
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000008&
               Height          =   255
               Left            =   30
               TabIndex        =   33
               Top             =   120
               Width           =   7005
            End
         End
         Begin VB.Frame Frame2 
            Height          =   3615
            Left            =   0
            TabIndex        =   25
            Top             =   4800
            Width           =   6495
            Begin VB.Frame Frame4 
               BackColor       =   &H00FFF4E1&
               BorderStyle     =   0  'None
               Height          =   3375
               Left            =   120
               TabIndex        =   26
               Top             =   120
               Width           =   6285
               Begin FPSpreadADO.fpSpread SpdVarStock 
                  Height          =   3150
                  Left            =   0
                  TabIndex        =   30
                  Top             =   240
                  Width           =   6330
                  _Version        =   524288
                  _ExtentX        =   11165
                  _ExtentY        =   5556
                  _StockProps     =   64
                  BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                     Name            =   "Tahoma"
                     Size            =   8.25
                     Charset         =   0
                     Weight          =   400
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  ScrollBarExtMode=   -1  'True
                  SpreadDesigner  =   "DashBoard1.frx":0DDA
               End
               Begin VB.Label lblStk 
                  Alignment       =   2  'Center
                  BackStyle       =   0  'Transparent
                  Caption         =   "Varietywise Stock"
                  BeginProperty Font 
                     Name            =   "Palatino Linotype"
                     Size            =   9
                     Charset         =   0
                     Weight          =   700
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  ForeColor       =   &H000000C0&
                  Height          =   270
                  Left            =   120
                  TabIndex        =   28
                  Top             =   0
                  Width           =   6165
               End
               Begin VB.Label lblstkUp 
                  Alignment       =   2  'Center
                  BackStyle       =   0  'Transparent
                  Caption         =   "Stock Will Last Up To : "
                  BeginProperty Font 
                     Name            =   "Palatino Linotype"
                     Size            =   9.75
                     Charset         =   0
                     Weight          =   700
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  ForeColor       =   &H00C000C0&
                  Height          =   300
                  Left            =   360
                  TabIndex        =   27
                  Top             =   6000
                  Width           =   6360
               End
            End
         End
         Begin TabDlg.SSTab SSTab5 
            Height          =   4800
            Left            =   0
            TabIndex        =   6
            Top             =   0
            Width           =   19905
            _ExtentX        =   35110
            _ExtentY        =   8467
            _Version        =   393216
            Tabs            =   4
            Tab             =   3
            TabsPerRow      =   4
            TabHeight       =   520
            BackColor       =   0
            TabCaption(0)   =   "Stock Details"
            TabPicture(0)   =   "DashBoard1.frx":1278
            Tab(0).ControlEnabled=   0   'False
            Tab(0).Control(0)=   "AnimatedChart2"
            Tab(0).Control(1)=   "AnimatedChart1"
            Tab(0).Control(2)=   "MSChart2"
            Tab(0).ControlCount=   3
            TabCaption(1)   =   "Order Details"
            TabPicture(1)   =   "DashBoard1.frx":1294
            Tab(1).ControlEnabled=   0   'False
            Tab(1).Control(0)=   "AnimatedChart5"
            Tab(1).Control(1)=   "MSChart1"
            Tab(1).Control(2)=   "Picture3"
            Tab(1).Control(3)=   "Frame8"
            Tab(1).Control(4)=   "AnimatedChart3"
            Tab(1).ControlCount=   5
            TabCaption(2)   =   "Receipt Details"
            TabPicture(2)   =   "DashBoard1.frx":12B0
            Tab(2).ControlEnabled=   0   'False
            Tab(2).Control(0)=   "AnimatedChart4"
            Tab(2).Control(1)=   "Frame9"
            Tab(2).Control(2)=   "Frame10"
            Tab(2).ControlCount=   3
            TabCaption(3)   =   "Issue Details"
            TabPicture(3)   =   "DashBoard1.frx":12CC
            Tab(3).ControlEnabled=   -1  'True
            Tab(3).Control(0)=   "MSChart5"
            Tab(3).Control(0).Enabled=   0   'False
            Tab(3).Control(1)=   "MSChart3"
            Tab(3).Control(1).Enabled=   0   'False
            Tab(3).Control(2)=   "SSTab2"
            Tab(3).Control(2).Enabled=   0   'False
            Tab(3).Control(3)=   "cmdrowcol(1)"
            Tab(3).Control(3).Enabled=   0   'False
            Tab(3).Control(4)=   "cmdrowcol(0)"
            Tab(3).Control(4).Enabled=   0   'False
            Tab(3).Control(5)=   "cmdrowcol2(2)"
            Tab(3).Control(5).Enabled=   0   'False
            Tab(3).Control(6)=   "cmdrowcol2(1)"
            Tab(3).Control(6).Enabled=   0   'False
            Tab(3).ControlCount=   7
            Begin VB.CommandButton cmdrowcol2 
               BackColor       =   &H00FFFF80&
               Caption         =   "Row/Col"
               BeginProperty Font 
                  Name            =   "Arial Narrow"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Index           =   1
               Left            =   18720
               Style           =   1  'Graphical
               TabIndex        =   65
               ToolTipText     =   "Rows into Columns"
               Top             =   480
               Visible         =   0   'False
               Width           =   855
            End
            Begin VB.CommandButton cmdrowcol2 
               BackColor       =   &H00FFFF80&
               Caption         =   "Col/Row"
               BeginProperty Font 
                  Name            =   "Arial Narrow"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Index           =   2
               Left            =   18720
               Style           =   1  'Graphical
               TabIndex        =   64
               ToolTipText     =   "Columns into Rows"
               Top             =   840
               Visible         =   0   'False
               Width           =   855
            End
            Begin VB.CommandButton cmdrowcol 
               BackColor       =   &H00FFFF80&
               Caption         =   "Row/Col"
               BeginProperty Font 
                  Name            =   "Arial Narrow"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Index           =   0
               Left            =   12360
               Style           =   1  'Graphical
               TabIndex        =   62
               ToolTipText     =   "Rows into Columns"
               Top             =   480
               Visible         =   0   'False
               Width           =   855
            End
            Begin VB.CommandButton cmdrowcol 
               BackColor       =   &H00FFFF80&
               Caption         =   "Col/Row"
               BeginProperty Font 
                  Name            =   "Arial Narrow"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Index           =   1
               Left            =   12360
               Style           =   1  'Graphical
               TabIndex        =   61
               ToolTipText     =   "Columns into Rows"
               Top             =   840
               Visible         =   0   'False
               Width           =   855
            End
            Begin VB.Frame Frame10 
               BackColor       =   &H00FFF4E1&
               Height          =   4305
               Left            =   -62040
               TabIndex        =   52
               Top             =   360
               Width           =   6900
               Begin FPSpreadADO.fpSpread SPDUNBILLLIST 
                  Height          =   3870
                  Left            =   45
                  TabIndex        =   53
                  Top             =   360
                  Width           =   6810
                  _Version        =   524288
                  _ExtentX        =   12012
                  _ExtentY        =   6826
                  _StockProps     =   64
                  BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                     Name            =   "Tahoma"
                     Size            =   8.25
                     Charset         =   0
                     Weight          =   400
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  ScrollBarExtMode=   -1  'True
                  SpreadDesigner  =   "DashBoard1.frx":12E8
               End
               Begin VB.Label Label23 
                  Alignment       =   2  'Center
                  Appearance      =   0  'Flat
                  BackColor       =   &H80000005&
                  BackStyle       =   0  'Transparent
                  Caption         =   "UnBilled Lot List"
                  BeginProperty Font 
                     Name            =   "Palatino Linotype"
                     Size            =   9
                     Charset         =   0
                     Weight          =   700
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  ForeColor       =   &H80000008&
                  Height          =   255
                  Left            =   30
                  TabIndex        =   54
                  Top             =   120
                  Width           =   7365
               End
            End
            Begin VB.Frame Frame9 
               BackColor       =   &H00FFF4E1&
               Height          =   4305
               Left            =   -68640
               TabIndex        =   49
               Top             =   360
               Width           =   6540
               Begin FPSpreadADO.fpSpread SPDRECLIST 
                  Height          =   3870
                  Left            =   45
                  TabIndex        =   50
                  Top             =   360
                  Width           =   6450
                  _Version        =   524288
                  _ExtentX        =   11377
                  _ExtentY        =   6826
                  _StockProps     =   64
                  BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                     Name            =   "Tahoma"
                     Size            =   8.25
                     Charset         =   0
                     Weight          =   400
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  ScrollBarExtMode=   -1  'True
                  SpreadDesigner  =   "DashBoard1.frx":1786
               End
               Begin VB.Label Label22 
                  Alignment       =   2  'Center
                  Appearance      =   0  'Flat
                  BackColor       =   &H80000005&
                  BackStyle       =   0  'Transparent
                  Caption         =   "Receipt List"
                  BeginProperty Font 
                     Name            =   "Palatino Linotype"
                     Size            =   9
                     Charset         =   0
                     Weight          =   700
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  ForeColor       =   &H80000008&
                  Height          =   255
                  Left            =   30
                  TabIndex        =   51
                  Top             =   120
                  Width           =   7365
               End
            End
            Begin RMI.AnimatedChart AnimatedChart3 
               Height          =   4335
               Left            =   -74920
               TabIndex        =   48
               Top             =   360
               Width           =   6495
               _extentx        =   11456
               _extenty        =   7646
               utopmargin      =   750
               ubottommargin   =   825
               uleftmargin     =   825
               urightmargin    =   825
               ucontentborder  =   -1  'True
               uselectable     =   0   'False
               uhottracking    =   0   'False
               uselectedcolumn =   -1
               ucharttitle     =   "Pending Order List "
               uchartsubtitle  =   "Supplier Wise(Qty in  TON)"
               udisplayxaxis   =   -1  'True
               udisplayyaxis   =   -1  'True
               ucolorbars      =   -1  'True
               uintersectmajor =   10
               uintersectminor =   2
               umaxyvalue      =   100
               udisplaydescript=   0   'False
               uxaxislabel     =   ""
               uyaxislabel     =   ""
               backcolor       =   -2147483643
               forecolor       =   16777215
               activetheme     =   0
            End
            Begin VB.Frame Frame8 
               BackColor       =   &H00FFF4E1&
               Height          =   4425
               Left            =   -61800
               TabIndex        =   45
               Top             =   350
               Width           =   6660
               Begin FPSpreadADO.fpSpread SPDORDList 
                  Height          =   3990
                  Left            =   45
                  TabIndex        =   46
                  Top             =   360
                  Width           =   6570
                  _Version        =   524288
                  _ExtentX        =   11589
                  _ExtentY        =   7038
                  _StockProps     =   64
                  BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                     Name            =   "Tahoma"
                     Size            =   8.25
                     Charset         =   0
                     Weight          =   400
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  ScrollBarExtMode=   -1  'True
                  SpreadDesigner  =   "DashBoard1.frx":1C24
               End
               Begin VB.Label Label6 
                  Alignment       =   2  'Center
                  Appearance      =   0  'Flat
                  BackColor       =   &H80000005&
                  BackStyle       =   0  'Transparent
                  Caption         =   "Order List"
                  BeginProperty Font 
                     Name            =   "Palatino Linotype"
                     Size            =   9
                     Charset         =   0
                     Weight          =   700
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  ForeColor       =   &H80000008&
                  Height          =   255
                  Left            =   -450
                  TabIndex        =   47
                  Top             =   120
                  Width           =   7485
               End
            End
            Begin RMI.AnimatedChart AnimatedChart2 
               Height          =   4335
               Left            =   -68280
               TabIndex        =   38
               Top             =   380
               Width           =   12975
               _extentx        =   23098
               _extenty        =   9340
               utopmargin      =   750
               ubottommargin   =   825
               uleftmargin     =   825
               urightmargin    =   825
               ucontentborder  =   -1  'True
               uselectable     =   0   'False
               uhottracking    =   0   'False
               uselectedcolumn =   -1
               ucharttitle     =   "Stock Chart"
               uchartsubtitle  =   "Variety Wise"
               udisplayxaxis   =   -1  'True
               udisplayyaxis   =   -1  'True
               ucolorbars      =   -1  'True
               uintersectmajor =   10
               uintersectminor =   2
               umaxyvalue      =   100
               udisplaydescript=   0   'False
               uxaxislabel     =   ""
               uyaxislabel     =   ""
               backcolor       =   -2147483643
               forecolor       =   16777215
               activetheme     =   0
            End
            Begin RMI.AnimatedChart AnimatedChart1 
               Height          =   4335
               Left            =   -74880
               TabIndex        =   37
               Top             =   380
               Width           =   6495
               _extentx        =   11245
               _extenty        =   9340
               utopmargin      =   750
               ubottommargin   =   825
               uleftmargin     =   825
               urightmargin    =   825
               ucontentborder  =   -1  'True
               uselectable     =   0   'False
               uhottracking    =   0   'False
               uselectedcolumn =   -1
               ucharttitle     =   "Stock Chart"
               uchartsubtitle  =   "Category wise"
               udisplayxaxis   =   -1  'True
               udisplayyaxis   =   -1  'True
               ucolorbars      =   -1  'True
               uintersectmajor =   10
               uintersectminor =   2
               umaxyvalue      =   100
               udisplaydescript=   0   'False
               uxaxislabel     =   ""
               uyaxislabel     =   ""
               backcolor       =   -2147483643
               forecolor       =   16777215
               activetheme     =   0
            End
            Begin VB.PictureBox Picture3 
               Appearance      =   0  'Flat
               BackColor       =   &H00FFFFFF&
               BorderStyle     =   0  'None
               FillStyle       =   0  'Solid
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   9.75
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H80000008&
               Height          =   4725
               Left            =   -55560
               ScaleHeight     =   315
               ScaleMode       =   3  'Pixel
               ScaleWidth      =   243
               TabIndex        =   29
               Top             =   1020
               Width           =   3645
            End
            Begin MSChart20Lib.MSChart MSChart1 
               Height          =   6705
               Left            =   -55725
               OleObjectBlob   =   "DashBoard1.frx":20C2
               TabIndex        =   23
               Top             =   60
               Visible         =   0   'False
               Width           =   30
            End
            Begin MSChart20Lib.MSChart MSChart2 
               Height          =   6465
               Left            =   -60840
               OleObjectBlob   =   "DashBoard1.frx":4792
               TabIndex        =   24
               Top             =   300
               Visible         =   0   'False
               Width           =   585
            End
            Begin TabDlg.SSTab SSTab2 
               Height          =   4260
               Left            =   0
               TabIndex        =   40
               Top             =   480
               Width           =   6945
               _ExtentX        =   12250
               _ExtentY        =   7514
               _Version        =   393216
               Tabs            =   1
               TabsPerRow      =   1
               TabHeight       =   520
               BackColor       =   0
               TabCaption(0)   =   "Tab 0"
               TabPicture(0)   =   "DashBoard1.frx":6FC5
               Tab(0).ControlEnabled=   -1  'True
               Tab(0).Control(0)=   "Frame5"
               Tab(0).Control(0).Enabled=   0   'False
               Tab(0).ControlCount=   1
               Begin VB.Frame Frame5 
                  BackColor       =   &H00FFF4E1&
                  BorderStyle     =   0  'None
                  Height          =   4185
                  Left            =   135
                  TabIndex        =   41
                  Top             =   30
                  Width           =   6765
                  Begin FPSpreadADO.fpSpread SPDVARISSUE 
                     Height          =   3870
                     Left            =   0
                     TabIndex        =   42
                     Top             =   240
                     Width           =   6690
                     _Version        =   524288
                     _ExtentX        =   11800
                     _ExtentY        =   6826
                     _StockProps     =   64
                     BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
                        Name            =   "Tahoma"
                        Size            =   8.25
                        Charset         =   0
                        Weight          =   400
                        Underline       =   0   'False
                        Italic          =   0   'False
                        Strikethrough   =   0   'False
                     EndProperty
                     ScrollBarExtMode=   -1  'True
                     SpreadDesigner  =   "DashBoard1.frx":6FE1
                  End
                  Begin VB.Label Label5 
                     Alignment       =   2  'Center
                     BackStyle       =   0  'Transparent
                     Caption         =   "Varietywise Issue"
                     BeginProperty Font 
                        Name            =   "Palatino Linotype"
                        Size            =   9
                        Charset         =   0
                        Weight          =   700
                        Underline       =   0   'False
                        Italic          =   0   'False
                        Strikethrough   =   0   'False
                     EndProperty
                     ForeColor       =   &H000000C0&
                     Height          =   255
                     Left            =   225
                     TabIndex        =   43
                     Top             =   0
                     Width           =   6195
                  End
               End
            End
            Begin MSChart20Lib.MSChart MSChart3 
               Height          =   4275
               Left            =   7080
               OleObjectBlob   =   "DashBoard1.frx":747F
               TabIndex        =   44
               Top             =   360
               Width           =   6195
            End
            Begin RMI.AnimatedChart AnimatedChart4 
               Height          =   4335
               Left            =   -75000
               TabIndex        =   55
               Top             =   360
               Width           =   6255
               _extentx        =   11033
               _extenty        =   7646
               utopmargin      =   750
               ubottommargin   =   825
               uleftmargin     =   825
               urightmargin    =   825
               ucontentborder  =   -1  'True
               uselectable     =   0   'False
               uhottracking    =   0   'False
               uselectedcolumn =   -1
               ucharttitle     =   "Receipt List "
               uchartsubtitle  =   "Supplier Wise(Qty in  TON)"
               udisplayxaxis   =   -1  'True
               udisplayyaxis   =   -1  'True
               ucolorbars      =   -1  'True
               uintersectmajor =   10
               uintersectminor =   2
               umaxyvalue      =   100
               udisplaydescript=   0   'False
               uxaxislabel     =   ""
               uyaxislabel     =   ""
               backcolor       =   -2147483643
               forecolor       =   16777215
               activetheme     =   0
            End
            Begin RMI.AnimatedChart AnimatedChart5 
               Height          =   4335
               Left            =   -68400
               TabIndex        =   60
               Top             =   360
               Width           =   6495
               _extentx        =   11456
               _extenty        =   7646
               utopmargin      =   750
               ubottommargin   =   825
               uleftmargin     =   825
               urightmargin    =   825
               ucontentborder  =   -1  'True
               uselectable     =   0   'False
               uhottracking    =   0   'False
               uselectedcolumn =   -1
               ucharttitle     =   "Pending Order List "
               uchartsubtitle  =   "Variety Wise(Qty in  TON)"
               udisplayxaxis   =   -1  'True
               udisplayyaxis   =   -1  'True
               ucolorbars      =   -1  'True
               uintersectmajor =   10
               uintersectminor =   2
               umaxyvalue      =   100
               udisplaydescript=   0   'False
               uxaxislabel     =   ""
               uyaxislabel     =   ""
               backcolor       =   -2147483643
               forecolor       =   16777215
               activetheme     =   0
            End
            Begin MSChart20Lib.MSChart MSChart5 
               Height          =   4275
               Left            =   13440
               OleObjectBlob   =   "DashBoard1.frx":9B3F
               TabIndex        =   63
               Top             =   360
               Width           =   6195
            End
         End
         Begin MSChart20Lib.MSChart MSChart4 
            Height          =   3975
            Left            =   13080
            OleObjectBlob   =   "DashBoard1.frx":C201
            TabIndex        =   59
            Top             =   8520
            Width           =   6615
         End
      End
      Begin VB.VScrollBar VScroll1 
         Height          =   4815
         LargeChange     =   15
         Left            =   20040
         Max             =   100
         TabIndex        =   4
         Top             =   0
         Width           =   255
      End
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   600
      Top             =   8280
   End
   Begin VB.Label Label21 
      Alignment       =   2  'Center
      BackColor       =   &H00400000&
      Caption         =   " Order Quantity"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   17.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   16320
      TabIndex        =   22
      Top             =   1320
      Width           =   3975
   End
   Begin VB.Label Label20 
      Alignment       =   2  'Center
      BackColor       =   &H00400000&
      Caption         =   "Stock Quantity"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   17.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   16320
      TabIndex        =   21
      Top             =   720
      Width           =   3975
   End
   Begin VB.Label Label19 
      Alignment       =   2  'Center
      BackColor       =   &H00400000&
      Caption         =   " Order Quantity"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   17.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   12240
      TabIndex        =   20
      Top             =   1320
      Width           =   3975
   End
   Begin VB.Label Label18 
      Alignment       =   2  'Center
      BackColor       =   &H00400000&
      Caption         =   "Issued Quantity"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   17.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   12240
      TabIndex        =   19
      Top             =   720
      Width           =   3975
   End
   Begin VB.Label Label17 
      Alignment       =   2  'Center
      BackColor       =   &H00400000&
      Caption         =   " Order Quantity"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   17.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   8160
      TabIndex        =   18
      Top             =   1320
      Width           =   3975
   End
   Begin VB.Label Label16 
      Alignment       =   2  'Center
      BackColor       =   &H00400000&
      Caption         =   "Receipt Quantity"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   17.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   8160
      TabIndex        =   17
      Top             =   720
      Width           =   3975
   End
   Begin VB.Label Label15 
      Alignment       =   2  'Center
      BackColor       =   &H00400000&
      Caption         =   "Total Order Quantity"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   4080
      TabIndex        =   16
      Top             =   1605
      Width           =   3855
   End
   Begin VB.Label Label14 
      Alignment       =   2  'Center
      BackColor       =   &H00400000&
      Caption         =   "Up to Date Pending Quantity"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   12.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   4080
      TabIndex        =   15
      Top             =   1245
      Width           =   3855
   End
   Begin VB.Label Label13 
      Alignment       =   2  'Center
      BackColor       =   &H00400000&
      Caption         =   "Total Order Quantity"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   4080
      TabIndex        =   14
      Top             =   850
      Width           =   3975
   End
   Begin VB.Label Label12 
      Alignment       =   2  'Center
      BackColor       =   &H00400000&
      Caption         =   " Order Quantity"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   15
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   4080
      TabIndex        =   13
      Top             =   480
      Width           =   3975
   End
   Begin VB.Label Label11 
      Alignment       =   2  'Center
      BackColor       =   &H00400000&
      Caption         =   "Total Product"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   17.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   120
      TabIndex        =   12
      Top             =   1320
      Width           =   3855
   End
   Begin VB.Label Label10 
      Alignment       =   2  'Center
      BackColor       =   &H00400000&
      Caption         =   "Total Product in Stock"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   17.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   495
      Left            =   80
      TabIndex        =   11
      Top             =   720
      Width           =   3855
   End
   Begin VB.Label Label9 
      BackColor       =   &H00400000&
      Height          =   1560
      Left            =   16320
      TabIndex        =   10
      Top             =   480
      Width           =   3975
   End
   Begin VB.Label Label8 
      BackColor       =   &H00400000&
      Height          =   1560
      Left            =   12240
      TabIndex        =   9
      Top             =   480
      Width           =   3975
   End
   Begin VB.Label Label7 
      BackColor       =   &H00400000&
      Height          =   1560
      Left            =   8160
      TabIndex        =   8
      Top             =   480
      Width           =   3975
   End
   Begin VB.Label Label3 
      BackColor       =   &H00400000&
      Height          =   1560
      Left            =   4080
      TabIndex        =   7
      Top             =   480
      Width           =   3975
   End
   Begin VB.Label Label1 
      BackColor       =   &H00400000&
      Height          =   1560
      Left            =   0
      TabIndex        =   2
      Top             =   480
      Width           =   3975
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00800000&
      Caption         =   "Financial Year "
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
      Left            =   7680
      TabIndex        =   1
      Top             =   0
      Width           =   12720
   End
   Begin VB.Label LBLYarnRecHead 
      BackColor       =   &H00800000&
      Caption         =   " Raw Material Inventory"
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
      TabIndex        =   0
      Top             =   0
      Width           =   13320
   End
End
Attribute VB_Name = "Dashboard1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As Connection
Dim Rs As Recordset
Dim LConnectionString As String
''---Bar chart
Dim lngOriginalTop         As Long
Dim lngIncrement           As Long
''-- Pie chart
Dim Culoare() As Long
Dim CuloareBaza() As Long
Dim Felie() As Double
Dim strFelie() As String
Dim NumeGrafic As String
Private Enum E_VARStock
    SPDSVSNO = 1
    SPDSVariety
    SPDSQty
    SPDSKgs
    SPDSValue
End Enum
Private Enum IM_ISSUEMix
    ISSPDSNO = 1
    ISSPDMIX
    ISSPDDay
    ISSPDMon
    ISSPDYear
End Enum
Private Enum TS_TopSup
    TSSPSNO = 1
    TSSPDSup
    TSSPDKgs
    TSSPDValue
End Enum
Private Enum VAR_ISSUE
    VARSPSNO = 1
    VARSPDVar
    VARSPDDay
    VARSPDCURMON
    VARSPDPRVMON
    VARSPDYEAR
End Enum
Private Enum ORD_LIST
    ORDSPSNO = 1
    ORDSPDVar
    ORDSPDDay
    ORDSPDCURMON
    ORDSPDPRVMON
    ORDSPDYEAR
End Enum
Private Enum REC_LIST
  '  RECSPSNO = 1
    RECSPDVar = 1
    RECSPDDay
    RECSPDDayVal
    RECSPDCURMON
    RECSPDCURMONVAL
    RECSPDPRVMON
    RECSPDPRVMONVAL
    RECSPDYEAR
    RECSPDYEARVAL
End Enum
Private Enum PB_LIST
    PBSPDSUP = 1
    PBSPDLOTNO
    PBSPDLOTDT
    PBSPDVAR
    PBSPDsupbill
    PBSPDQTY
    PBSPDVALUE
End Enum
Private Enum E_POSTATUS
  PO_prdate = 1
  PO_prno
  PO_itemName
  PO_qtyind
  PO_APPDATE
  PO_contno
  PO_contdt
  PO_ArrDate
 PO_ARRNO
 PO_PNETWT
 PO_PJNO
 PO_PJDT
 PO_PR_APPDays
 PO_PR_PODays
 PO_PR_MRNDays
 PO_PO_MRNDays
 PO_MRN_PJVDays
 PO_MRN_PayDays

End Enum

Private Sub cmdTransfer_Click()
intervalMinutes = -1
If Year(yfdate) = 0 Then
    MsgBox "Year cannot Be Empty,Enter the Accounting Year for Transfer", vbInformation, "Kalsofte"
    Exit Sub
End If

If yldate <> pdate Then
    MsgBox "Processing Date should be Last Date of the Current Financial Year (" & Format(yldate, "dd-MM-yyyy") & ")", vbInformation, head
    Exit Sub
End If
'Set Rs = New Recordset
'Rs.Open "SELECT * FROM rm_lot WHERE pjno is NULL AND LOTYEAR='" & Format(yfdate, "YYYY") & "' AND DIVCODE='" & Divcode & "' and opflg='N' AND ISNULL(INS_FLG,'N')='Y' AND PJNO IS NULL and lottype='A'", DB, adOpenStatic
'If Rs.EOF = False Then
'    MsgBox "Purchase Bill Entry is Pending For " & Rs.RecordCount & " Lots. " & vbCrLf & " So Stock Updation Process is Cancelled..", vbInformation, head
'    Exit Sub
'End If


Set Rs = New Recordset
Rs.Open "select * from rm_lot where lotyear=" & Year(yfdate) & " and Divcode ='" & Divcode & "' and opflg='Y'", DB, adOpenStatic
If Rs.RecordCount > 0 Then
    Set rsa = New Recordset
    rsa.Open "select * from rm_lot where lotyear=" & Year(yfdate) + 1 & " and Divcode ='" & Divcode & "' and opflg='Y'", DB, adOpenStatic
    If rsa.RecordCount > 0 Then
        a = MsgBox("Year End Processing Completed ,Do You want to Delete it and Continue the Process", vbYesNo, "Kalsofte")
        If a = 6 Then
            DB.Execute "Delete from rm_lot where lotyear='" & Year(yfdate) + 1 & "' and Divcode ='" & Divcode & "' and opflg='Y'"
        Else
            Exit Sub
        End If
    End If
    pbStock.Visible = True
    pbStock.value = 0
    Command2.Enabled = False
    cmdTransfer.Enabled = False
    intervalMinutes = -1
    pbStock.value = 10
    Screen.MousePointer = vbHourglass
    'DB.Execute " Update rm_lot set issbal=x.bales from " & _
                " (select a.catcd,a.lotno,a.lotdt,a.divcode,count(b.baleno) as bales " & _
                " from rm_lot a,rm_bale b where a.divcode=b.divcode and a.lotno=b.lotno and " & _
                " a.lotdt=b.lotdt and a.catcd=b.catcd and b.issued='Y' and a.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and " & _
                " (a.rejflg='N' or a.rejdt>'" & Format(yldate, "YYYY-MM-DD") & "') and a.lotyear=" & Year(yfdate) & " " & _
                "  group by a.catcd,a.lotno,a.lotdt,a.divcode)x,rm_lot y where " & _
                "  x.divcode='" & Divcode & "' and x.lotno=y.lotno and x.lotdt=y.lotdt and x.catcd=y.catcd " & _
                " and x.divcode=y.divcode and y.lotyear=" & Year(yfdate) & " "
    DB.Execute " update rm_lot set issbal=ISNULL(issbales,0) from " & _
            " (select a.catcd,a.lotno,a.lotdt,a.divcode,bales,a.Netwt,SUM(b.isskgs) AS ISSWET,count(b.baleno) as issbales,bales-count(b.baleno) as Closingbales, " & _
            " a.Netwt-sum(b.isskgs) as Closingwt " & _
            " from rm_lot a ,rm_issb b,rm_bale c where b.issued='Y' and a.lotdt<='" & Format(yldate, "yyyy-mm-dd") & "' and (a.rejflg='N' or a.rejdt>'" & Format(yldate, "YYYY-MM-DD") & "') and a.divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' " & _
            " and a.lotno=c.lotno and a.lotdt=c.lotdt and a.divcode=c.divcode and a.catcd=c.catcd and b.baleno=c.baleno " & _
            " and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and b.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  " & _
            " group by a.catcd,a.lotno,a.lotdt,a.divcode,bales,a.netwt " & _
            " )z,rm_lot a " & _
            " where a.divcode='" & Divcode & "' and a.lotno=z.lotno and a.lotdt=z.lotdt and a.catcd=z.catcd and a.divcode=z.divcode and lotyear='" & Year(yfdate) & "'"
intervalMinutes = -1
    pbStock.value = 20

    DB.Execute " update rm_lot set isswt=ISNULL(ISSWET,0) from " & _
            " (select a.catcd,a.lotno,a.lotdt,a.divcode,Bales,a.Netwt,SUM(b.isskgs) AS ISSWET,count(b.baleno) as issbales,bales-count(b.baleno) as Closingbales, " & _
            " a.Netwt-sum(b.isskgs) as Closingwt " & _
            " from rm_lot a ,rm_issb b,rm_bale c where a.lotdt<='" & Format(yldate, "yyyy-mm-dd") & "' and (a.rejflg='N' or a.rejdt>'" & Format(yldate, "YYYY-MM-DD") & "') and a.divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' " & _
            " and a.lotno=c.lotno and a.lotdt=c.lotdt and a.divcode=c.divcode and a.catcd=c.catcd and b.baleno=c.baleno " & _
            " and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and b.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  " & _
            " group by a.catcd,a.lotno,a.lotdt,a.divcode,bales,a.netwt " & _
            " )z,rm_lot a " & _
            " where a.divcode='" & Divcode & "' and a.lotno=z.lotno and a.lotdt=z.lotdt and a.catcd=z.catcd and a.divcode=z.divcode and lotyear='" & Year(yfdate) & "'"
            
            
     intervalMinutes = -1
            
            
    pbStock.value = 30
    
    
        DB.Execute " update rm_lot set issbal=isnull(issbal,0)-ISNULL(issbales,0) from " & _
            " (select a.catcd,a.lotno,a.lotdt,a.divcode,bales,a.Netwt,SUM(b.isskgs) AS ISSWET,count(b.baleno) as issbales,bales-count(b.baleno) as Closingbales, " & _
            " a.Netwt-sum(b.isskgs) as Closingwt " & _
            " from rm_lot a ,RM_ISSrtnB b,rm_bale c where b.issued='Y' and a.lotdt<='" & Format(yldate, "yyyy-mm-dd") & "' and (a.rejflg='N' or a.rejdt>'" & Format(yldate, "YYYY-MM-DD") & "') and a.divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' " & _
            " and a.lotno=c.lotno and a.lotdt=c.lotdt and a.divcode=c.divcode and a.catcd=c.catcd and b.baleno=c.baleno " & _
            " and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and b.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  " & _
            " group by a.catcd,a.lotno,a.lotdt,a.divcode,bales,a.netwt " & _
            " )z,rm_lot a " & _
            " where a.divcode='" & Divcode & "' and a.lotno=z.lotno and a.lotdt=z.lotdt and a.catcd=z.catcd and a.divcode=z.divcode and lotyear='" & Year(yfdate) & "'"
intervalMinutes = -1
    pbStock.value = 40
    DB.Execute " update rm_lot set isswt=isnull(isswt,0)-ISNULL(ISSWET,0) from " & _
            " (select a.catcd,a.lotno,a.lotdt,a.divcode,Bales,a.Netwt,SUM(b.isskgs) AS ISSWET,count(b.baleno) as issbales,bales-count(b.baleno) as Closingbales, " & _
            " a.Netwt-sum(b.isskgs) as Closingwt " & _
            " from rm_lot a ,RM_ISSrtnB b,rm_bale c where a.lotdt<='" & Format(yldate, "yyyy-mm-dd") & "' and (a.rejflg='N' or a.rejdt>'" & Format(yldate, "YYYY-MM-DD") & "') and a.divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' " & _
            " and a.lotno=c.lotno and a.lotdt=c.lotdt and a.divcode=c.divcode and a.catcd=c.catcd and b.baleno=c.baleno " & _
            " and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and b.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  " & _
            " group by a.catcd,a.lotno,a.lotdt,a.divcode,bales,a.netwt " & _
            " )z,rm_lot a " & _
            " where a.divcode='" & Divcode & "' and a.lotno=z.lotno and a.lotdt=z.lotdt and a.catcd=z.catcd and a.divcode=z.divcode and lotyear='" & Year(yfdate) & "'"
                     
            
    intervalMinutes = -1
    pbStock.value = 50
    DB.Execute " update rm_bale set lot_year=" & Year(yfdate) & " from rm_lot a,rm_bale b where " & _
            " a.lotno = b.lotno And a.lotdt = b.lotdt And a.catcd = b.catcd " & _
            " and a.divcode=b.divcode and lotyear=" & Year(yfdate) & " AND A.DIVCODE ='" & Divcode & "'"
   
   pbStock.value = 60
    Set rs1 = New Recordset
    rs1.Open "select * from rm_lot where lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "' and bales-isnull(issbal,0)>0 and netwt-isnull(isswt,0)>0 ", DB, adOpenStatic
    If rs1.RecordCount > 0 Then
        Set RS2 = New Recordset
        RS2.Open "select * from sysobjects where name='Rm_YearProcess'", DB, adOpenStatic
        If RS2.RecordCount > 0 Then
            DB.Execute "drop table Rm_YearProcess"
        End If
        pbStock.value = 70
        DB.Execute "UPDATE RM_LOT SET ISSBAL=0 WHERE ISSBAL IS NULL AND LOTYEAR='" & Year(yfdate) & "'"
        pbStock.value = 80
        DB.Execute "UPDATE RM_LOT SET ISSWT=0 WHERE ISSWT IS NULL AND LOTYEAR='" & Year(yfdate) & "'"
        pbStock.value = 90
        DB.Execute " select * into Rm_YearProcess from rm_lot where (rejflg='N' or rejdt>'" & Format(yldate, "YYYY-MM-DD") & "') and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "' and bales-isnull(issbal,0)>0 "
        pbStock.value = 100
        DB.Execute "update Rm_YearProcess set bales=bales-isnull(issbal,0),netwt=netwt-isnull(isswt,0),FAVAOURABLEWGT=FAVAOURABLEWGT-isnull(isswt,0),opflg='Y',lotyear='" & Year(yfdate) + 1 & "' where lotyear='" & Year(yfdate) & "'"
        
'        DB.Execute "update Rm_YearProcess set FAVAOURABLEWGT=netwt-isnull(isswt,0),opflg='Y',lotyear='" & Year(yfdate) + 1 & "' where lotyear='" & Year(yfdate) & "' and WeightFlg='M'"
'
'        DB.Execute "update Rm_YearProcess set FAVAOURABLEWGT=pnetwt-isnull(isswt,0),opflg='Y',lotyear='" & Year(yfdate) + 1 & "' where lotyear='" & Year(yfdate) & "' and WeightFlg='S'"

        DB.Execute "update Rm_YearProcess set issbal=0,isswt=0 where lotyear='" & Year(yfdate) + 1 & "'"
        pbStock.value = 100
        DB.Execute "insert into rm_lot select * from Rm_YearProcess where lotyear='" & Year(yfdate) + 1 & "'"
        
        DB.Execute "update rm_bale set Lot_year='" & Year(yfdate) + 1 & "' where  lot_year='" & Year(yfdate) & "' AND ISQTY IS NULL  "
        pbStock.value = 100
    End If
    intervalMinutes = -1
    
    pbStock.Visible = False
    cmdTransfer.Enabled = True
    Command2.Enabled = True
    MsgBox "Processing completed Successfully", vbInformation, "Kalsofte"
    intervalMinutes = -1
Else
    MsgBox "No Records found", vbInformation, "Kalsofte"
End If
Screen.MousePointer = vbNormal
End Sub

Private Sub Command2_Click()
On Error Resume Next
DB.Close
Unload Me
'db.RollbackTrans
End Sub



Private Sub spdVarIss_Advance(ByVal AdvanceNext As Boolean)

End Sub



Private Sub cmdrowcol_Click(Index As Integer)
  Select Case Index
    Case 0
      MSChart3.Plot.DataSeriesInRow = True
    Case 1
      MSChart3.Plot.DataSeriesInRow = False
  End Select
End Sub

Private Sub cmdrowcol2_Click(Index As Integer)
  Select Case Index
    Case 0
      MSChart5.Plot.DataSeriesInRow = True
    Case 1
      MSChart5.Plot.DataSeriesInRow = False
  End Select
End Sub

Private Sub VScroll1_Change()
   Picture1.Top = lngOriginalTop - (VScroll1.value * lngIncrement)
End Sub

Private Sub Form_Load()

On Error GoTo err_Load_Form
intervalMinutes = -1
    Set DB = New Connection
    DB.CommandTimeout = 0
    DB.ConnectionTimeout = 0
    DB.Open connectstring
    intervalMinutes = -1
    Label2.Caption = "Financial Year " & Space(4) + Right(yfdate, 4) + "-" + Right(yldate, 4)
    'Text1.Text = "Total Product \n test"
    lngOriginalTop = Picture1.Top
   lngIncrement = (Picture1.Height - Frame1.Height) / VScroll1.Max

    Load_all
    
    SSTab5.Tab = 0
Exit Sub

err_Load_Form:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)

End Sub


Private Sub Load_all()
On Error GoTo err_Load_all
    
    Set Rs = New Recordset
    Rs.Open "select isnull(Count(varcode),0) totprd from Vw_RM_TotProduct where divcode='" & Divcode & "' and lotyear='" & Format(yfdate, "YYYY") & "'", DB
    If Not Rs.EOF Then
        Label11.Caption = Rs(0)
    End If
    
    Set Rs = New Recordset
    Rs.Open "select  round(isnull(sum(ordqty),0)/1000,3) OrdQty from Vw_RM_OrderQty where divcode='" & Divcode & "' and contdt>='" & Format(yfdate, "YYYY-mm-dd") & "' and contdt<='" & Format(pdate, "YYYY-mm-dd") & "' and RptType='Order'", DB
    If Not Rs.EOF Then
        Label13.Caption = Format(Rs(0), "##.000")
    End If
    
    Set Rs = New Recordset
    Rs.Open "select  round(isnull(sum(ordqty),0)/1000,3) PendingQty from Vw_RM_OrderQty where divcode='" & Divcode & "' and contdt<='" & Format(pdate, "YYYY-mm-dd") & "' and RptType='Pending'", DB 'and contdt>='" & Format(yfdate, "YYYY-mm-dd") & "'
    If Not Rs.EOF Then
        Label15.Caption = Format(Rs(0), "##.000")
    End If
    
    Set Rs = New Recordset
    Rs.Open "select round( isnull(sum(RecQty),0)/1000,3) Recqty from Vw_RM_ArrivalQty where divcode='" & Divcode & "' and ARRDATE between '" & Format(yfdate, "YYYY-mm-dd") & "' and '" & Format(yldate, "YYYY-mm-dd") & "'", DB
    If Not Rs.EOF Then
        Label17.Caption = Format(Rs(0), "##.000")
    End If
    
    Set Rs = New Recordset
    Rs.Open "select  round(isnull(sum(IssuedQty),0)/1000,3) IssuedQty from Vw_RM_IssueQty where divcode='" & Divcode & "' and  docdt between '" & Format(yfdate, "YYYY-mm-dd") & "' and '" & Format(yldate, "YYYY-mm-dd") & "'", DB
    If Not Rs.EOF Then
        Label19.Caption = Format(Rs(0), "##.000")
    End If
    
    
    Set Rs = New Recordset
    Rs.Open "select  round(isnull(sum(BALANCEQTY),0)/1000,3)  BALANCEQTY from vw_LotBaleStockData where divcode='" & Divcode & "' and lotdt<='" & Format(pdate, "YYYY-mm-dd") & "' and lotyear='" & Format(yfdate, "YYYY") & "' ", DB
    If Not Rs.EOF Then
        Label21.Caption = Format(Rs(0), "##.000")
    End If
    
    Call Stock_Var
    Call Stock_CAT
    Call Load_To5Sup
    Call Load_VarietyWiseissue
    Call Load_MixWiseIssue
    Call Load_VARORDERLIST
    Call Load_PendingORdList
    Call Load_RECEIPTLIST
    Call Load_RECEIPTLISTChart
    Call COUNTWISEIssue
    Call mixINGwiseIssue
    Call Load_UNBILLEDRECLIST
    Call Load_POStatus
'    Call Load_StoCk
'    Call MixingIssue
'
    
    
    
'    Call Stock_Stockageing
   
'        Set Rs = New Recordset
'    Rs.Open "select  isnull(sum(RecQty),0) RecQty from Vw_RM_OrderQty where divcode='" & Divcode & "' and contdt<='" & Format(pdate, "YYYY-mm-dd") & "' and RptType='Pending'", DB
'    If Not Rs.EOF Then
'    Label15.Caption = Rs(0)
'    End If
Exit Sub
err_Load_all:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)


End Sub


Private Sub Stock_Variety()
On Error GoTo Form_Load_Error
Dim arrValues()
Screen.MousePointer = 11
Set DB = New Connection
DB.Open connectstring

'VarietywiseReceipt.DataCombo1.Text = VarietywiseReceipt.DTPicker1.value
'VarietywiseReceipt.DataCombo2.Text = VarietywiseReceipt.DTPicker2.value
'
'Date1 = VarietywiseReceipt.DataCombo1.Text
'Date2 = VarietywiseReceipt.DataCombo2.Text
'
'catcd = Trim(Mid$(VarietywiseReceipt.Combo1.Text, 1, InStr(VarietywiseReceipt.Combo1.Text, "-") - 1))

Set Rs = New Recordset

    Rs.Open "SELECT VARNAME,SUM(BalanceQty) FROM vw_LotBaleStockData A,RM_VAR B WHERE A.VARCODE=B.VARCODE AND A.LOTDT<= '" & Format(pdate, "YYYY-MM-DD") & "' AND lotyear='" & Format(yfdate, "yyyy") & "' GROUP BY VARNAME ", DB, adOpenStatic


If Rs.RecordCount = 0 Then
   'MsgBox "No records found", vbInformation, head
   MSChart1.Visible = False
   Screen.MousePointer = 0
   Exit Sub
End If

ReDim arrValues(1 To Rs.RecordCount, 1 To 2)
Dim I As Integer
Rs.MoveFirst

For I = 1 To Rs.RecordCount
    arrValues(I, 1) = Rs("VARNAME")
    arrValues(I, 2) = Rs(1)
    Rs.MoveNext
Next I


MSChart1.ChartData = arrValues
MSChart1.ChartType = VtChChartType2dBar
MSChart1.Stacking = False
MSChart1.Column = 1
MSChart1.ColumnLabel = "VARIETY"

With MSChart1.Plot.Backdrop
  .Fill.Style = VtFillStyleBrush
  .Fill.Brush.FillColor.Set 100, 255, 200
  .Frame.Style = VtFrameStyleThickOuter
  .Shadow.Style = VtShadowStyleDrop
End With
MSChart1.Title = "VARIETYWISE STOCK STATEMENT CHART AS ON  " & Format(pdate, "DD/MM/YYYY")
With MSChart1.Plot
   .Wall.Brush.Style = VtBrushStyleSolid
End With
With MSChart1.Plot
  ' .PlotBase.BaseHeight = 200
   .PlotBase.Brush.Style = VtBrushStyleSolid
   .PlotBase.Brush.FillColor.Set 0, 0, 255
    
End With

Screen.MousePointer = 0
'MSChart1.ChartData = arrValues
'MSChart1.ChartType = VtChChartType2dBar
'MSChart1.Stacking = False
'MSChart1.Column = 1
''MSChart1.ColumnLabel = "VARIETY"

''MSChart1.Title = "VARIETYWISE STOCK STATEMENT CHART AS ON  " & Format(pdate, "DD/MM/YYYY")
'Exit Sub
'With MSChart1.Plot.Backdrop
'  .Fill.Style = VtFillStyleBrush
'  .Fill.Brush.FillColor.Set 200, 255, 200
'  .Frame.Style = VtFrameStyleThickOuter
'  .Shadow.Style = VtShadowStyleDrop
'End With
'
'With MSChart1.Plot
'   .Wall.Brush.Style = VtBrushStyleSolid
'End With
'
'With MSChart1.Plot
'   .PlotBase.BaseHeight = 500
'   .PlotBase.Brush.Style = VtBrushStyleSolid
'   .PlotBase.Brush.FillColor.Set 0, 0, 255
'
'End With

Screen.MousePointer = 0

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Varrecchart", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Stock_Category()
On Error GoTo Form_Load_Error
Dim arrValues()
Screen.MousePointer = 11
Set DB = New Connection
DB.Open connectstring

'VarietywiseReceipt.DataCombo1.Text = VarietywiseReceipt.DTPicker1.value
'VarietywiseReceipt.DataCombo2.Text = VarietywiseReceipt.DTPicker2.value
'
'Date1 = VarietywiseReceipt.DataCombo1.Text
'Date2 = VarietywiseReceipt.DataCombo2.Text
'
'catcd = Trim(Mid$(VarietywiseReceipt.Combo1.Text, 1, InStr(VarietywiseReceipt.Combo1.Text, "-") - 1))

Set Rs = New Recordset

    Rs.Open "SELECT catname,SUM(BalanceQty) FROM vw_LotBaleStockData A,RM_cat B WHERE A.catcd=B.catcd AND A.LOTDT<= '" & Format(pdate, "YYYY-MM-DD") & "' AND lotyear='" & Format(yfdate, "yyyy") & "' GROUP BY catname ", DB, adOpenStatic


If Rs.RecordCount = 0 Then
   'MsgBox "No records found", vbInformation, head
   MSChart1.Visible = False
   Screen.MousePointer = 0
   Exit Sub
End If

ReDim arrValues(1 To Rs.RecordCount, 1 To 2)
Dim I As Integer
Rs.MoveFirst

For I = 1 To Rs.RecordCount
    arrValues(I, 1) = Rs("catname")
    arrValues(I, 2) = Rs(1)
    Rs.MoveNext
Next I


MSChart2.ChartData = arrValues
MSChart2.ChartType = VtChChartType2dBar
MSChart2.Stacking = False
MSChart2.Column = 1
MSChart2.ColumnLabel = "CATEGORY"

With MSChart2.Plot.Backdrop
  .Fill.Style = VtFillStyleBrush
  .Fill.Brush.FillColor.Set 100, 255, 200
  .Frame.Style = VtFrameStyleThickOuter
  .Shadow.Style = VtShadowStyleDrop
End With
MSChart2.Title = "CATEGORY WISE STOCK STATEMENT CHART AS ON  " & Format(pdate, "DD/MM/YYYY")
With MSChart2.Plot
   .Wall.Brush.Style = VtBrushStyleSolid
End With
With MSChart2.Plot
  ' .PlotBase.BaseHeight = 200
   .PlotBase.Brush.Style = VtBrushStyleSolid
   .PlotBase.Brush.FillColor.Set 0, 0, 255
    
End With

Screen.MousePointer = 0


Screen.MousePointer = 0

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Varrecchart", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub Stock_Var()
On Error GoTo Form_Load_Error
Dim arrValues()
Screen.MousePointer = 11
Set DB = New Connection
DB.Open connectstring

'VarietywiseReceipt.DataCombo1.Text = VarietywiseReceipt.DTPicker1.value
'VarietywiseReceipt.DataCombo2.Text = VarietywiseReceipt.DTPicker2.value
'
'Date1 = VarietywiseReceipt.DataCombo1.Text
'Date2 = VarietywiseReceipt.DataCombo2.Text
'
'catcd = Trim(Mid$(VarietywiseReceipt.Combo1.Text, 1, InStr(VarietywiseReceipt.Combo1.Text, "-") - 1))

Set Rs = New Recordset

    Rs.Open "SELECT  varname catname,count(Baleno) Bales,round(SUM(BalanceQty)/1000,3) Qty,round(sum(value)/100000,2) Value FROM vw_LotBaleStockData A,RM_var B WHERE A.varcode=B.varcode AND A.LOTDT<= '" & Format(pdate, "YYYY-MM-DD") & "' AND lotyear='" & Format(yfdate, "yyyy") & "' GROUP BY varname ", DB, adOpenStatic ' DB, adOpenDynamic, adLockOptimistic

If Rs.RecordCount = 0 Then
   'MsgBox "No records found", vbInformation, head
   MSChart1.Visible = False
   Screen.MousePointer = 0
   Exit Sub
End If

 Set SpdVarStock.DataSource = Rs
Call SETSPDVARITYSTOCK(Rs.RecordCount)

'ReDim arrValues(1 To Rs.RecordCount, 1 To 2)
'Dim i As Integer
'Rs.MoveFirst
'Dim X As Integer, oChartItem As clsChartItem
'For i = 1 To Rs.RecordCount
''    arrValues(i, 1) = Rs("catname")
''    arrValues(i, 2) = Rs(1)
'
'         Set oChartItem = New clsChartItem
'        oChartItem.ItemID = X
'        oChartItem.SelectedDescription = "Total Sale Of 200" & X
'        oChartItem.Value = CLng(Rnd * 2000) 'Rs(1)
'        oChartItem.XAxisDescription = "X"
'        AnimatedChart1.AddItem oChartItem
'    Rs.MoveNext
'
'
'Next i

   ' Randomize
    Dim X As Integer, oChartItem As clsChartItem
    'ActiveChart1.IntersectMajor = 1000
Rs.MoveFirst
        With SpdVarStock
            .MaxRows = 0
            .MaxCols = E_VARStock.SPDSValue
           ' .CursorStyle = CursorStyleArrow
            RW = 1
            Do While Not Rs.EOF
                 Set oChartItem = New clsChartItem
                oChartItem.ItemID = RW
                oChartItem.SelectedDescription = Rs(0)
                oChartItem.value = Rs(2)
                oChartItem.XAxisDescription = Rs(0)
                AnimatedChart2.AddItem oChartItem
                
                
                .MaxRows = .MaxRows + 1
                .SetText E_VARStock.SPDSVSNO, RW, CStr(RW)
                .SetText E_VARStock.SPDSVariety, RW, Rs(0)
                .SetText E_VARStock.SPDSQty, RW, Rs(1)
                .SetText E_VARStock.SPDSKgs, RW, Rs(2)
                .SetText E_VARStock.SPDSValue, RW, Rs(3)
                RW = RW + 1
                Rs.MoveNext
        
            Loop
        End With
    


'    For X = 1 To 8
'         Set oChartItem = New clsChartItem
'        oChartItem.ItemID = X
'        oChartItem.SelectedDescription = "Total Sale Of 200" & X
'        oChartItem.Value = CLng(Rnd * 2000)
'        oChartItem.XAxisDescription = "Bar " & X
'        AnimatedChart1.AddItem oChartItem
'
'
'    Next X

Screen.MousePointer = 0

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Varrecchart", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub grd_Click()
    DoEvents
    ActiveChart1.SelectedColumn = grd.Row - 1
End Sub
Private Sub Stock_CAT()
On Error GoTo Form_Load_Error
Dim arrValues()
Screen.MousePointer = 11
Set DB = New Connection
DB.Open connectstring


Set Rs = New Recordset

    Rs.Open "SELECT   catname,round(SUM(BalanceQty)/1000,3) FROM vw_LotBaleStockData A,RM_cat B WHERE A.catcd=B.catcd AND A.LOTDT<= '" & Format(pdate, "YYYY-MM-DD") & "' AND lotyear='" & Format(yfdate, "yyyy") & "' GROUP BY catname ", DB, adOpenStatic


If Rs.RecordCount = 0 Then
   'MsgBox "No records found", vbInformation, head
   MSChart1.Visible = False
   Screen.MousePointer = 0
   Exit Sub
End If



   ' Randomize
    Dim X As Integer, oChartItem As clsChartItem
    'ActiveChart1.IntersectMajor = 1000

    For I = 1 To Rs.RecordCount
         Set oChartItem = New clsChartItem
        oChartItem.ItemID = I
        oChartItem.SelectedDescription = Rs(0)
        oChartItem.value = Rs(1)
        oChartItem.XAxisDescription = Rs(0)
        AnimatedChart1.AddItem oChartItem
        Rs.MoveNext

    Next I


Screen.MousePointer = 0

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Varrecchart", vbInformation, head
Screen.MousePointer = 0
End Sub


'''------  PIE Chart----------

'
'Private Sub Picture3_DblClick()
'    Dim ret
'    Dim peculoare As Boolean
'    resetareCulori UBound(CuloareBaza), Culoare(), CuloareBaza()
'    ret = Get_Color_Under_Cursor
'    If ultimaCuloare <> ret Then
'        If ret <> &HFFFFFF Then
'            peculoare = True
'        Else
'            ultimaCuloare = &HFFFFFF
'        End If
'        For n = 0 To UBound(Culoare)
'            If ret = CuloareBaza(n) Then
'                Culoare(n) = vbMagenta
'                ultimaCuloare = CuloareBaza(n)
'                Exit For
'            End If
'        Next
'    End If
'    Rotire = RotireCurenta
'    If peculoare Then DeseneazaGrafic Picture3, Felie(), Culoare(), Inclinatie, Rotire, NumeGrafic
'End Sub
'
'Private Sub Picture3_MouseDown(BUTTON As Integer, Shift As Integer, x As Single, y As Single)
'    xCurent = x
'    If BUTTON = 2 Then
'        InitializareCulori 4, Culoare(), CuloareBaza()
'        Rotire = RotireCurenta
'        DeseneazaGrafic Picture3, Felie(), Culoare(), Inclinatie, Rotire, NumeGrafic
'    End If
'End Sub

'Private Sub Picture3_MouseMove(BUTTON As Integer, Shift As Integer, x As Single, y As Single)
'    If BUTTON = 1 Then
'        RotireCurenta = RotireCurenta + (xCurent - x) / 100
'        If RotireCurenta < 0 Then RotireCurenta = 360
'        If RotireCurenta > 360 Then RotireCurenta = 0
'        Rotire = RotireCurenta
'        DeseneazaGrafic Picture3, Felie(), Culoare(), Inclinatie, Rotire, NumeGrafic
'    End If
'End Sub

'
'Private Sub Picture3_Resize()
'    Picture3.Font.Size = Picture3.Width / 100
'End Sub

'Private Sub Stock_Stockageing()
'On Error GoTo Form_Load_Error
'Dim arrValues()
'Screen.MousePointer = 11
'Set DB = New Connection
'DB.Open connectstring
'
'
'Set Rs = New Recordset
'
'    Rs.Open "SELECT   catname,SUM(BalanceQty) FROM vw_LotBaleStockData A,RM_cat B WHERE A.catcd=B.catcd AND A.LOTDT<= '" & Format(pdate, "YYYY-MM-DD") & "' AND lotyear='" & Format(yfdate, "yyyy") & "' GROUP BY catname ", DB, adOpenStatic
'
'
'If Rs.RecordCount = 0 Then
'   'MsgBox "No records found", vbInformation, head
'   MSChart1.Visible = False
'   Screen.MousePointer = 0
'   Exit Sub
'End If
'j = Rs.RecordCount
'
'
'    ReDim Culoare(j)
'     ReDim CuloareBaza(j)
'    ReDim Felie(j)
'
'    Dim valori, Cate As String
'    'ActiveChart1.IntersectMajor = 1000
'valori = ""
'Cate = ""
'Rs.MoveFirst
'    For I = 1 To Rs.RecordCount
'        valori = valori & ";" + CStr(Rs(1))
'        Cate = Cate + ";" + CStr(Rs(0))
'        Rs.MoveNext
'
'    Next I
' ' valori = Left(valori, 1, Len(valori))
'
'
'   NumeGrafic = "Titlu"
'valori = Mid$(valori, 2, Len(valori))
'Cate = Mid$(Cate, 2, Len(Cate))
'   ' valori = "30;45;15;200;33"
'    strFelie = Split(valori, ";")
'
'    For N = 0 To UBound(strFelie)
'        Felie(N) = CDbl(strFelie(N))
'    Next
'    strFelie = Split(valori, ";")
'    For N = 0 To UBound(strFelie)
'        CuloareBaza(N) = CDbl(strFelie(N))
'    Next
'
'    InitializareCulori Rs.RecordCount, Culoare(), CuloareBaza()
'    Rotire = 0
'    Inclinatie = 0.9
'    DeseneazaGrafic Picture3, Felie(), Culoare(), Inclinatie, Rotire, NumeGrafic
'Screen.MousePointer = 0
'
'Exit Sub
'Form_Load_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Varrecchart", vbInformation, head
'Screen.MousePointer = 0
'End Sub



' ---------------------Pie start end
Private Sub Load_To5Sup()
Dim Lrs As New ADODB.Recordset
Dim lstrSql As String
Dim llngRow As Long
On Error GoTo Load_To5Sup_Error

lstrSql = " SELECT top 5 Supplier ,sum(Weght)Weght,round(sum(Value),2) Value from VW_RMI_TOPPURCHASE WHERE divcode='" & Divcode & "' AND    LOTDT>='" & Format(yfdate, "YYYY-mm-dd") & "' and LOTDT<='" & Format(pdate, "YYYY-mm-dd") & "'   GROUP BY supplier  ORDER BY 3 DESC"
 
'spdSup.ClearRange 1, 1, spdStk.MaxCols, 5, True

Set Lrs = New Recordset
Lrs.Open lstrSql, DB, adOpenStatic

If Lrs.RecordCount = 0 Then
   'MsgBox "No records found", vbInformation, head
 
   Screen.MousePointer = 0
   Exit Sub
End If
  Set SPDTOPSUP.DataSource = Lrs
  Call SETSPDTOPSUP(Lrs.RecordCount)
Lrs.MoveFirst
        With SPDTOPSUP
            .MaxRows = 0
            .MaxCols = TS_TopSup.TSSPDValue
           ' .CursorStyle = CursorStyleArrow
            RW = 1
            
            Do While Not Lrs.EOF
                .MaxRows = .MaxRows + 1
                .SetText TS_TopSup.TSSPSNO, RW, CStr(RW)
                .SetText TS_TopSup.TSSPDSup, RW, Lrs(0)
                .SetText TS_TopSup.TSSPDKgs, RW, Lrs(1)
                .SetText TS_TopSup.TSSPDValue, RW, Lrs(2)
                RW = RW + 1
                Lrs.MoveNext
        
            Loop
        End With
        
   
   Lrs.MoveFirst
            
        ReDim ArrayChart(1 To Lrs.RecordCount, 1 To 2) ' Array
        'Puuting Records from Database to Array
        For X = 1 To Lrs.RecordCount
            ArrayChart(X, 1) = Left(Lrs(0), 10)
            ArrayChart(X, 2) = CInt(Lrs(1))
        Lrs.MoveNext
        Next X

    MSChart4.ChartData = ArrayChart
'    MSChart4.Refresh


Exit Sub
Load_To5Sup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Load_To5Sup of Form frmDashBoard", vbInformation, head
Screen.MousePointer = 0

End Sub


Private Sub Load_VarietyWiseissue()
Dim Lrs As New ADODB.Recordset
Dim lrsNew As New ADODB.Recordset
Dim lstrSql As String
Dim llngRow As Long

On Error GoTo Load_VarietyWiseissue_Error
'Set Rs = New Recordset
'Rs.Open "SELECT a.varcode FROM RM_VAR a, Rm_issb b WHERE a.VARCODE=b.varcode GROUP BY a.varcode", DB, adOpenStatic
'If Rs.EOF = False Then
'    spdVarIss.MaxRows = Rs.RecordCount
''Else
''    spdVarIss.MaxRows = 5
'End If
'
'lstrSql = " SELECT   top " & spdVarIss.MaxRows & "  (SELECT Varname FROM RM_VAR WHERE VARCODE = a.VARCODE), (SELECT   sum(isskgs)   FROM RM_ISSB where DOCDT = '" & Format(pdate, "yyyy/MM/dd") & "' and VARCODE = a.varcode ) AS isskgs ,  "
'lstrSql = lstrSql & " (SELECT   sum(isskgs)   FROM RM_ISSB where  month (DOCDT) = '" & MONTH(pdate) & "' and VARCODE = a.varcode ) AS IssMon,"
'lstrSql = lstrSql & " (SELECT   sum(isskgs)  FROM RM_ISSB where  year (DOCDT) = '" & Year(pdate) & "' and VARCODE = a.varcode  ) AS IssYr"
'lstrSql = lstrSql & " FROM RM_ISSB AS A  GROUP BY VARCODE  order by 2 DESC "
'
'spdVarIss.ClearRange 1, 1, spdVarIss.MaxCols, spdVarIss.MaxRows, True


'Set Lrs = DB.Execute(lstrSql)
Set Lrs = New Recordset
Lrs.Open "exec KSP_RMIDASHBORDVARISSUE '" & Divcode & "','" & Format(pdate, "yyyy-mm-dd") & "','" & Format(pdate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic

If Lrs.EOF Then
   Screen.MousePointer = 0
   Exit Sub
End If

  Call SETSPDVARISSUE(Lrs.RecordCount)
    Lrs.MoveFirst
        With SPDVARISSUE
            .MaxRows = 0
            .MaxCols = VAR_ISSUE.VARSPDYEAR
           ' .CursorStyle = CursorStyleArrow
            RW = 1
            Do While Not Lrs.EOF
                .MaxRows = .MaxRows + 1
                .SetText VAR_ISSUE.VARSPSNO, RW, CStr(RW)
                .SetText VAR_ISSUE.VARSPDVar, RW, Lrs(0)
                .SetText VAR_ISSUE.VARSPDDay, RW, Lrs(1)
                .SetText VAR_ISSUE.VARSPDCURMON, RW, Lrs(2)
                .SetText VAR_ISSUE.VARSPDPRVMON, RW, Lrs(3)
                 .SetText VAR_ISSUE.VARSPDYEAR, RW, Lrs(4)
                RW = RW + 1
                Lrs.MoveNext
        
            Loop
        End With


Lrs.Close


Exit Sub
Load_VarietyWiseissue_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Load_VarietyWiseissue of Form frmDashBoard", vbInformation, head
Screen.MousePointer = 0

End Sub


Private Sub Load_POStatus()
Dim Lrs As New ADODB.Recordset
Dim lrsNew As New ADODB.Recordset
Dim lstrSql As String
Dim llngRow As Long

On Error GoTo Load_VarietyWiseissue_Error

Set Lrs = New Recordset
Lrs.Open "exec ksp_PO_RMBillMonitor '" & Divcode & "','" & Format(mfdate, "yyyy-mm-dd") & "','" & Format(pdate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic

If Lrs.EOF Then
   Screen.MousePointer = 0
   Exit Sub
End If

  Call SETSPDPOSTATUS(Lrs.RecordCount)
    Lrs.MoveFirst
        With SPDPOSTATUS
            .MaxRows = 0
            .MaxCols = E_POSTATUS.PO_MRN_PayDays
           ' .CursorStyle = CursorStyleArrow
            RW = 1
            Do While Not Lrs.EOF
                .MaxRows = .MaxRows + 1
                .SetText E_POSTATUS.PO_prdate, RW, Format(Lrs("prdate"), "dd/mm/yy")
                .SetText E_POSTATUS.PO_prno, RW, Lrs("prno")
                .SetText E_POSTATUS.PO_itemName, RW, Lrs("itemName")
                .SetText E_POSTATUS.PO_qtyind, RW, Lrs("qtyind")
                .SetText E_POSTATUS.PO_APPDATE, RW, Format(Lrs("directappdate"), "dd/mm/yy")
                .SetText E_POSTATUS.PO_contno, RW, Lrs("pordno")
                .SetText E_POSTATUS.PO_contdt, RW, Format(Lrs("porddt"), "dd/mm/yy")
                .SetText E_POSTATUS.PO_ArrDate, RW, Format(Lrs("docdt"), "dd/mm/yy")
                .SetText E_POSTATUS.PO_ARRNO, RW, Lrs("docno")
                .SetText E_POSTATUS.PO_PNETWT, RW, Lrs("quantity")
                .SetText E_POSTATUS.PO_PJNO, RW, Lrs("pjvocno")
                .SetText E_POSTATUS.PO_PJDT, RW, Format(Lrs("pjvocdt"), "dd/mm/yy")
                .SetText E_POSTATUS.PO_PR_APPDays, RW, Lrs("PR_APPDays")
                .SetText E_POSTATUS.PO_PR_PODays, RW, Lrs("PR_PODays")
                .SetText E_POSTATUS.PO_PR_MRNDays, RW, Lrs("PR_MRNDays")
                .SetText E_POSTATUS.PO_PO_MRNDays, RW, Lrs("PO_MRNDays")
                .SetText E_POSTATUS.PO_MRN_PJVDays, RW, Lrs("MRN_PJVDays")
                .SetText E_POSTATUS.PO_MRN_PayDays, RW, Lrs("MRN_PayDays")
               
              
                RW = RW + 1
                Lrs.MoveNext
        
            Loop
        End With
Lrs.Close


Exit Sub
Load_VarietyWiseissue_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Load_VarietyWiseissue of Form frmDashBoard", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Load_MixWiseIssue()
Dim Lrs As New ADODB.Recordset
Dim lstrSql As String
Dim llngRow As Long

On Error GoTo Load_MixWiseIssue_Error
'Set Rs = New Recordset
'Rs.Open "SELECT a.varcode FROM RM_VAR a, Rm_issb b WHERE a.VARCODE=b.varcode GROUP BY a.varcode", DB, adOpenStatic
'If Rs.EOF = False Then
'    spdMix.MaxRows = Rs.RecordCount
'Else
'    spdMix.MaxRows = 5
'End If
'
'If spdMix.MaxRows >= 5 Then spdMix.MaxRows = 5

'lstrSql = " SELECT   top " & spdMix.MaxRows & "  (SELECT mixGrpName FROM RM_MIxGrp WHERE MixGrpCd = H.MIXGRP) as mix ,"
'lstrSql = lstrSql & " (SELECT   sum(isskgs)   FROM RM_ISSB , RM_ISSH where  RM_ISSB.DOCNO = RM_ISSH.DOCNO AND RM_ISSB.DIVCODE = RM_ISSH.DIVCODE"
'lstrSql = lstrSql & " AND    RM_ISSB.DOCDT = '" & Format(pdate, "yyyy-MM-dd") & "' and RM_ISSH.MIXGRP = H.MIXGRP AND RM_ISSH.DIVCODE = h.DIVCODE ) AS IssDay,"
'lstrSql = lstrSql & " (SELECT   sum(isskgs)   FROM RM_ISSB , RM_ISSH where  RM_ISSB.DOCNO = RM_ISSH.DOCNO AND RM_ISSB.DIVCODE = RM_ISSH.DIVCODE"
'lstrSql = lstrSql & " AND    month (RM_ISSB.DOCDT) = '" & MONTH(pdate) & "' and RM_ISSH.MIXGRP = H.MIXGRP AND RM_ISSH.DIVCODE = h.DIVCODE ) AS IssMon,"
'lstrSql = lstrSql & " (SELECT   sum(isskgs)  FROM RM_ISSB,RM_ISSH where  year (RM_ISSB.DOCDT) = '" & Year(pdate) & "'  AND"
'lstrSql = lstrSql & " RM_ISSB.docNo = RM_ISSH.docNo And RM_ISSB.Divcode = RM_ISSH.Divcode And RM_ISSH.mixgrp = h.mixgrp And RM_ISSH.Divcode = h.Divcode"
'lstrSql = lstrSql & " ) AS IssYr FROM RM_ISSB AS A , RM_ISSH AS H  WHERE  H.DivCode  = '" & Divcode & "' AND (SELECT mixGrpName FROM RM_MIxGrp WHERE MixGrpCd = H.MIXGRP) is not null "
'lstrSql = lstrSql & " GROUP BY MIXGRP,h.DIVCODE "
'lstrSql = lstrSql & " Having "
'lstrSql = lstrSql & " isnull((SELECT   sum(isskgs)   FROM RM_ISSB , RM_ISSH where"
'lstrSql = lstrSql & " RM_ISSB.docNo = RM_ISSH.docNo And RM_ISSB.Divcode = RM_ISSH.Divcode"
'lstrSql = lstrSql & " and  month (RM_ISSB.DOCDT) = '" & MONTH(pdate) & "' and RM_ISSH.MIXGRP = H.MIXGRP AND RM_ISSH.DIVCODE = h.DIVCODE ),0) > 0"
'lstrSql = lstrSql & "  order by 2 DESC"

'spdMix.ClearRange 1, 1, spdMix.MaxCols, spdMix.MaxRows, True
'Set Lrs = DB.Execute(lstrSql)
Set Lrs = New Recordset
Lrs.Open "exec KSP_RMIDASHBORDMIXINGISSUE '" & Divcode & "','" & Format(pdate, "yyyy-mm-dd") & "','" & Format(pdate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic

If Lrs.EOF Then
   Screen.MousePointer = 0
   Exit Sub
End If

  Call SETSPDISSUEMIX(Lrs.RecordCount)
    Lrs.MoveFirst
        With SPDISSUEMIX
            .MaxRows = 0
            .MaxCols = IM_ISSUEMix.ISSPDYear
           ' .CursorStyle = CursorStyleArrow
            RW = 1
            Do While Not Lrs.EOF
                .MaxRows = .MaxRows + 1
                .SetText IM_ISSUEMix.ISSPDSNO, RW, CStr(RW)
                .SetText IM_ISSUEMix.ISSPDMIX, RW, Lrs(0)
                .SetText IM_ISSUEMix.ISSPDDay, RW, Lrs(1)
                .SetText IM_ISSUEMix.ISSPDMon, RW, Lrs(2)
                .SetText IM_ISSUEMix.ISSPDYear, RW, Lrs(3)
                RW = RW + 1
                Lrs.MoveNext
        
            Loop
        End With


Lrs.Close

Exit Sub
Load_MixWiseIssue_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Load_MixWiseIssue of Form frmDashBoard", vbInformation, head
Screen.MousePointer = 0

End Sub



Private Sub Load_RECEIPTLIST()
Dim Lrs As New ADODB.Recordset
Dim lstrSql As String
Dim llngRow As Long

On Error GoTo Load_RECEIPTLIST_Error

Set Lrs = New Recordset
Lrs.Open "exec KSP_RMIDASHBORD_VARRECIPTLIST '" & Divcode & "','" & Format(pdate, "yyyy-mm-dd") & "','" & Format(pdate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic

If Lrs.EOF Then
   Screen.MousePointer = 0
   Exit Sub
End If

  Call SETSPDRECLIST(Lrs.RecordCount)
    Lrs.MoveFirst
        With SPDRECLIST
            .MaxRows = 0
            .MaxCols = REC_LIST.RECSPDYEARVAL
           ' .CursorStyle = CursorStyleArrow
            RW = 1
            Do While Not Lrs.EOF
                .MaxRows = .MaxRows + 1
                '.SetText REC_LIST.ISSPDSNO, RW, CStr(RW)
                .SetText REC_LIST.RECSPDVar, RW, Lrs(0)
                .SetText REC_LIST.RECSPDDay, RW, Lrs(1)
                .SetText REC_LIST.RECSPDCURMON, RW, Lrs(2)
                .SetText REC_LIST.RECSPDPRVMON, RW, Lrs(3)
                .SetText REC_LIST.RECSPDYEAR, RW, Lrs(4)
                
                .SetText REC_LIST.RECSPDDayVal, RW, Lrs("DayVal")
                .SetText REC_LIST.RECSPDPRVMONVAL, RW, Lrs("PrvMonthval")
                .SetText REC_LIST.RECSPDCURMONVAL, RW, Lrs("Monthval")
                .SetText REC_LIST.RECSPDYEARVAL, RW, Lrs("YearVal")
                RW = RW + 1
                Lrs.MoveNext
        
            Loop
        End With


Lrs.Close

Exit Sub
Load_RECEIPTLIST_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Load_MixWiseIssue of Form frmDashBoard", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Load_VARORDERLIST()
Dim Lrs As New ADODB.Recordset
Dim lstrSql As String
Dim llngRow As Long
On Error GoTo Load_ORDERLIST_Error
Set Lrs = New Recordset
Lrs.Open "exec KSP_RMIDASHBORD_VARORDERLIST '" & Divcode & "','" & Format(pdate, "yyyy-mm-dd") & "','" & Format(pdate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic

If Lrs.EOF Then
   Screen.MousePointer = 0
   Exit Sub
End If

  Call SETSPDVARORD(Lrs.RecordCount)
    Lrs.MoveFirst
        With SPDORDList
            .MaxRows = 0
            .MaxCols = ORD_LIST.ORDSPDYEAR
           ' .CursorStyle = CursorStyleArrow
            RW = 1
            Do While Not Lrs.EOF
                .MaxRows = .MaxRows + 1
                .SetText ORD_LIST.ORDSPSNO, RW, CStr(RW)
                .SetText ORD_LIST.ORDSPDVar, RW, Lrs(0)
                .SetText ORD_LIST.ORDSPDDay, RW, Lrs(1)
                .SetText ORD_LIST.ORDSPDCURMON, RW, Lrs(2)
                .SetText ORD_LIST.ORDSPDPRVMON, RW, Lrs(3)
                .SetText ORD_LIST.ORDSPDYEAR, RW, Lrs(4)
                RW = RW + 1
                Lrs.MoveNext
            Loop
        End With
Lrs.Close
Exit Sub
Load_ORDERLIST_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Load_MixWiseIssue of Form frmDashBoard", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Load_UNBILLEDRECLIST()
Dim Lrs As New ADODB.Recordset
Dim lstrSql As String
Dim llngRow As Long
On Error GoTo Load_ORDERLIST_Error
Set Lrs = New Recordset
Lrs.Open "SELECT slname ,VARNAME ,LOTDT ,LOTNO ,BILLNO ,PJAMT , NETWT  FROM  VW_RMI_DB_UNBILLLIST WHERE DIVCODE= '" & Divcode & "' AND recdate BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(pdate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic

If Lrs.EOF Then
   Screen.MousePointer = 0
   Exit Sub
End If
  Call SETSPDUNBILLEDLIST(Lrs.RecordCount)
    Lrs.MoveFirst
        With SPDUNBILLLIST
            .MaxRows = 0
            .MaxCols = PB_LIST.PBSPDVALUE
            

            RW = 1
            Do While Not Lrs.EOF
                .MaxRows = .MaxRows + 1
                .SetText PB_LIST.PBSPDSUP, RW, Lrs(0)
                .SetText PB_LIST.PBSPDLOTNO, RW, Lrs("LotNo")
                .SetText PB_LIST.PBSPDLOTDT, RW, Lrs("LOTDT")
                .SetText PB_LIST.PBSPDVAR, RW, Lrs("VARNAME")
                .SetText PB_LIST.PBSPDsupbill, RW, Lrs("BILLNO")
                .SetText PB_LIST.PBSPDQTY, RW, Lrs("NETWT")
                .SetText PB_LIST.PBSPDVALUE, RW, Lrs("PJAMT")
                RW = RW + 1
                Lrs.MoveNext
            Loop
        End With
Lrs.Close
Exit Sub
Load_ORDERLIST_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Load_MixWiseIssue of Form frmDashBoard", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Load_StoCk()

Dim lstrSql As String
Dim Lrs As New ADODB.Recordset
Dim llngRow As Long
Dim arr() As String
Dim F_Date As String
Dim T_Date As String

On Error GoTo Load_StoCk_Error

 F_Date = Format(pdate, "dd-mm-yyyy")
 T_Date = Format(pdate, "dd-mm-yyyy")

 Lrs.Open " SELECT Top 5 Varn, sum(Bales),sum(Stock), sum(val) FROM (select b.varcode,a.varname as Varn,b.lotno,b.lotdt,isnull(b.catcd,' ') as catcd,a.varname, (Result.clobales + Result.cloboras) as bales," & _
                            " Result.clokgs as stock,closevalue as val," & _
                            " b.plotno,b.ratecy as RateCandy ,b.ratekg from " & _
                            " (select a.varcode,A.LOTNO,A.LOTDT,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
                            " sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
                            " sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
                            " case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
                            " case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
                            " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
                            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                            " ((select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                            " select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND " & _
                            " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0  and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
                            " UNION select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs ,0 as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
                            " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
                            " union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as issbales,0 as issboras,sum(C.ACTISSKGS) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND  B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
                            " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg) a  group by varcode,LOTNO,LOTDT  Union " & _
                            " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
                            " case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue from rm_lot b " & _
                            " where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'   AND B.LOTDT BETWEEN '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
                            " group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG  Union  select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as opvalue,0 as recvalue,0  as issvalue from " & _
                            " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg UNION ALL" & _
                            " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.ACTISSKGS) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'   and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg))a group by a.varcode,A.LOTNO,A.LOTDT) AS Result, " & _
                            " rm_lot b,rm_Var a,RM_Cat c where (b.TransferType='' OR b.TransferType='JR')  and Result.LotNo=b.LotNo and Result.LotDt=b.Lotdt AND b.DIVCODE='" & Divcode & "' AND BALES >0  AND a.Varcode=b.Varcode and c.Catcd=b.Catcd  group by b.varcode,a.varname,b.lotno,b.lotdt,b.catcd,a.varname, Result.clobales , Result.cloboras, " & _
                            " Result.clokgs,closevalue, b.plotno,b.ratecy,b.ratekg ) as x GROUP BY x.varcode,Varn order by  2 desc ", DB, adOpenStatic, adLockBatchOptimistic



spdStk.ClearRange 1, 1, spdStk.MaxCols, 5, True

'Set Lrs = DB.Execute(lstrSql)
ReDim arr(4, 1)

MSChart1.ColumnCount = 5

If Not Lrs.EOF Then
    Do While Not Lrs.EOF
        llngRow = llngRow + 1
                
        spdStk.SetText 1, llngRow, Lrs(0)
        spdStk.SetText 2, llngRow, Lrs(1)
        spdStk.SetText 3, llngRow, Lrs(2)
        spdStk.SetText 4, llngRow, Lrs(3)
        
        arr(llngRow - 1, 0) = Lrs(0)
        arr(llngRow - 1, 1) = (Lrs(3) / 100000)
    
        MSChart1.Column = llngRow
        MSChart1.ColumnLabel = Lrs(0)
        
        Lrs.MoveNext
    Loop
End If

MSChart1.ChartData = arr

Lrs.Close

Exit Sub
Load_StoCk_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Load_StoCk of Form frmDashBoard", vbInformation, head
Screen.MousePointer = 0

End Sub


Private Sub mixINGwiseIssue()
On Error GoTo Load_StoCk_Error

    Set DB = New Connection
    DB.Open connectstring
'    Date1 = IssurCharrep.DataCombo1.Text
'    Date2 = IssurCharrep.DataCombo2.Text
'    ISSTYPE = Trim(Mid$(IssurCharrep.Combo1.Text, 1, InStr(IssurCharrep.Combo1.Text, "-") - 1))
'
    Set Rs = New Recordset
    'rs.Open "select a.varcode,round((sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0))),2) 'Amount' from rm_lot a,rm_issb b,rm_issh c, rm_count d,rm_bale e  Where b.lottype=e.lottype and b.lotno=e.lotno  and b.catcd=e.catcd and b.baleno=e.baleno and  a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and  d.cntcd=*a.cntcode and c.docdt between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(date2, "YYYY-MM-DD") & "'  and b.isstype='" & isstype & "' group by  varcode ", DB, adOpenStatic
  '*=
  ''  Rs.Open "select isnull(a.cntcode,'') as cntcode,round(Sum(isnull(b.actisskgs,0)-isnull(e.tarewt,0)),2) 'netkgs'  from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e,rm_issuetype f  Where b.isstype=f.issue_code and c.isstype=f.issue_code and  a.lotdt=b.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and a.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno and a.divcode = '" & Divcode & "'  and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and  d.cntcd=*a.cntcode and   c.docdt  between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(Date2, "YYYY-MM-DD") & "' and a.rejflg='N'  and f.isstype='" & ISSTYPE & "' group by a.cntcode ", db, adOpenStatic
'     Rs.Open "select isnull(a.cntcode,'') as cntcode,round(Sum(isnull(b.actisskgs,0)-isnull(e.tarewt,0)),2) 'netkgs'  from rm_lot a " & _
'     " inner join rm_issb b on A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt " & _
'     " inner join rm_issh c on C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno " & _
'     " left join rm_count d on d.cntcd = a.cntcode inner join rm_bale e on b.lottype=e.lottype and b.lotno=e.lotno and a.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno inner join rm_issuetype f on b.isstype=f.issue_code and c.isstype=f.issue_code Where a.divcode = '" & Divcode & "' and   c.docdt  between '" & Format(mfdate, "YYYY-MM-DD") & "' and '" & Format(pdate, "YYYY-MM-DD") & "' and a.rejflg='N'  group by a.cntcode ", DB, adOpenStatic

Rs.Open "exec KSP_RMIDASHBORDMIXINGCHART '" & Divcode & "','" & Format(pdate, "yyyy-mm-dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic

    If Rs.RecordCount = 0 Then
      ' MsgBox "No records found", vbInformation, head
       MSChart3.Visible = False
       Screen.MousePointer = 0
       Exit Sub
    End If
    
    ReDim arrValues(1 To Rs.RecordCount, 1 To 2)
    'Dim i As Integer
    Rs.MoveFirst
    
    For I = 1 To Rs.RecordCount
        arrValues(I, 1) = Rs("MIXGRPNAME")
        arrValues(I, 2) = Rs("netkgs")
        Rs.MoveNext
    Next I
    
    MSChart3.ChartData = arrValues
    MSChart3.ChartType = VtChChartType2dBar
    MSChart3.Stacking = False
    MSChart3.Column = 1
    MSChart3.ColumnLabel = "MIXING"
    'MSChart1.Title = "VARIETYWISE ISSUE CHART FROM "
    MSChart3.Title = "MIXING ISSUE CHART  FROM  " & Format(mfdate, "DD/MM/YYYY") & "  TO  " & Format(pdate, "DD/MM/YYYY")
    With MSChart3.Plot.Backdrop
      .Fill.Style = VtFillStyleBrush
      .Fill.Brush.FillColor.Set 200, 255, 200
      .Frame.Style = VtFrameStyleThickOuter
      .Shadow.Style = VtShadowStyleDrop
    End With
    With MSChart3.Plot
       .Wall.Brush.Style = VtBrushStyleSolid
    End With
    With MSChart3.Plot
       .PlotBase.BaseHeight = 500
       .PlotBase.Brush.Style = VtBrushStyleSolid
       .PlotBase.Brush.FillColor.Set 0, 0, 255
    End With
    
    Screen.MousePointer = 0
    
Exit Sub
Load_StoCk_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Load_StoCk of Form frmDashBoard", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub COUNTWISEIssue()

On Error GoTo Load_StoCk_Error
    Set DB = New Connection
    DB.Open connectstring
'    Date1 = IssurCharrep.DataCombo1.Text
'    Date2 = IssurCharrep.DataCombo2.Text
'    ISSTYPE = Trim(Mid$(IssurCharrep.Combo1.Text, 1, InStr(IssurCharrep.Combo1.Text, "-") - 1))
'
    Set Rs = New Recordset
    'rs.Open "select a.varcode,round((sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0))),2) 'Amount' from rm_lot a,rm_issb b,rm_issh c, rm_count d,rm_bale e  Where b.lottype=e.lottype and b.lotno=e.lotno  and b.catcd=e.catcd and b.baleno=e.baleno and  a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and  d.cntcd=*a.cntcode and c.docdt between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(date2, "YYYY-MM-DD") & "'  and b.isstype='" & isstype & "' group by  varcode ", DB, adOpenStatic
  '*=
  ''  Rs.Open "select isnull(a.cntcode,'') as cntcode,round(Sum(isnull(b.actisskgs,0)-isnull(e.tarewt,0)),2) 'netkgs'  from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e,rm_issuetype f  Where b.isstype=f.issue_code and c.isstype=f.issue_code and  a.lotdt=b.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and a.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno and a.divcode = '" & Divcode & "'  and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and  d.cntcd=*a.cntcode and   c.docdt  between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(Date2, "YYYY-MM-DD") & "' and a.rejflg='N'  and f.isstype='" & ISSTYPE & "' group by a.cntcode ", db, adOpenStatic
     Rs.Open "select isnull(a.cntcode,'') as cntcode,round(Sum(isnull(b.actisskgs,0)-isnull(e.tarewt,0)),2) 'netkgs'  from rm_lot a " & _
     " inner join rm_issb b on A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt " & _
     " inner join rm_issh c on C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno " & _
     " left join rm_count d on d.cntcd = a.cntcode inner join rm_bale e on b.lottype=e.lottype and b.lotno=e.lotno and a.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno inner join rm_issuetype f on b.isstype=f.issue_code and c.isstype=f.issue_code Where a.divcode = '" & Divcode & "' and   c.docdt  between '" & Format(mfdate, "YYYY-MM-DD") & "' and '" & Format(pdate, "YYYY-MM-DD") & "' and a.rejflg='N'  group by a.cntcode ", DB, adOpenStatic
    
    If Rs.RecordCount = 0 Then
      ' MsgBox "No records found", vbInformation, head
       MSChart5.Visible = False
       Screen.MousePointer = 0
       Exit Sub
    End If
    
    ReDim arrValues(1 To Rs.RecordCount, 1 To 2)
    'Dim i As Integer
    Rs.MoveFirst
    
    For I = 1 To Rs.RecordCount
        arrValues(I, 1) = Rs("cntCODE")
        arrValues(I, 2) = Rs("netkgs")
        Rs.MoveNext
    Next I
    
    MSChart5.ChartData = arrValues
    MSChart5.ChartType = VtChChartType2dPie
    MSChart5.Stacking = False
    MSChart5.Column = 1
    MSChart5.ColumnLabel = "COUNT"
    'MSChart1.Title = "VARIETYWISE ISSUE CHART FROM "
    MSChart5.Title = "COUNTWISE ISSUE CHART  FROM  " & Format(mfdate, "DD/MM/YYYY") & "  TO  " & Format(pdate, "DD/MM/YYYY")
    With MSChart5.Plot.Backdrop
      .Fill.Style = VtFillStyleBrush
      .Fill.Brush.FillColor.Set 200, 255, 200
      .Frame.Style = VtFrameStyleThickOuter
      .Shadow.Style = VtShadowStyleDrop
    End With
    With MSChart5.Plot
       .Wall.Brush.Style = VtBrushStyleSolid
    End With
    With MSChart5.Plot
       .PlotBase.BaseHeight = 200
       .PlotBase.Brush.Style = VtBrushStyleSolid
       .PlotBase.Brush.FillColor.Set 0, 0, 255
    End With
    
    Screen.MousePointer = 0
    
Exit Sub
Load_StoCk_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Load_StoCk of Form frmDashBoard", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Load_PendingORdList()
On Error GoTo Form_Load_Error
Dim arrValues()
Screen.MousePointer = 11
Set DB = New Connection
DB.Open connectstring

 
Set Rs = New Recordset

Rs.Open "SELECT  slname slname,round(SUM(ordqty),3) Qty,slcode FROM VW_RMI_DB_PendingORDSUP A where a.divcode='" & Divcode & "' AND A.contdt<= '" & Format(pdate, "YYYY-MM-DD") & "' GROUP BY slname,slcode ", DB, adOpenStatic ' DB, adOpenDynamic, adLockOptimistic


If Rs.RecordCount = 0 Then
   'MsgBox "No records found", vbInformation, head
   'MSChart1.Visible = False
   Screen.MousePointer = 0
   Exit Sub
End If

   Dim X As Integer, oChartItem As clsChartItem
    'ActiveChart1.IntersectMajor = 1000
Rs.MoveFirst
  
            Do While Not Rs.EOF
                 Set oChartItem = New clsChartItem
                oChartItem.ItemID = RW
                oChartItem.SelectedDescription = Rs(0)
                oChartItem.value = Rs(1)
                oChartItem.XAxisDescription = Rs(2)
                AnimatedChart3.AddItem oChartItem
                
     Rs.MoveNext
        
            Loop

    
    Set Rs = New Recordset

    Rs.Open "SELECT  varname varname,round(SUM(ordqty),3) Qty,varcode FROM VW_RMI_DB_PendingORDSUP A where a.divcode='" & Divcode & "' AND A.contdt<= '" & Format(pdate, "YYYY-MM-DD") & "' GROUP BY varname,varcode ", DB, adOpenStatic ' DB, adOpenDynamic, adLockOptimistic

If Rs.RecordCount = 0 Then
   'MsgBox "No records found", vbInformation, head
    'SChart1.Visible = False
   Screen.MousePointer = 0
   Exit Sub
End If

 '  Dim X As Integer, oChartItem As clsChartItem
    'ActiveChart1.IntersectMajor = 1000
Rs.MoveFirst
     
            Do While Not Rs.EOF
                 Set oChartItem = New clsChartItem
                oChartItem.ItemID = RW
                oChartItem.SelectedDescription = Rs(0)
                oChartItem.value = Rs(1)
                oChartItem.XAxisDescription = Rs(2)
                AnimatedChart5.AddItem oChartItem
                
     Rs.MoveNext
        
            Loop


Screen.MousePointer = 0

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Varrecchart", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Load_RECEIPTLISTChart()
On Error GoTo Form_Load_Error
Dim arrValues()
Screen.MousePointer = 11
Set DB = New Connection
DB.Open connectstring


Set Rs = New Recordset

Rs.Open "SELECT  Supplier slname,round(SUM(Receipt),3) Qty,slcode FROM VW_RM_DB_ReceiptLIST A where a.divcode='" & Divcode & "' AND A.lotdt between  '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(pdate, "YYYY-MM-DD") & "' GROUP BY Supplier,slcode ", DB, adOpenStatic ' DB, adOpenDynamic, adLockOptimistic


If Rs.RecordCount = 0 Then
   'MsgBox "No records found", vbInformation, head
   'MSChart1.Visible = False
   Screen.MousePointer = 0
   Exit Sub
End If

   Dim X As Integer, oChartItem As clsChartItem
    'ActiveChart1.IntersectMajor = 1000
Rs.MoveFirst
     
            Do While Not Rs.EOF
                 Set oChartItem = New clsChartItem
                oChartItem.ItemID = RW
                oChartItem.SelectedDescription = Rs(0)
                oChartItem.value = Rs(1)
                oChartItem.XAxisDescription = Rs(2)
                AnimatedChart4.AddItem oChartItem
                
     Rs.MoveNext
        
            Loop

    

Screen.MousePointer = 0

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Varrecchart", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub SETSPDVARITYSTOCK(Optional NoofRows As Integer = 0)
With SpdVarStock
    .ClearSelection
    .MaxRows = 0
    .ColHeadersAutoText = DispBlank
    .ClearSelection
    .MaxCols = E_VARStock.SPDSValue
    .RowHeadersShow = False
    .Row = 1
    .FontBold = True
    .OperationMode = OperationModeRow
    .TypeCheckCenter = True
    .TypeCheckType = TypeCheckTypeThreeState
    SetSpreadCol1 SpdVarStock, E_VARStock.SPDSVSNO, "S.No.", CellTypeNumber, 4, , False, True
    SetSpreadCol1 SpdVarStock, E_VARStock.SPDSVariety, "Variety", CellTypeStaticText, 20, , False, True
    SetSpreadCol1 SpdVarStock, E_VARStock.SPDSQty, "Quantity", CellTypeStaticText, 7, , False, True
    SetSpreadCol1 SpdVarStock, E_VARStock.SPDSKgs, "Stock in TON", CellTypeStaticText, 10, 3, False, True
    SetSpreadCol1 SpdVarStock, E_VARStock.SPDSValue, "Value In Lakhs", CellTypeNumber, 8, 2, False, True
'    SetSpreadCol1 SpdVarStock, E_VARStock.SPDSA, "A", CellTypeStaticText, 20, 0, False, True
    SpdVarStock.MaxRows = NoofRows
   
'    SpdVarStock.ColsFrozen = SPDSKgs

End With

End Sub

Private Sub SETSPDISSUEMIX(Optional NoofRows As Integer = 0)
'With SPDISSUEMIX
'    .ClearSelection
'    .MaxRows = 0
'    .ColHeadersAutoText = DispBlank
'    .ClearSelection
'    .MaxCols = IM_ISSUEMix.ISSPDYear
'    .RowHeadersShow = False
'    .Row = 1
'    .FontBold = True
'    .OperationMode = OperationModeRow
'    .TypeCheckCenter = True
'    .TypeCheckType = TypeCheckTypeThreeState
   SPDISSUEMIX.Row = 0
    SPDISSUEMIX.FontBold = True
    SetSpreadCol1 SPDISSUEMIX, IM_ISSUEMix.ISSPDSNO, "S.No.", CellTypeNumber, 5, , False, True
    SetSpreadCol1 SPDISSUEMIX, IM_ISSUEMix.ISSPDMIX, "Mixing", CellTypeStaticText, 16, , False, True
    SetSpreadCol1 SPDISSUEMIX, IM_ISSUEMix.ISSPDDay, "For The Day", CellTypeNumber, 7, 3, False, True
    SetSpreadCol1 SPDISSUEMIX, IM_ISSUEMix.ISSPDMon, "For the Month", CellTypeNumber, 10, 3, False, True
    SetSpreadCol1 SPDISSUEMIX, IM_ISSUEMix.ISSPDYear, "For the Year", CellTypeNumber, 10, 3, False, True
    SPDISSUEMIX.MaxRows = NoofRows
'End With

End Sub

Private Sub SETSPDTOPSUP(Optional NoofRows As Integer = 0)
With SPDTOPSUP
    .ClearSelection
    .MaxRows = 0
    .ColHeadersAutoText = DispBlank
    .ClearSelection
    .MaxCols = TS_TopSup.TSSPDValue
    .RowHeadersShow = False
    .Row = 1
    .FontBold = True
    .OperationMode = OperationModeRow
    .TypeCheckCenter = True
    .TypeCheckType = TypeCheckTypeThreeState

'
'   SPDTOPSUP.Row = 0
    SPDTOPSUP.FontBold = True
    SetSpreadCol1 SPDTOPSUP, TS_TopSup.TSSPSNO, "S.No.", CellTypeNumber, 5, , False, True
    SetSpreadCol1 SPDTOPSUP, TS_TopSup.TSSPDSup, "Supplier", CellTypeStaticText, 25, , False, True
    SetSpreadCol1 SPDTOPSUP, TS_TopSup.TSSPDKgs, "Quantity in TON", CellTypeNumber, 10, 3, False, True
    SetSpreadCol1 SPDTOPSUP, TS_TopSup.TSSPDValue, "Value in Lakhs", CellTypeNumber, 12, 2, False, True
    SPDTOPSUP.MaxRows = NoofRows
End With

End Sub

Private Sub SETSPDVARISSUE(Optional NoofRows As Integer = 0)
With SPDVARISSUE
    .ClearSelection
    .MaxRows = 0
    .ColHeadersAutoText = DispBlank
    .ClearSelection
    .MaxCols = VAR_ISSUE.VARSPDYEAR
    .RowHeadersShow = False
    .Row = 1
    .FontBold = True
    .OperationMode = OperationModeRow
    .TypeCheckCenter = True
    .TypeCheckType = TypeCheckTypeThreeState '
'   SPDTOPSUP.Row = 0
    SPDTOPSUP.FontBold = True
    SetSpreadCol1 SPDVARISSUE, VAR_ISSUE.VARSPSNO, "S.No.", CellTypeNumber, 4, , False, True
    SetSpreadCol1 SPDVARISSUE, VAR_ISSUE.VARSPDVar, "Variety", CellTypeStaticText, 20, , False, True
    SetSpreadCol1 SPDVARISSUE, VAR_ISSUE.VARSPDDay, "For the Day", CellTypeStaticText, 6, 3, False, True
    SetSpreadCol1 SPDVARISSUE, VAR_ISSUE.VARSPDCURMON, "Current Month", CellTypeNumber, 8, 3, False, True
    SetSpreadCol1 SPDVARISSUE, VAR_ISSUE.VARSPDPRVMON, "Previous Month ", CellTypeNumber, 8, 3, False, True
    SetSpreadCol1 SPDVARISSUE, VAR_ISSUE.VARSPDYEAR, "For the Year", CellTypeNumber, 8, 3, False, True
    SPDVARISSUE.MaxRows = NoofRows
End With
End Sub

Private Sub SETSPDVARORD(Optional NoofRows As Integer = 0)
With SPDORDList
    .ClearSelection
    .MaxRows = 0
    .ColHeadersAutoText = DispBlank
    .ClearSelection
    .MaxCols = ORD_LIST.ORDSPDYEAR
    .RowHeadersShow = False
    .Row = 1
    .FontBold = True
    .OperationMode = OperationModeRow
    .TypeCheckCenter = True
    .TypeCheckType = TypeCheckTypeThreeState '
'   SPDTOPSUP.Row = 0
    SPDTOPSUP.FontBold = True
    SetSpreadCol1 SPDORDList, ORD_LIST.ORDSPSNO, "S.No.", CellTypeNumber, 4, , False, True
    SetSpreadCol1 SPDORDList, ORD_LIST.ORDSPDVar, "Variety", CellTypeStaticText, 20, , False, True
    SetSpreadCol1 SPDORDList, ORD_LIST.ORDSPDDay, "For the Day", CellTypeStaticText, 6, 3, False, True
    SetSpreadCol1 SPDORDList, ORD_LIST.ORDSPDCURMON, "Current Month", CellTypeNumber, 7, 3, False, True
    SetSpreadCol1 SPDORDList, ORD_LIST.ORDSPDPRVMON, "Previous Month ", CellTypeNumber, 7, 3, False, True
    SetSpreadCol1 SPDORDList, ORD_LIST.ORDSPDYEAR, "For the Year", CellTypeNumber, 7, 3, False, True
'    SetSpreadCol1 SPDORDList, ORD_LIST.ORDSPDPrnding, "Pending", CellTypeNumber, 7, 3, False, True
    SPDORDList.MaxRows = NoofRows
End With

End Sub

Private Sub SETSPDRECLIST(Optional NoofRows As Integer = 0)

    SPDRECLIST.Row = 0
    SPDRECLIST.FontBold = True
   ' SetSpreadCol1 SPDRECLIST, REC_LIST.RECSPSNO, "S.No.", CellTypeNumber, 5, , False, True
    SetSpreadCol1 SPDRECLIST, REC_LIST.RECSPDVar, "Variety", CellTypeStaticText, 16, , False, True
    SetSpreadCol1 SPDRECLIST, REC_LIST.RECSPDDay, "For The Day", CellTypeNumber, 7, 3, False, True
    SetSpreadCol1 SPDRECLIST, REC_LIST.RECSPDDayVal, "For The Day Value", CellTypeNumber, 7, 2, False, True
    SetSpreadCol1 SPDRECLIST, REC_LIST.RECSPDCURMON, "For the Month", CellTypeNumber, 8, 3, False, True
    SetSpreadCol1 SPDRECLIST, REC_LIST.RECSPDCURMONVAL, "For the Month Value", CellTypeNumber, 8, 2, False, True
    SetSpreadCol1 SPDRECLIST, REC_LIST.RECSPDPRVMON, "Previous Month", CellTypeNumber, 8, 3, False, True
    SetSpreadCol1 SPDRECLIST, REC_LIST.RECSPDPRVMONVAL, "Previous Month Value", CellTypeNumber, 8, 2, False, True
    SetSpreadCol1 SPDRECLIST, REC_LIST.RECSPDYEAR, "For the Year", CellTypeNumber, 8, 3, False, True
    SetSpreadCol1 SPDRECLIST, REC_LIST.RECSPDYEARVAL, "For the Year Value", CellTypeNumber, 8, 2, False, True
    SPDRECLIST.MaxRows = NoofRows
End Sub

Private Sub SETSPDUNBILLEDLIST(Optional NoofRows As Integer = 0)

    SPDUNBILLLIST.Row = 0
    SPDUNBILLLIST.FontBold = True
   ' SetSpreadCol1 SPDRECLIST, REC_LIST.RECSPSNO, "S.No.", CellTypeNumber, 5, , False, True
    SetSpreadCol1 SPDUNBILLLIST, PB_LIST.PBSPDSUP, "Supplier", CellTypeStaticText, 14, , False, True
    SetSpreadCol1 SPDUNBILLLIST, PB_LIST.PBSPDLOTNO, "Lot No.", CellTypeNumber, 6, , False, True
    SetSpreadCol1 SPDUNBILLLIST, PB_LIST.PBSPDLOTDT, "Lot Date", CellTypeStaticText, 7, , False, True
    SetSpreadCol1 SPDUNBILLLIST, PB_LIST.PBSPDVAR, "Variety", CellTypeStaticText, 12, , False, True
    SetSpreadCol1 SPDUNBILLLIST, PB_LIST.PBSPDsupbill, "Supplier Bill No.", CellTypeStaticText, 9, , False, True
    SetSpreadCol1 SPDUNBILLLIST, PB_LIST.PBSPDQTY, "QTY in TON", CellTypeNumber, 6, 3, False, True
    SetSpreadCol1 SPDUNBILLLIST, PB_LIST.PBSPDVALUE, "Value", CellTypeNumber, 6, 2, False, True
  
    SPDUNBILLLIST.MaxRows = NoofRows
End Sub
Private Sub SETSPDPOSTATUS(Optional NoofRows As Integer = 0)

    SPDPOSTATUS.Row = 0
    SPDPOSTATUS.FontBold = True
  
    SetSpreadCol1 SPDPOSTATUS, E_POSTATUS.PO_prdate, "PR. Date", CellTypeStaticText, 6, , False, True
    SetSpreadCol1 SPDPOSTATUS, E_POSTATUS.PO_prno, "PR. No.", CellTypeNumber, 5, , False, True
    SetSpreadCol1 SPDPOSTATUS, E_POSTATUS.PO_itemName, "Variety", CellTypeStaticText, 9, , False, True
    SetSpreadCol1 SPDPOSTATUS, E_POSTATUS.PO_qtyind, "PR Qty", CellTypeNumber, 6, 3, False, True
    SetSpreadCol1 SPDPOSTATUS, E_POSTATUS.PO_APPDATE, "Approv. Dt.", CellTypeStaticText, 6, , False, True
    SetSpreadCol1 SPDPOSTATUS, E_POSTATUS.PO_contno, "Ord. No.", CellTypeNumber, 6, , False, True
    SetSpreadCol1 SPDPOSTATUS, E_POSTATUS.PO_contdt, "Ord. date", CellTypeStaticText, 6, , False, True
    SetSpreadCol1 SPDPOSTATUS, E_POSTATUS.PO_ArrDate, "Arr. Date", CellTypeStaticText, 6, , False, True
    SetSpreadCol1 SPDPOSTATUS, E_POSTATUS.PO_ARRNO, "Arr. No.", CellTypeStaticText, 6, , False, True
    SetSpreadCol1 SPDPOSTATUS, E_POSTATUS.PO_PNETWT, "REC. WT.", CellTypeNumber, 6, 3, False, True
    SetSpreadCol1 SPDPOSTATUS, E_POSTATUS.PO_PJNO, "PJ NO", CellTypeStaticText, 6, , False, True
    SetSpreadCol1 SPDPOSTATUS, E_POSTATUS.PO_PJDT, "PJ Date", CellTypeStaticText, 6, , False, True
    SetSpreadCol1 SPDPOSTATUS, E_POSTATUS.PO_PR_APPDays, "PR_Approv. Days", CellTypeStaticText, 6, , False, True
    SetSpreadCol1 SPDPOSTATUS, E_POSTATUS.PO_PR_PODays, "PR_PO Days", CellTypeStaticText, 6, , False, True
    SetSpreadCol1 SPDPOSTATUS, E_POSTATUS.PO_PR_MRNDays, "PR_MRN Days", CellTypeStaticText, 6, , False, True
    SetSpreadCol1 SPDPOSTATUS, E_POSTATUS.PO_PO_MRNDays, "PO_MRN Days", CellTypeStaticText, 6, , False, True
    SetSpreadCol1 SPDPOSTATUS, E_POSTATUS.PO_MRN_PJVDays, "PO_MRN_PJV Days", CellTypeStaticText, 6, , False, True
    SetSpreadCol1 SPDPOSTATUS, E_POSTATUS.PO_MRN_PayDays, "PO_MRN_PayDays", CellTypeStaticText, 6, , False, True
  
    SPDPOSTATUS.MaxRows = NoofRows
End Sub




