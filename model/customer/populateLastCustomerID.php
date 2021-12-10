<?php
	require_once('../../controller/config/constants.php');
	require_once('../../controller/config/db.php');
	
	$sql = "SELECT MAX(customerID) FROM customer";
	$stmt = $conn->prepare($sql);
	$stmt->execute();
	$row = $stmt->fetch(PDO::FETCH_ASSOC);
	
	echo $row['MAX(customerID)'];
	$stmt->closeCursor();
?>