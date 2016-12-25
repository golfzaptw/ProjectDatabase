<?
$hostname = "localhost"; 
$user = "root"; 
$password = ""; 
$dbname = "admin"; 
$tblname = " tbl_image4";
mysql_connect($hostname, $user, $password) or die("ติดต่อฐานข้อมูลไม่ได้");
mysql_select_db($dbname) or die("เลือกฐานข้อมูลไม่ได้"); 
$sql = "select * from  tbl_image4";
$dbquery = mysql_db_query($dbname, $sql);
$result = mysql_fetch_array($dbquery);
$images = $result[images];
echo $images;
?>