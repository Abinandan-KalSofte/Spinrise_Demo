VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Begin VB.Form yearendprocessing 
   Caption         =   "Year End Processing "
   ClientHeight    =   4980
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7275
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   4980
   ScaleWidth      =   7275
   WindowState     =   2  'Maximized
   Begin MSComctlLib.ProgressBar pbStock 
      Height          =   285
      Left            =   4635
      TabIndex        =   5
      Top             =   5535
      Visible         =   0   'False
      Width           =   3255
      _ExtentX        =   5741
      _ExtentY        =   503
      _Version        =   393216
      BorderStyle     =   1
      Appearance      =   0
      Scrolling       =   1
   End
   Begin VB.Frame Frame1 
      Height          =   1155
      Left            =   3000
      TabIndex        =   1
      Top             =   4275
      Width           =   6375
      Begin VB.CommandButton COMMAND2 
         Caption         =   "&Cancel"
         DownPicture     =   "yearendprocessingrmi.frx":0000
         Height          =   615
         Left            =   3705
         Picture         =   "yearendprocessingrmi.frx":03E2
         Style           =   1  'Graphical
         TabIndex        =   4
         Top             =   330
         Width           =   1185
      End
      Begin VB.CommandButton cmdTransfer 
         Caption         =   "&Transfer"
         Default         =   -1  'True
         DownPicture     =   "yearendprocessingrmi.frx":07B5
         Height          =   615
         Left            =   1635
         Picture         =   "yearendprocessingrmi.frx":0B9B
         Style           =   1  'Graphical
         TabIndex        =   3
         Top             =   345
         Width           =   1185
      End
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0FF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   1680
      Left            =   3000
      MultiLine       =   -1  'True
      TabIndex        =   0
      Text            =   "yearendprocessingrmi.frx":0F61
      Top             =   1920
      Width           =   6390
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Year End Housekeeping - RMI Module"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   435
      Left            =   2850
      TabIndex        =   2
      Top             =   1050
      Width           =   6720
   End
End
Attribute VB_Name = "yearendprocessing"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As Connection
Dim Rs As Recordset
Dim LConnectionString As String

Private Sub Command1_Click()
            
End Sub

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
Rs.Open "select * from rm_lot where lotyear=" & Year(yfdate) + 1 & " and Divcode ='" & Divcode & "' and opflg='Y'", DB, adOpenStatic
If Rs.RecordCount > 0 Then
    Set rsa = New Recordset
    rsa.Open "select a.lotno from rm_lot a inner join TmpLotDetails b on a.lotno=b.lotno and a.lotdt=b.LotDt and a.divcode=b.divcode and a.lottype=b.lottype and a.varcode=b.varcode where lotyear=" & Year(yfdate) + 1 & " and a.Divcode ='" & Divcode & "' and opflg='Y'", DB, adOpenStatic
    If rsa.RecordCount > 0 Then
        a = MsgBox("Year End Processing Completed ,Do You want to Delete it and Continue the Process", vbYesNo, "Kalsofte")
        If a = 6 Then
            DB.Execute "Delete a from rm_lot a inner join TmpLotDetails b on a.lotno=b.lotno and a.lotdt=b.LotDt and a.divcode=b.divcode and a.lottype=b.lottype and a.varcode=b.varcode where a.lotyear='" & Year(yfdate) + 1 & "' and a.Divcode ='" & Divcode & "' and a.opflg='Y'"
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
            " )z inner join rm_lot a on a.lotno=z.lotno and a.lotdt=z.lotdt and a.catcd=z.catcd and a.divcode=z.divcode  " & _
            " inner join TmpLotDetails b on a.lotno=b.lotno and a.lotdt=b.LotDt and a.divcode=b.divcode and a.lottype=b.lottype and a.varcode=b.varcode " & _
            " where a.divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "'"
intervalMinutes = -1
    pbStock.value = 20

    DB.Execute " update rm_lot set isswt=ISNULL(ISSWET,0) from " & _
            " (select a.catcd,a.lotno,a.lotdt,a.divcode,Bales,a.Netwt,SUM(b.isskgs) AS ISSWET,count(b.baleno) as issbales,bales-count(b.baleno) as Closingbales, " & _
            " a.Netwt-sum(b.isskgs) as Closingwt " & _
            " from rm_lot a ,rm_issb b,rm_bale c where a.lotdt<='" & Format(yldate, "yyyy-mm-dd") & "' and (a.rejflg='N' or a.rejdt>'" & Format(yldate, "YYYY-MM-DD") & "') and a.divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' " & _
            " and a.lotno=c.lotno and a.lotdt=c.lotdt and a.divcode=c.divcode and a.catcd=c.catcd and b.baleno=c.baleno " & _
            " and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and b.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  " & _
            " group by a.catcd,a.lotno,a.lotdt,a.divcode,bales,a.netwt " & _
            " )z inner join rm_lot a  on a.lotno=z.lotno and a.lotdt=z.lotdt and a.catcd=z.catcd and a.divcode=z.divcode " & _
            " inner join TmpLotDetails b on a.lotno=b.lotno and a.lotdt=b.LotDt and a.divcode=b.divcode and a.lottype=b.lottype and a.varcode=b.varcode " & _
            " where a.divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "'"
            
            
     intervalMinutes = -1
            
            
    pbStock.value = 30
    
    
        DB.Execute " update rm_lot set issbal=isnull(issbal,0)-ISNULL(issbales,0) from " & _
            " (select a.catcd,a.lotno,a.lotdt,a.divcode,bales,a.Netwt,SUM(b.isskgs) AS ISSWET,count(b.baleno) as issbales,bales-count(b.baleno) as Closingbales, " & _
            " a.Netwt-sum(b.isskgs) as Closingwt " & _
            " from rm_lot a ,RM_ISSrtnB b,rm_bale c where b.issued='Y' and a.lotdt<='" & Format(yldate, "yyyy-mm-dd") & "' and (a.rejflg='N' or a.rejdt>'" & Format(yldate, "YYYY-MM-DD") & "') and a.divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' " & _
            " and a.lotno=c.lotno and a.lotdt=c.lotdt and a.divcode=c.divcode and a.catcd=c.catcd and b.baleno=c.baleno " & _
            " and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and b.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  " & _
            " group by a.catcd,a.lotno,a.lotdt,a.divcode,bales,a.netwt " & _
            " )z inner join rm_lot a on a.lotno=z.lotno and a.lotdt=z.lotdt and a.catcd=z.catcd and a.divcode=z.divcode " & _
            " inner join TmpLotDetails b on a.lotno=b.lotno and a.lotdt=b.LotDt and a.divcode=b.divcode and a.lottype=b.lottype and a.varcode=b.varcode " & _
            " where a.divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "'"
intervalMinutes = -1
    pbStock.value = 40
    DB.Execute " update rm_lot set isswt=isnull(isswt,0)-ISNULL(ISSWET,0) from " & _
            " (select a.catcd,a.lotno,a.lotdt,a.divcode,Bales,a.Netwt,SUM(b.isskgs) AS ISSWET,count(b.baleno) as issbales,bales-count(b.baleno) as Closingbales, " & _
            " a.Netwt-sum(b.isskgs) as Closingwt " & _
            " from rm_lot a ,RM_ISSrtnB b,rm_bale c where a.lotdt<='" & Format(yldate, "yyyy-mm-dd") & "' and (a.rejflg='N' or a.rejdt>'" & Format(yldate, "YYYY-MM-DD") & "') and a.divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' " & _
            " and a.lotno=c.lotno and a.lotdt=c.lotdt and a.divcode=c.divcode and a.catcd=c.catcd and b.baleno=c.baleno " & _
            " and a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and b.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  " & _
            " group by a.catcd,a.lotno,a.lotdt,a.divcode,bales,a.netwt " & _
            " )z inner join rm_lot a on a.lotno=z.lotno and a.lotdt=z.lotdt and a.catcd=z.catcd and a.divcode=z.divcode " & _
            " inner join TmpLotDetails b on a.lotno=b.lotno and a.lotdt=b.LotDt and a.divcode=b.divcode and a.lottype=b.lottype and a.varcode=b.varcode " & _
            " where a.divcode='" & Divcode & "'  and lotyear='" & Year(yfdate) & "'"
                     
            
    intervalMinutes = -1
    pbStock.value = 50
    DB.Execute " update rm_bale set lot_year=" & Year(yfdate) & " from rm_lot a inner join rm_bale b on a.lotno = b.lotno And a.lotdt = b.lotdt And a.catcd = b.catcd  " & _
            "  inner join TmpLotDetails bb on a.lotno=bb.lotno and a.lotdt=bb.LotDt and a.divcode=bb.divcode and a.lottype=bb.lottype and a.varcode=bb.varcode " & _
            " where  a.divcode=b.divcode and lotyear=" & Year(yfdate) & " AND A.DIVCODE ='" & Divcode & "'"
   
   pbStock.value = 60
    Set rs1 = New Recordset
    rs1.Open "select * from rm_lot a inner join TmpLotDetails b on a.lotno=b.lotno and a.lotdt=b.LotDt and a.divcode=b.divcode and a.lottype=b.lottype and a.varcode=b.varcode where lotyear='" & Year(yfdate) & "' and a.divcode='" & Divcode & "' and a.bales-isnull(a.issbal,0)>0 and a.netwt-isnull(a.isswt,0)>0 ", DB, adOpenStatic
    If rs1.RecordCount > 0 Then
        Set rs2 = New Recordset
        rs2.Open "select * from sysobjects where name='Rm_YearProcess'", DB, adOpenStatic
        If rs2.RecordCount > 0 Then
            DB.Execute "drop table Rm_YearProcess"
        End If
        pbStock.value = 70
        DB.Execute "UPDATE a SET a.ISSBAL=0 from RM_LOT a inner join TmpLotDetails b on a.lotno=b.lotno and a.lotdt=b.LotDt and a.divcode=b.divcode and a.lottype=b.lottype and a.varcode=b.varcode WHERE ISSBAL IS NULL AND a.LOTYEAR='" & Year(yfdate) & "'"
        pbStock.value = 80
        DB.Execute "UPDATE a SET ISSWT=0 from RM_LOT a inner join TmpLotDetails b on a.lotno=b.lotno and a.lotdt=b.LotDt and a.divcode=b.divcode and a.lottype=b.lottype and a.varcode=b.varcode  WHERE a.ISSWT IS NULL AND a.LOTYEAR='" & Year(yfdate) & "'"
        pbStock.value = 90
        DB.Execute " select a.* into Rm_YearProcess from rm_lot a  inner join TmpLotDetails b on a.lotno=b.lotno and a.lotdt=b.LotDt and a.divcode=b.divcode and a.lottype=b.lottype and a.varcode=b.varcode where (a.rejflg='N' or a.rejdt>'" & Format(yldate, "YYYY-MM-DD") & "') and a.lotyear='" & Year(yfdate) & "' and a.divcode='" & Divcode & "' and a.bales-isnull(a.issbal,0)>0 "
        pbStock.value = 100
        DB.Execute "update Rm_YearProcess set bales=bales-isnull(issbal,0),netwt=netwt-isnull(isswt,0),FAVAOURABLEWGT=FAVAOURABLEWGT-isnull(isswt,0),opflg='Y',lotyear='" & Year(yfdate) + 1 & "' where lotyear='" & Year(yfdate) & "'"
        
'        DB.Execute "update Rm_YearProcess set FAVAOURABLEWGT=netwt-isnull(isswt,0),opflg='Y',lotyear='" & Year(yfdate) + 1 & "' where lotyear='" & Year(yfdate) & "' and WeightFlg='M'"
'
'        DB.Execute "update Rm_YearProcess set FAVAOURABLEWGT=pnetwt-isnull(isswt,0),opflg='Y',lotyear='" & Year(yfdate) + 1 & "' where lotyear='" & Year(yfdate) & "' and WeightFlg='S'"

        DB.Execute "update Rm_YearProcess set issbal=0,isswt=0 where lotyear='" & Year(yfdate) + 1 & "'"
        pbStock.value = 100
        DB.Execute "insert into rm_lot select * from Rm_YearProcess where lotyear='" & Year(yfdate) + 1 & "'"
        
        DB.Execute "update a  set Lot_year='" & Year(yfdate) + 1 & "'  from rm_bale a  inner join TmpLotDetails b on a.lotno=b.lotno and a.lotdt=b.LotDt and a.divcode=b.divcode and a.lottype=b.lottype and a.varcode=b.varcode where  a.lot_year='" & Year(yfdate) & "' AND ISQTY IS NULL and a.divcode='" & Divcode & "' "
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

Private Sub COMMAND_Click()

End Sub

Private Sub Form_Load()
intervalMinutes = -1
    Set DB = New Connection
    DB.CommandTimeout = 0
    DB.ConnectionTimeout = 0
    DB.Open connectstring
    intervalMinutes = -1
End Sub

