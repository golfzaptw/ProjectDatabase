<?php
	$conn= mysqli_connect("localhost","root","","admin") or die("Error: " . mysqli_error($con));
	mysqli_query($conn, "SET NAMES 'utf8' "); 

?>