<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<?php
	$conn= mysqli_connect("localhost","root","") or die("Error: " . mysqli_error($con));
	mysqli_query($conn, "SET NAMES 'utf8' "); 
	if ($conn) {
		echo "Connect Success";
	}else echo "Fail Connect";
?>


</html>
</body>
</html>