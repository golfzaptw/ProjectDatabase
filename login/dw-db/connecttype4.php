<?php
$objConnect = mysql_connect("localhost","root","") or die("Error Connect to Database");
$objDB = mysql_select_db("admin");
$strSQL = "SELECT * FROM type4";
$objQuery = mysql_query($strSQL) or die ("Error Query [".$strSQL."]");
?>