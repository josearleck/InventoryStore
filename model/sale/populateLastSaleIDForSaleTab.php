<?php
	require_once('../../controller/config/constants.php');
	require_once('../../controller/config/db.php');
	
	$sql = "SELECT MAX(saleID) FROM sale";
	$stmt = $conn->prepare($sql);
	$stmt->execute();
	$row = $stmt->fetch(PDO::FETCH_ASSOC);
	
	echo $row['MAX(saleID)'];
?>