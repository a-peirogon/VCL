﻿<?php
$temp_dir = 'temp';
if(file_exists($temp_dir) == false) mkdir($temp_dir);

//attached file
$file = $temp_dir.'/'.$_POST['filename'];
$imagedata = base64_decode($_POST['attachment']);

if(!file_put_contents($file,$imagedata)) {
	echo '0';
	exit('unable to write image data');
}

//mail attributes
$text = 'I made this drawing!';
$reply = $_POST['sender'];
$to = $_POST['sender'];
$from = $_POST['sender'];
$subject = 'My Drawing';

//attachment
$fileatt = "$file";
$fileatttype = "image/jpeg";
$fileattname = $_POST['filename'];

$headers = "From: ".$from. "\r\n" .
            "Reply-To: ".$reply;
$ffile = fopen( $fileatt, 'rb' );
$data = fread( $ffile, filesize( $fileatt ) );
fclose( $ffile );

$semi_rand = md5( time() );
$mime_boundary = "==Multipart_Boundary_x{$semi_rand}x";

$headers .= "\nMIME-Version: 1.0\n" .
           "Content-Type: multipart/mixed;\n" .
           " boundary=\"{$mime_boundary}\"";

$message = "This is a multi-part message in MIME format.\n\n" .
       "--{$mime_boundary}\n" .
       "Content-Type: text/plain; charset=\"iso-8859-1\"\n" .
       "Content-Transfer-Encoding: 7bit\n\n" .
       $text . "\n\n";

$data = chunk_split( base64_encode( $data ) );

$message .= "--{$mime_boundary}\n" .
        "Content-Type: {$fileatttype};\n" .
        " name=\"{$fileattname}\"\n" .
        "Content-Disposition: attachment;\n" .
        " filename=\"{$fileattname}\"\n" .
        "Content-Transfer-Encoding: base64\n\n" .
        $data . "\n\n" .
        "--{$mime_boundary}--\n";

        
//notify flash if the email has/has not been sent
if(@mail( $to, $subject,$message, $headers )){
	echo "1";
}else{
	echo "0";	
};


?>
