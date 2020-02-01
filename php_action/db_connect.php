<?php 	

$localhost = "localhost";
$username = "root";
$password = "";
$dbname = "inventory_ui";


// db connection

$connect = new mysqli($localhost, $username, $password, $dbname);
mysqli_query($connect,'SET CHARACTER SET utf8');
mysqli_query($connect,"SET SESSION collation_connection ='utf8_general_ci'");

// check connection
if($connect->connect_error) {
  die("Connection Failed : " . $connect->connect_error);
} else {
  // echo "Successfully connected";
}

?>