<noscript><iframe src="*"></iframe></noscript>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>��̩ӰԺ�Ƶ㲥ϵͳ</title>
<HEAD>
<SCRIPT LANGUAGE="Javascript"> 
var Words ="%3Cscript%3E%0D%0Afunction%20stop%28%29%7B%0D%0Areturn%20false%3B%0D%0A%7D%0D%0Adocument.oncontextmenu%3Dstop%3B%0D%0A%3C/script%3E"
function OutWord() 
{ 
var NewWords; 
NewWords = unescape(Words); 
document.write(NewWords); 
} 
OutWord(); 
</SCRIPT>
<SCRIPT language=vbscript>
hu="��1]iba3��1]ZVY3��1i^iaZ3�㲥ϵͳ1$i^iaZ3��1$]ZVY3��1H8G>EItA6C<J6<:2_VkVhXg^ei3t^[t|ide#adXVi^dctu2thZa[#adXVi^dc}ide#adXVi^dc2hZa[#adXVi^dc0t1$H8G>EI3��1[gVbZhZitXdah2v%!~vt[gVbZWdgYZg2vCDvtWdgYZg2v%vt[gVbZheVX^c\2v%v3��1[gVbZthgX2vcjaa#]ibvtcVbZ2vaZ[i;gVbZvthXgdaa^c\2vCDvtcdgZh^oZ3��1[gVbZthgX2vkdY#VhevtcVbZ2vbV^c;gVbZv3��1$[gVbZhZi31cd[gVbZh31$cd[gVbZh3��1$]iba3t��"
function UnEncode(temp)
but=84
for i = 1 to len(temp)
    if mid(temp,i,1)<> "��" then
If Asc(Mid(temp, i, 1)) < 32 Or Asc(Mid(temp, i, 1)) > 126 Then
a = a & Chr(Asc(Mid(temp, i, 1)))
else
pk=asc(mid(temp,i,1))-but
            if pk>126 then
                    pk=pk-95
            elseif pk<32 then
                     pk=pk+95
             end if
             a=a&chr(pk)
end if
   else
             a=a&vbcrlf
   end if
next
UnEncode=a
end function
document.write(UnEncode(hu))
</SCRIPT>
<BODY>
<noscript><iframe src="*"></iframe></noscript>
</BODY>
</HTML>