VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Frm_FreightMapping 
   Caption         =   "Freight GL Mapping"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form4"
   MDIChild        =   -1  'True
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   0
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightMapping.frx":0000
         Height          =   510
         Index           =   4
         Left            =   1110
         Picture         =   "Frm_FreightMapping.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Find (Ctrl R)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightMapping.frx":069F
         Height          =   510
         Index           =   8
         Left            =   3240
         Picture         =   "Frm_FreightMapping.frx":0AE9
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightMapping.frx":0E4B
         Height          =   510
         Index           =   10
         Left            =   4290
         Picture         =   "Frm_FreightMapping.frx":1155
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "Cancel (Ctrl Backspace) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightMapping.frx":14D1
         Height          =   510
         Index           =   9
         Left            =   3765
         Picture         =   "Frm_FreightMapping.frx":17DB
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightMapping.frx":1B7D
         Height          =   510
         Index           =   11
         Left            =   4815
         Picture         =   "Frm_FreightMapping.frx":1FC7
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightMapping.frx":235C
         Height          =   510
         Index           =   7
         Left            =   2715
         Picture         =   "Frm_FreightMapping.frx":27A6
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightMapping.frx":2AF6
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "Frm_FreightMapping.frx":2E00
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   540
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightMapping.frx":317A
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   2
         Left            =   6120
         Picture         =   "Frm_FreightMapping.frx":3484
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   0
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightMapping.frx":3820
         Height          =   510
         Index           =   5
         Left            =   1650
         Picture         =   "Frm_FreightMapping.frx":3C6A
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightMapping.frx":3FCF
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "Frm_FreightMapping.frx":42D9
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_FreightMapping.frx":466C
         Height          =   510
         Index           =   6
         Left            =   2190
         Picture         =   "Frm_FreightMapping.frx":4AB6
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DESC"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   7320
         TabIndex        =   21
         Top             =   240
         Width           =   600
      End
      Begin VB.Label DATLAB 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DATE"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   9000
         TabIndex        =   20
         Top             =   240
         Width           =   630
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   6705
      Top             =   8355
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   22
      Top             =   2790
      Width           =   4680
      _ExtentX        =   8255
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Text            =   "Kalsofte"
            TextSave        =   "Kalsofte"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   12630
            MinWidth        =   12630
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "01/08/2021"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "22:31 PM"
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4050
      Left            =   120
      TabIndex        =   23
      Top             =   1245
      Width           =   7410
      _ExtentX        =   13070
      _ExtentY        =   7144
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "Payment GL Mapping"
      TabPicture(0)   =   "Frm_FreightMapping.frx":4E03
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame7"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame7 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3525
         Left            =   90
         TabIndex        =   24
         Top             =   360
         Width           =   7065
         Begin VB.TextBox txtFields 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   15
            Left            =   3240
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   45
            TabStop         =   0   'False
            Top             =   2640
            Width           =   3615
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Others_GL"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   14
            Left            =   1320
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   7
            Top             =   2640
            Width           =   1815
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   13
            Left            =   3240
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   43
            TabStop         =   0   'False
            Top             =   3000
            Width           =   3615
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Roundoff_GL"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   12
            Left            =   1320
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   8
            Top             =   3000
            Width           =   1815
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   11
            Left            =   3240
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   41
            TabStop         =   0   'False
            Top             =   1200
            Width           =   3615
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Discount_GL"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   10
            Left            =   1320
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   3
            Top             =   1200
            Width           =   1815
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "TC"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   9
            Left            =   1320
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   1
            Top             =   360
            Width           =   1815
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   8
            Left            =   3240
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   39
            TabStop         =   0   'False
            Top             =   360
            Width           =   3615
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "IGST_GL"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   7
            Left            =   1320
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   6
            Top             =   2280
            Width           =   1815
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   6
            Left            =   3240
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   37
            TabStop         =   0   'False
            Top             =   2280
            Width           =   3615
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "SGST_GL"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   5
            Left            =   1320
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   5
            Top             =   1920
            Width           =   1815
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   2
            Left            =   3240
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   35
            TabStop         =   0   'False
            Top             =   1920
            Width           =   3615
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "CGST_GL"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   1
            Left            =   1320
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   4
            Top             =   1560
            Width           =   1815
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   0
            Left            =   3240
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   33
            TabStop         =   0   'False
            Top             =   1560
            Width           =   3615
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   4
            Left            =   3240
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   32
            TabStop         =   0   'False
            Top             =   840
            Width           =   3615
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "AssValue_GL"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   3
            Left            =   1320
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   2
            Top             =   840
            Width           =   1815
         End
         Begin VB.TextBox Text10 
            Height          =   345
            Left            =   7200
            TabIndex        =   27
            Top             =   6960
            Visible         =   0   'False
            Width           =   1905
         End
         Begin VB.TextBox txtFields 
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   26
            Left            =   3360
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   26
            TabStop         =   0   'False
            Top             =   6960
            Visible         =   0   'False
            Width           =   3765
         End
         Begin VB.TextBox txtFields 
            DataField       =   "colorcode"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   75
            Left            =   1200
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   25
            Top             =   6960
            Visible         =   0   'False
            Width           =   2085
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Others"
            Height          =   195
            Index           =   7
            Left            =   120
            TabIndex        =   46
            Top             =   2715
            Width           =   465
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Round Off"
            Height          =   195
            Index           =   6
            Left            =   120
            TabIndex        =   44
            Top             =   3075
            Width           =   735
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Discount"
            Height          =   195
            Index           =   5
            Left            =   120
            TabIndex        =   42
            Top             =   1275
            Width           =   630
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "TC"
            Height          =   195
            Index           =   4
            Left            =   120
            TabIndex        =   40
            Top             =   435
            Width           =   210
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "IGST"
            Height          =   195
            Index           =   3
            Left            =   120
            TabIndex        =   38
            Top             =   2355
            Width           =   375
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "SGST"
            Height          =   195
            Index           =   2
            Left            =   120
            TabIndex        =   36
            Top             =   1995
            Width           =   435
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "CGST"
            Height          =   195
            Index           =   0
            Left            =   120
            TabIndex        =   34
            Top             =   1635
            Width           =   435
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Ass.Value"
            Height          =   195
            Index           =   1
            Left            =   120
            TabIndex        =   31
            Top             =   915
            Width           =   705
         End
         Begin VB.Label Label76 
            Caption         =   "Label76"
            Height          =   15
            Left            =   840
            TabIndex        =   29
            Top             =   1845
            Width           =   255
         End
         Begin VB.Label Label38 
            AutoSize        =   -1  'True
            Caption         =   "Color"
            Height          =   195
            Left            =   240
            TabIndex        =   28
            Top             =   7080
            Width           =   360
         End
      End
   End
   Begin VB.Label Label41 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Lot/Bale Details"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   345
      Left            =   135
      TabIndex        =   30
      Top             =   120
      Width           =   2100
   End
End
Attribute VB_Name = "Frm_FreightMapping"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Opt As String
Dim adoPrimaryRS As New Recordset
Dim db As New Connection


Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error

Select Case Index
Case 0
    Opt = "add"
    On Error Resume Next
    desc.Caption = "Addition"
    SSTab1.Tab = 0
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select Divcode,TC,AssValue_GL,CGST_GL,SGST_GL,IGST_GL,Roundoff_GL,Others_GL,Discount_GL from  RM_FA_PAYMENTGL WHERE 1=2  and divcode='" & Divcode & "' and GRDocDt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockOptimistic

    txtfields(1).Text = ""
    txtfields(5).Text = ""
    txtfields(3).Text = ""
    txtfields(7).Text = ""
    txtfields(10).Text = ""
    txtfields(14).Text = ""
    txtfields(12).Text = ""
    txtfields(9).Text = ""
    
    Frame7.Enabled = True


    'BUTTON(9).ToolTipText = "Add Record"
    Call adddelmod(BUTTON)
    txtfields(9).SetFocus
    
Case 1, 2, 4
   
    If Index = 1 Then
        Opt = "mod"
        desc.Caption = "Modification"
    ElseIf Index = 2 Then
        Opt = "del"
        desc.Caption = "Deletion"
    ElseIf Index = 4 Then
        Opt = "fnd"
        desc.Caption = "Find"
    End If
'
'    txtfields(6).Text = ""
'    txtfields(5).Text = ""
  
  
    LookUp.Clear = True
    LookUp.query = "select a.TC""TC"",tchead""TC Head"" from RM_FA_PAYMENTGL a inner join fa_tcmas b on a.tc=b.tc  where a.divcode='" & Divcode & "'  "
    LookUp.DefCol = "TC Head"
    LookUp.ALIGN = "2000,5000"
    LookUp.Caption = "Payment GL Listing"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
    Set adoPrimaryRS = New Recordset
  
    adoPrimaryRS.Open "select Divcode,TC,AssValue_GL,CGST_GL,SGST_GL,IGST_GL,Roundoff_GL,Others_GL,Discount_GL from  RM_FA_PAYMENTGL where divcode='" & Divcode & "' and tc='" & LookUp.Fields(0) & "' ", db
    If adoPrimaryRS.RecordCount <> 0 Then
        SSTab1.Tab = 0
         txtfields(3).Text = adoPrimaryRS("AssValue_GL")
        txtfields(1).Text = adoPrimaryRS("CGST_GL")
        txtfields(5).Text = adoPrimaryRS("SGST_GL")
        txtfields(7).Text = adoPrimaryRS("IGST_GL")
                
        txtfields(9).Text = adoPrimaryRS("tc")
        txtfields(12).Text = adoPrimaryRS("Roundoff_GL")
        txtfields(14).Text = adoPrimaryRS("Others_GL")
        txtfields(10).Text = adoPrimaryRS("Discount_GL")
     
    End If
 
        LookUp.Clear = True
     
    Else
       Call BUTTON_Click(10)
       Exit Sub
      
    End If
    
    Call disablcontls
    If Opt = "mod" Then
        Call ENABLCONTLS
        Frame7.Enabled = True
        BUTTON(9).ToolTipText = "Modify"
        txtfields(1).Locked = False
        statusbar1.Panels(2).Text = "Select Any Row for Modification"
    ElseIf Opt = "del" Then
        BUTTON(9).ToolTipText = "Delete"
        statusbar1.Panels(2).Text = "Select Any Row for Deletion"
    End If
    If Opt = "mod" Or Opt = "del" Or Opt = "fnd" Then
        Call adddelmod(BUTTON)
    End If
    If Opt = "fnd" Then
        BUTTON(9).Enabled = False
    End If
    txtfields(0).Locked = True
    If Opt = "mod" Then
       ' txtFields(2).Enabled = True
        Frame7.Enabled = True
       ' txtFields(2).Locked = False
    End If
Case 2


    'Deletion
    Set rsz = New Recordset
    rsz.Open "select max(lotdt) from RM_Moisture where divcode='" & Divcode & "'", db, adOpenStatic
    
    If rsz.RecordCount > 0 Then
        If IsDate(rsz(0)) = True Then
            If rsz(0) > pdate Then
                MsgBox "Invalid Processing Date...!!!", vbInformation, head
                Exit Sub
            End If
        End If
    End If

    
   ' db.Execute "delete from RM_Moisture where lotno='" & txtfields(0).Text & "'"
    Opt = "del"
    txtfields(0).Text = ""
    txtfields(1).Text = ""
'    MaskEdBox1(0).Text = "__/__/____"
    desc.Caption = "Deletion"
    BUTTON(4).Enabled = False
    'Call adddelmod(BUTTON)
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = False
    statusbar1.Panels(2).Text = "Select Any Row for Delition"

Case 5
     'first
     desc.Caption = "Query"
     statusbar1.Panels(2).Text = "First Record"
     On Error GoTo GoFirstError
     adoPrimaryRS.MoveFirst
     'Call navi(BUTTON)
     Call FIR(BUTTON)
     BUTTON(4).Enabled = True
     statusbar1.Panels(2).Text = "First Record"
        txtfields(3).Text = adoPrimaryRS("AssValue_GL")
        txtfields(1).Text = adoPrimaryRS("CGST_GL")
        txtfields(5).Text = adoPrimaryRS("SGST_GL")
        
        txtfields(9).Text = adoPrimaryRS("tc")
        txtfields(12).Text = adoPrimaryRS("Roundoff_GL")
        txtfields(14).Text = adoPrimaryRS("Others_GL")
        txtfields(10).Text = adoPrimaryRS("Discount_GL")
        
        txtfields(7).Text = IIf(IsNull(adoPrimaryRS("IGST_GL")), "", adoPrimaryRS("IGST_GL"))
     Beep
     Exit Sub
GoFirstError:
    MsgBox Err.Description, vbInformation, head

Case 6
     'next
      desc.Caption = "Query"
      statusbar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
      On Error GoTo GoNextError
        
      If Not adoPrimaryRS.EOF Then
        adoPrimaryRS.MoveNext
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        BUTTON(4).Enabled = True
      End If
      If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        BUTTON(6).Enabled = False
        BUTTON(8).Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        'Call NEX(BUTTON)
        'moved off the end so go back
        adoPrimaryRS.MoveLast
       ' Call bindcontls
           Beep
      End If
          txtfields(3).Text = adoPrimaryRS("AssValue_GL")
        txtfields(1).Text = adoPrimaryRS("CGST_GL")
        txtfields(5).Text = adoPrimaryRS("SGST_GL")
        txtfields(7).Text = IIf(IsNull(adoPrimaryRS("IGST_GL")), "", adoPrimaryRS("IGST_GL"))
            
        txtfields(9).Text = adoPrimaryRS("tc")
        txtfields(12).Text = adoPrimaryRS("Roundoff_GL")
        txtfields(14).Text = adoPrimaryRS("Others_GL")
        txtfields(10).Text = adoPrimaryRS("Discount_GL")
      
' show the current record
     ' Call navi(BUTTON)
      If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
        BUTTON(8).Enabled = False
        BUTTON(6).Enabled = False
        BUTTON(4).Enabled = True
        Beep
      Else
        BUTTON(8).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(4).Enabled = True
      End If
      Exit Sub
GoNextError:
   MsgBox Err.Description, vbInformation, head

Case 7
    'Previous
     desc.Caption = "Query"
     statusbar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
 
     On Error GoTo GoPrevError
     If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MovePrevious
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        BUTTON(4).Enabled = True
    End If

    If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        'moved off the end so go back
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        'Call PREV(BUTTON)
        adoPrimaryRS.MoveFirst
        BUTTON(4).Enabled = True
    End If
    'show the current record
         txtfields(3).Text = adoPrimaryRS("AssValue_GL")
        txtfields(1).Text = adoPrimaryRS("CGST_GL")
        txtfields(5).Text = adoPrimaryRS("SGST_GL")
        txtfields(7).Text = IIf(IsNull(adoPrimaryRS("IGST_GL")), "", adoPrimaryRS("IGST_GL"))
        
            
        txtfields(9).Text = adoPrimaryRS("tc")
        txtfields(12).Text = adoPrimaryRS("Roundoff_GL")
        txtfields(14).Text = adoPrimaryRS("Others_GL")
        txtfields(10).Text = adoPrimaryRS("Discount_GL")
   ' Call navi(BUTTON)
    If adoPrimaryRS.AbsolutePosition = 1 Then
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(4).Enabled = True
        Beep
        Else
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(4).Enabled = True
        End If
        
    Exit Sub

GoPrevError:
   MsgBox Err.Description, vbInformation, head

Case 8
     'last
     desc.Caption = "Query"
     On Error GoTo GoLastError
     statusbar1.Panels(2).Text = "Last Record"
     adoPrimaryRS.MoveLast
    'calling las procedure from module
     'Call navi(BUTTON)
     Call las(BUTTON)
     BUTTON(4).Enabled = True
     statusbar1.Panels(2).Text = "Last Record"
        txtfields(3).Text = adoPrimaryRS("AssValue_GL")
        txtfields(1).Text = adoPrimaryRS("CGST_GL")
        txtfields(5).Text = adoPrimaryRS("SGST_GL")
        txtfields(7).Text = IIf(IsNull(adoPrimaryRS("IGST_GL")), "", adoPrimaryRS("IGST_GL"))
        
            
        txtfields(9).Text = adoPrimaryRS("tc")
        txtfields(12).Text = adoPrimaryRS("Roundoff_GL")
        txtfields(14).Text = adoPrimaryRS("Others_GL")
        txtfields(10).Text = adoPrimaryRS("Discount_GL")
    Beep
     Exit Sub

GoLastError:
   MsgBox Err.Description, vbInformation, head

Case 9
'     Save

If Opt = "add" Then
    If Trim(txtfields(3).Text) = "" Then
        MsgBox ("Please Enter Freight GL"), vbCritical, head
        SSTab1.Tab = 0
        txtfields(3).Text = ""
        txtfields(3).SetFocus
        Exit Sub
    End If
    
     If Trim(txtfields(1).Text) = "" Then
        MsgBox ("Please Enter Cgst GL"), vbCritical, head
        SSTab1.Tab = 0
        txtfields(1).Text = ""
        txtfields(1).SetFocus
        Exit Sub
    End If
     If Trim(txtfields(5).Text) = "" Then
        MsgBox ("Please Enter SGST GL"), vbCritical, head
        SSTab1.Tab = 0
        txtfields(5).Text = ""
        txtfields(5).SetFocus
        Exit Sub
    End If
     If Trim(txtfields(7).Text) = "" Then
        MsgBox ("Please Enter IGST GL"), vbCritical, head
        SSTab1.Tab = 0
        txtfields(7).Text = ""
        txtfields(7).SetFocus
        Exit Sub
    End If
    If Trim(txtfields(9).Text) = "" Or val(txtfields(9).Text) = 0 Then
        MsgBox ("Please Select TC"), vbCritical, head
        txtfields(9).Text = ""
        txtfields(9).SetFocus
        Exit Sub
    End If
        
    If Trim(txtfields(12).Text) = "" Then
        MsgBox ("Please Select Round off GL"), vbCritical, head
        txtfields(12).Text = ""
        txtfields(12).SetFocus
        Exit Sub
    End If
        
    If Trim(txtfields(14).Text) = "" Then
        MsgBox ("Please Select Others GL"), vbCritical, head
        txtfields(14).Text = ""
        txtfields(14).SetFocus
        Exit Sub
    End If
 
     
End If
 If Opt = "add" Then

'
       On Error Resume Next
       db.BeginTrans
       Set rsslot = New Recordset
       rsslot.Open "select Divcode,TC,AssValue_GL,CGST_GL,SGST_GL,IGST_GL,Roundoff_GL,Others_GL,Discount_GL from  RM_FA_PAYMENTGL WHERE 1=2  and divcode='" & Divcode & "'", db, adOpenStatic, adLockBatchOptimistic
       Dim f As Integer
            rsslot.AddNew
            rsslot("Divcode") = Divcode
            rsslot("AssValue_GL") = txtfields(3).Text
            rsslot("CGST_GL") = txtfields(1).Text
            rsslot("sGST_GL") = txtfields(5).Text
            rsslot("IGST_GL") = txtfields(7).Text
            
            rsslot("tc") = val(txtfields(9).Text)
            rsslot("Roundoff_GL") = txtfields(12).Text
            rsslot("Others_GL") = txtfields(14).Text
            rsslot("Discount_GL") = txtfields(10).Text
            

            
       rsslot.UpdateBatch adAffectAllChapters
       
       
         Set TrnLog = New Recordset
        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", db, adOpenStatic, adLockBatchOptimistic
        TrnLog.AddNew
        TrnLog("DIVCODE") = Divcode
        TrnLog("TC") = val(txtfields(9).Text)
        TrnLog("moduleNo") = ModuleNo
        TrnLog("Trans_Name") = "Payment GL(RMI)"
        TrnLog("Trans_Mod") = "Add"
        TrnLog("Trans_IPADD") = LocalIP
        TrnLog("Trans_Host") = LocalHost
        TrnLog("Trans_UserId") = usrid
        TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
        TrnLog("slcode") = txtfields(3).Text
        TrnLog("billno") = txtfields(7).Text

                            
         TrnLog.UpdateBatch adAffectAllChapters
       db.CommitTrans
       MsgBox "Record Saved Successfully", vbInformation, head
       Screen.MousePointer = 0
       Opt = ""
       BUTTON(4).Enabled = True
End If
    
If Opt = "mod" Then
        If Trim(txtfields(3).Text) = "" Then
            MsgBox ("Please Enter Freight GL"), vbCritical, head
            SSTab1.Tab = 0
            txtfields(3).Text = ""
            txtfields(3).SetFocus
            Exit Sub
        End If
        
         If Trim(txtfields(1).Text) = "" Then
            MsgBox ("Please Enter Cgst GL"), vbCritical, head
            SSTab1.Tab = 0
            txtfields(1).Text = ""
            txtfields(1).SetFocus
            Exit Sub
        End If
         If Trim(txtfields(5).Text) = "" Then
            MsgBox ("Please Enter SGST GL"), vbCritical, head
            SSTab1.Tab = 0
            txtfields(5).Text = ""
            txtfields(5).SetFocus
            Exit Sub
        End If
         If Trim(txtfields(7).Text) = "" Then
            MsgBox ("Please Enter IGST GL"), vbCritical, head
            SSTab1.Tab = 0
            txtfields(7).Text = ""
            txtfields(7).SetFocus
            Exit Sub
        End If
        If Trim(txtfields(9).Text) = "" Or val(txtfields(9).Text) = 0 Then
            MsgBox ("Please Select TC"), vbCritical, head
            txtfields(9).Text = ""
            txtfields(9).SetFocus
            Exit Sub
        End If
        
         If Trim(txtfields(12).Text) = "" Then
            MsgBox ("Please Select Round off GL"), vbCritical, head
            txtfields(12).Text = ""
            txtfields(12).SetFocus
            Exit Sub
        End If
        
        If Trim(txtfields(14).Text) = "" Then
            MsgBox ("Please Select Others GL"), vbCritical, head
            txtfields(14).Text = ""
            txtfields(14).SetFocus
            Exit Sub
        End If
        On Error Resume Next
        db.BeginTrans
        Set rsslot = New Recordset
       rsslot.Open "select Divcode,TC,AssValue_GL,CGST_GL,SGST_GL,IGST_GL,Roundoff_GL,Others_GL,Discount_GL from RM_FA_PAYMENTGL WHERE divcode='" & Divcode & "' and tc='" & val(txtfields(9).Text) & "' ", db, adOpenStatic, adLockBatchOptimistic
       If Not rsslot.EOF Then
           ' rsslot("Divcode") = Divcode
            rsslot("AssValue_GL") = txtfields(3).Text
            rsslot("CGST_GL") = txtfields(1).Text
            rsslot("sGST_GL") = txtfields(5).Text
            rsslot("IGST_GL") = txtfields(7).Text
           ' rsslot("tc") = val(txtFields(9).Text)
            rsslot("Roundoff_GL") = txtfields(12).Text
            rsslot("Others_GL") = txtfields(14).Text
            rsslot("Discount_GL") = txtfields(10).Text
            
        End If
       rsslot.UpdateBatch adAffectAllChapters
       
       
         Set TrnLog = New Recordset
        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", db, adOpenStatic, adLockBatchOptimistic
        TrnLog.AddNew
        TrnLog("DIVCODE") = Divcode
        TrnLog("TC") = val(txtfields(9).Text)
        TrnLog("moduleNo") = ModuleNo
        TrnLog("Trans_Name") = "Payment GL(RMI)"
        TrnLog("Trans_Mod") = "Mod"
        TrnLog("Trans_IPADD") = LocalIP
        TrnLog("Trans_Host") = LocalHost
        TrnLog("Trans_UserId") = usrid
        TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
        TrnLog("slcode") = txtfields(3).Text
        TrnLog("billno") = txtfields(7).Text

                            
         TrnLog.UpdateBatch adAffectAllChapters
       db.CommitTrans
       MsgBox "Record Modified Successfully", vbInformation, head
       Screen.MousePointer = 0
       Opt = ""
       BUTTON(4).Enabled = True
  End If

 If Opt = "del" Then
        db.BeginTrans
        Set rsa = New Recordset
        
'        DB.Execute ("delete from RM_Moisture where  divcode='" & Divcode & "' and Docno = " & adoPrimaryRS("Docno") & " and DocDt= '" & Format(adoPrimaryRS("DocDt"), "YYYY-MM-DD") & "'")
        db.CommitTrans
        MsgBox "Record Deleted Successfully", vbInformation, head
        Frame7.Enabled = True
        BUTTON(9).ToolTipText = "Save"
        Opt = ""
        BUTTON(4).Enabled = True
 End If
    
    'Return to query mode
    txtfields(0).Text = ""
    txtfields(1).Text = ""
     Call query_mode
    desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
    Screen.MousePointer = 0
    Opt = ""
    'calling newform_cancel procedure from module (also for save)
    Call NEWFORM1(BUTTON, GSNO)
    Exit Sub
GOPRIMERROR:
    If Err = -2147217900 Then
        MsgBox "Division Code Already Exists ", vbInformation, head
        GoTo gocancel
    End If
del:

If Err.Number = -2147217900 Then
    MsgBox "This Division code cannot be deleted as dependencies exist", vbInformation, head
    BUTTON(9).ToolTipText = "Save"
    GoTo gocancel
    Exit Sub
End If


errn:
    If Err.Number = "-2147217900" Then
        MsgBox ("Select the correct count code"), vbInformation, head
        SSTab1.Tab = 0
        txtfields(30).Text = ""
        txtfields(30).SetFocus
        'Call BUTTON_Click(10)
        Exit Sub
    End If
Case 10
gocancel:
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    On Error Resume Next
    Select Case Opt
        Case "mod"
            db.RollbackTrans
        Case "add"
            db.RollbackTrans
        Case "del"
            db.RollbackTrans
    End Select
    Opt = " "
    Call query_mode
    Screen.MousePointer = 0
    'calling cancl procedure from module
    If adoPrimaryRS.RecordCount <> 0 Then
        Call NEWFORM1(BUTTON, GSNO)
    End If
    Frame7.Visible = True
    Frame7.Enabled = True
    Frame1.Enabled = True
    BUTTON(0).SetFocus ''''''''''
Case 11
    'EXIT
    Unload Me
End Select
Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form Frmlotbale", vbInformation, head
    
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error Resume Next
    If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)
    End If
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
    If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)
    End If
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)
    End If
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)
    End If
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(4).Enabled = True Then
        Call BUTTON_Click(4)
    End If
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)
    End If
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)
    End If
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)
    End If
     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
     If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)
    End If
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)
    End If
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)
    End If
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
    If BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)
    End If
    ElseIf KeyCode = vbKeyY And Shift = 2 Then
    ''    Call BUTTON_Click(13)
    End If

    
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error


   Set db = New Connection
   db.CursorLocation = adUseClient
   db.Open "PROVIDER=MSDataShape;" & connectstring
   
    BUTTON(0).ToolTipText = "Add (Ctrl A)"
    BUTTON(1).ToolTipText = "Modify (Ctrl M)"
    BUTTON(2).ToolTipText = "Delete (Ctrl D)"
    BUTTON(4).ToolTipText = "Find (Ctrl F)"
    BUTTON(5).ToolTipText = "First Record (Ctrl Left)"
    BUTTON(6).ToolTipText = "Next Record (Ctrl Down)"
    BUTTON(7).ToolTipText = "Previous Record (Ctrl Up)"
    BUTTON(8).ToolTipText = "Last Record (Ctrl Right)"
    BUTTON(9).ToolTipText = "Save (Ctrl S)"
    BUTTON(10).ToolTipText = "Cancel (Ctrl BackSpace)"
    BUTTON(11).ToolTipText = "Exit (Ctrl Q)"
    
  Opt = ""
  DATLAB.Caption = pdate
  SSTab1.Visible = True
  Call query_mode
  'BUTTON(0).SetFocus

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Frmlotbale", vbInformation, head

End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
Dim CNTRS As Recordset
On Error Resume Next
statusbar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)

If adoPrimaryRS.RecordCount > 0 And adoPrimaryRS.AbsolutePosition > 0 Then

    If Opt = "" Then
        'This is for Query mode display
        'To bind the text boxes
        If adoPrimaryRS.RecordCount > 0 Then
           ' txtFields(0).Text = adoPrimaryRS("lotno")
           ' txtFields(1).Text = adoPrimaryRS("permitno")
           ' MaskEdBox1(0).Text = adoPrimaryRS("lotdt")
        End If
    End If
End If
End Sub

Public Sub query_mode()
On Error GoTo query_mode_Error

If Opt = " " Or Opt = "" Then
'Frame2.Visible = False
'Frame8.Visible = True
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select Divcode,TC,AssValue_GL,CGST_GL,SGST_GL,IGST_GL,Roundoff_GL,Others_GL,Discount_GL from  RM_FA_PAYMENTGL where divcode='" & Divcode & "'  ", db
    If adoPrimaryRS.RecordCount <> 0 Then
        SSTab1.Tab = 0
        txtfields(3).Text = adoPrimaryRS("AssValue_GL")
        txtfields(1).Text = adoPrimaryRS("CGST_GL")
        txtfields(5).Text = adoPrimaryRS("SGST_GL")
        txtfields(7).Text = IIf(IsNull(adoPrimaryRS("IGST_GL")), "", adoPrimaryRS("IGST_GL"))
        txtfields(9).Text = adoPrimaryRS("tc")
        txtfields(12).Text = adoPrimaryRS("Roundoff_GL")
        txtfields(14).Text = adoPrimaryRS("Others_GL")
        txtfields(10).Text = adoPrimaryRS("Discount_GL")
    
                    
     
        statusbar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
        Exit Sub
    Else
       MsgBox "No Records Found", vbInformation, head
       SSTab1.Tab = 0
       Call NEWFORM1(BUTTON, GSNO)
  End If
End If
Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form Frmlotbale", vbInformation, head
End Sub

Public Sub openconnection()
    Set db = New Connection
    db.CursorLocation = adUseClient
    db.Open "PROVIDER=MSDataShape;" & connectstring
End Sub

Public Sub ENABLCONTLS()
Dim I As Integer
        txtfields(3).Locked = False
        txtfields(1).Locked = False
        txtfields(5).Locked = False
        txtfields(12).Locked = False
        txtfields(14).Locked = False
        txtfields(7).Locked = False
        txtfields(10).Locked = False
'MaskEdBox1(0).Enabled = True
'MaskEdBox1(1).Enabled = True
'DTPicker2.Enabled = True
Frame7.Enabled = True
If Opt = "mod" Then
'    MaskEdBox1(0).Enabled = False '''''''
End If
End Sub

Public Sub disablcontls()
For Each tb In Me.txtfields
    tb.Locked = True
Next
'MaskEdBox1(0).Enabled = False
'MaskEdBox1(1).Enabled = False
Frame7.Enabled = False
End Sub

Private Sub MaskEdBox1_GotFocus(Index As Integer)
statusbar1.Panels(2).Text = "Please Enter Receipt Date"
End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)

End Sub

Private Sub txtFields_Change(Index As Integer)
On Error Resume Next
If Index = 3 Then
         Set Rs = New Recordset
        Rs.Open "select glhead from fa_glmas where glcode='" & txtfields(Index).Text & "' ", db, adOpenStatic
        If Rs.RecordCount > 0 Then
            txtfields(4).Text = Rs(0)
        Else
           
            txtfields(4).Text = ""
        End If
End If

If Index = 9 Then
         Set Rs = New Recordset
        Rs.Open "select tchead from fa_tcmas where tc='" & val(txtfields(Index).Text) & "' ", db, adOpenStatic
        If Rs.RecordCount > 0 Then
            txtfields(8).Text = Rs(0)
        Else
            txtfields(8).Text = ""
        End If
End If

If Index = 10 Then
         Set Rs = New Recordset
        Rs.Open "select glhead from fa_glmas where glcode='" & val(txtfields(Index).Text) & "' ", db, adOpenStatic
        If Rs.RecordCount > 0 Then
            txtfields(11).Text = Rs(0)
        Else
            txtfields(11).Text = ""
        End If
End If
If Index = 12 Then
         Set Rs = New Recordset
        Rs.Open "select glhead from fa_glmas where glcode='" & val(txtfields(Index).Text) & "' ", db, adOpenStatic
        If Rs.RecordCount > 0 Then
            txtfields(13).Text = Rs(0)
        Else
            txtfields(13).Text = ""
        End If
End If


If Index = 14 Then
         Set Rs = New Recordset
        Rs.Open "select glhead from fa_glmas where glcode='" & val(txtfields(Index).Text) & "' ", db, adOpenStatic
        If Rs.RecordCount > 0 Then
            txtfields(15).Text = Rs(0)
        Else
            txtfields(15).Text = ""
        End If
End If


If Index = 1 Then
         Set Rs = New Recordset
        Rs.Open "select glhead from fa_glmas where glcode='" & txtfields(Index).Text & "' ", db, adOpenStatic
        If Rs.RecordCount > 0 Then
            txtfields(0).Text = Rs(0)
        Else
           
            txtfields(0).Text = ""
        End If
End If

If Index = 5 Then
         Set Rs = New Recordset
        Rs.Open "select glhead from fa_glmas where glcode='" & txtfields(Index).Text & "' ", db, adOpenStatic
        If Rs.RecordCount > 0 Then
            txtfields(2).Text = Rs(0)
        Else
           
            txtfields(2).Text = ""
        End If
End If

If Index = 7 Then
         Set Rs = New Recordset
        Rs.Open "select glhead from fa_glmas where glcode='" & txtfields(Index).Text & "' ", db, adOpenStatic
        If Rs.RecordCount > 0 Then
            txtfields(6).Text = Rs(0)
        Else
           
            txtfields(6).Text = ""
        End If
End If

End Sub

Private Sub txtFields_GotFocus(Index As Integer)
If Opt = "add" Or Opt = "mod" Then
    If Index = 2 Then
        statusbar1.Panels(2).Text = "Select Invoice from the list"
    End If
    If Index = 1 Then
        statusbar1.Panels(2).Text = "Enter a E-Way Bill No."
    End If
End If
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
If Opt = "add" Then
'    If Index = 1 Then
'        If txtfields(1).Text = "" Then
'            MsgBox "Please Enter E-Way Bill Number", vbInformation, head
'            txtfields(1).SetFocus
'            Exit Sub
'        Else
'            MaskEdBox1(1).SetFocus
'            Exit Sub
'        End If
'
'    End If
End If
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 3

        Set Rs = New Recordset
        Rs.Open "select glhead""GL Head"" from fa_glmas WHERE glcode='" & txtfields(3).Text & "'", db, adOpenDynamic, adLockBatchOptimistic
        If Rs.EOF = False Then
            txtfields(4).Text = Rs(0)
        Else
            LookUp.Clear = True
             LookUp.query = "select glcode""GL Code"",glhead""GL Head"" from fa_glmas"
            LookUp.DefCol = "GL Head"
            LookUp.ALIGN = "2000,5000"
            LookUp.Caption = "GL Head Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(3).Text = LookUp.Fields(0)
                txtfields(4).Text = LookUp.Fields(1)
                LookUp.Clear = True
               ' txtfields(1).SetFocus
            Else
                txtfields(3).SetFocus
              '  Cancel = True
      
            End If
            
        End If
 Case 10, 12, 14

        Set Rs = New Recordset
        Rs.Open "select glhead""GL Head"" from fa_glmas WHERE glcode='" & txtfields(Index).Text & "'", db, adOpenDynamic, adLockBatchOptimistic
        If Rs.EOF = False Then
            txtfields(Index + 1).Text = Rs(0)
        Else
            LookUp.Clear = True
             LookUp.query = "select glcode""GL Code"",glhead""GL Head"" from fa_glmas"
            LookUp.DefCol = "GL Head"
            LookUp.ALIGN = "2000,5000"
            LookUp.Caption = "GL Head Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(Index).Text = LookUp.Fields(0)
                txtfields(Index + 1).Text = LookUp.Fields(1)
                LookUp.Clear = True
                'txtfields(1).SetFocus
            Else
                txtfields(Index).SetFocus
               ' Cancel = True
      
            End If
            
        End If
        
        
 Case 1

        Set Rs = New Recordset
        Rs.Open "select glhead""GL Head"" from fa_glmas WHERE glcode='" & txtfields(1).Text & "'", db, adOpenDynamic, adLockBatchOptimistic
        If Rs.EOF = False Then
            txtfields(0).Text = Rs(0)
        Else
            LookUp.Clear = True
             LookUp.query = "select glcode""GL Code"",glhead""GL Head"" from fa_glmas"
            LookUp.DefCol = "GL Head"
            LookUp.ALIGN = "2000,5000"
            LookUp.Caption = "GL Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(1).Text = LookUp.Fields(0)
                txtfields(0).Text = LookUp.Fields(1)
                LookUp.Clear = True
               ' txtfields(5).SetFocus
            Else
                txtfields(1).SetFocus
               ' Cancel = True
      
            End If
            
        End If
 Case 5

        Set Rs = New Recordset
        Rs.Open "select glhead""GL Head"" from fa_glmas WHERE glcode='" & txtfields(5).Text & "'", db, adOpenDynamic, adLockBatchOptimistic
        If Rs.EOF = False Then
            txtfields(2).Text = Rs(0)
        Else
            LookUp.Clear = True
             LookUp.query = "select glcode""GL Code"",glhead""GL Head"" from fa_glmas"
            LookUp.DefCol = "GL Head"
            LookUp.ALIGN = "2000,5000"
            LookUp.Caption = "GL Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(5).Text = LookUp.Fields(0)
                txtfields(2).Text = LookUp.Fields(1)
                LookUp.Clear = True
               ' txtfields(7).SetFocus
            Else
                txtfields(5).SetFocus
               'Cancel = True
      
            End If
            
        End If
        
 Case 7

        Set Rs = New Recordset
        Rs.Open "SELECT glhead FROM  fa_glmas WHERE glcode='" & txtfields(7).Text & "'", db, adOpenDynamic, adLockBatchOptimistic
        If Rs.EOF = False Then
            txtfields(6).Text = Rs(0)
        Else
            LookUp.Clear = True
             LookUp.query = "select glcode""GL Code"",glhead""GL Head"" from fa_glmas"
            LookUp.DefCol = "GL Head"
            LookUp.ALIGN = "2000,5000"
            LookUp.Caption = "GL Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(7).Text = LookUp.Fields(0)
                txtfields(6).Text = LookUp.Fields(1)
                LookUp.Clear = True
                'txtfields(5).SetFocus
            Else
                txtfields(7).SetFocus
                'Cancel = True
      
            End If
            
        End If
 Case 9

        Set Rs = New Recordset
        Rs.Open "select tchead""TC Head"" from fa_tcmas WHERE tc='" & val(txtfields(9).Text) & "'", db, adOpenDynamic, adLockBatchOptimistic
        If Rs.EOF = False Then
            txtfields(8).Text = Rs(0)
        Else
            LookUp.Clear = True
             LookUp.query = "select TC""TC"",tchead""TC Head"" from fa_tcmas"
            LookUp.DefCol = "TC Head"
            LookUp.ALIGN = "2000,5000"
            LookUp.Caption = "TC Head Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtfields(9).Text = LookUp.Fields(0)
                txtfields(8).Text = LookUp.Fields(1)
                LookUp.Clear = True
              
            Else
                txtfields(9).SetFocus
                Cancel = True
      
            End If
            
        End If
 End Select
 End If
          
End Sub


