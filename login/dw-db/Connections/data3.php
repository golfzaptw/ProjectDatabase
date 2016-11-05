<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_data3 = "localhost";
$database_data3 = "admin";
$username_data3 = "root";
$password_data3 = "";
$data3 = mysql_pconnect($hostname_data3, $username_data3, $password_data3) or trigger_error(mysql_error(),E_USER_ERROR); 
?>