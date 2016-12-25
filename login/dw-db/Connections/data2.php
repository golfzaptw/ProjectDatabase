<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_data2 = "localhost";
$database_data2 = "test";
$username_data2 = "root";
$password_data2 = "";
$data2 = mysql_pconnect($hostname_data2, $username_data2, $password_data2) or trigger_error(mysql_error(),E_USER_ERROR); 
?>