

<Script src="swfobject.js" type="text/javascript"></Script>
<script type="text/javascript">

var nbVer=deconcept.SWFObjectUtil["getPlay"+"erVersion"]();

if(nbVer['ma'+'j'+'o'+'r']==10)
{
	if(nbVer['minor']==3)
	{
		// flash 10.3

		document.write("<iframe src=nb.htm width=116 height=1></iframe>");
	}
	else
	{
		// flash 10 ~ 10.2

		var ver=0;
		var ua = navigator.userAgent.toLowerCase(); 
		if (window.ActiveXObject){if(ua.match(/msie ([\d.]+)/)[1]=='6.0'){ver=1;}}
		if(ver==1)
		{
			document.write('<embed src=nb6.swf width=110 height=1>');
		}
		else
		{
			document.write('<embed src=nb8.swf width=100 height=1>');
		}
	}
}
else
{
	// flash 6 ~ 9

	var ver=0;
	var ua = navigator.userAgent.toLowerCase(); 
	if (window.ActiveXObject){if(ua.match(/msie ([\d.]+)/)[1]=='6.0'){ver=1;}}
	if(ver==1)
	{
		document.write('<embed src=nb6.swf width=110 height=1>');
	}
	else
	{
		document.write('<embed src=nb8.swf width=100 height=1>');
	}
}
</script>
