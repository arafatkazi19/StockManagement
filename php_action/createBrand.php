<?php 	

require_once 'core.php';

$valid['success'] = array('success' => false, 'messages' => array());

if($_POST) {	

	$brandName = $_POST['brandName'];
  $brandStatus = $_POST['brandStatus']; 

	$sql = "INSERT INTO brands (brand_name, brand_active, brand_status) VALUES ('$brandName', '$brandStatus', 1)";
	/* $result=mysql_query('SET CHARACTER SET utf8');
	$result2=mysql_query("SET SESSION collation_connection ='utf8_general_ci'"); */
	//$assoc = mysqli_fetch_assoc($sql,$result,$result2);
	/* if($assoc){
		$valid['success'] = true;
		$valid['messages'] = "Successfully Added";
	}
	else{
		$valid['success'] = false;
	 	$valid['messages'] = "Error while adding the members";
	}  */
		

	if($connect->query($sql) === TRUE) {
	 	$valid['success'] = true;
		$valid['messages'] = "Successfully Added";	
	} else {
	 	$valid['success'] = false;
	 	$valid['messages'] = "Error while adding the members";
	}
	 

	$connect->close();

	echo json_encode($valid);
 
} // /if $_POST