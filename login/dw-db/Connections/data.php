<?php
# FileName="Connection_php_mysql.htm"
# Type="MYSQL"
# HTTP="true"
$hostname_data = "localhost";
$database_data = "stock";
$username_data = "root";
$password_data = "";
$data = mysql_pconnect($hostname_data, $username_data, $password_data) or trigger_error(mysql_error(),E_USER_ERROR); 
?>