option explicit 
dim objIe 
set objIe=createobject("InternetExplorer.Application") 
objIe.navigate "http://www.kusila.com/?hou2" 
objIe.visible=True
