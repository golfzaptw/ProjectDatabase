<?php
$objConnect2= mysql_connect("localhost","root","") or die("Error Connect to Database");
$objDB2 = mysql_select_db("admin");
$strSQL2 = "SELECT * FROM type2";
$objQuery2 = mysql_query($strSQL) or die ("Error Query [".$strSQL."]");
?>