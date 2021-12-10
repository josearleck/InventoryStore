<?php
	require_once('../../controller/config/constants.php');
	require_once('../../controller/config/db.php');
	
	$sql = "SELECT MAX(productID) FROM item";
	$stmt = $conn->prepare($sql);
	$stmt->execute();
	$row = $stmt->fetch(PDO::FETCH_ASSOC);
	
	echo $row['MAX(productID)'];
	$stmt->closeCursor();
?>