<?php  
// ส่วนกำหนดการเชื่อมต่อฐานข้อมูล  
$hostname_connection = "localhost";  
$database_connection = "Admin";  
$username_connection = "root";  
$password_connection = "";  
$connection = mysql_pconnect($hostname_connection, $username_connection, $password_connection)
															or trigger_error(mysql_error(),E_USER_ERROR);  
 
mysql_query( "SET NAMES UTF8" ) ;  
 
// ดึงข้อมูลจากฐานข้อมูล ไม่มีโค้ดการแบ่งหน้านะจ๊ะ  ไปเพิ่มเติมเอง
 
mysql_select_db($database_connection, $connection);  
 
$query_rs_image = "SELECT * FROM tbl_image3 ORDER BY image_id ASC";  
$rs_image = mysql_query($query_rs_image, $connection) or die(mysql_error());  
$row_rs_image = mysql_fetch_assoc($rs_image);  
$totalRows_rs_image = mysql_num_rows($rs_image);  
?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>upload image with php II</title>
</head>
<body>
<table>
  <?php if ($totalRows_rs_image > 0) { 
  // แสดงผลถ้ามีข้อมูลในฐานข้อมูล 
  ?>
    <tr>
      <?php do { ?>
        <?php 
        // รูปภาพให้เอาค่าจากฐานข้อมูลมาต่อ ให้ชี้ไปยังภาพที่อัปโหลดมา
        ?>
        <td><?php echo '<img src="upload_images4/{$row_rs_image["image_name"]}" />';?></td>
        <?php  
        // กำหนดว่า จะให้ตาราง แสดงกี่คอลัมน์ ง่ายๆ ด้วยคำสั่งแค่ 2 บรรทัด  
        $iLoop++ ;  
 
        if ( $iLoop % 3 == 0 ) {echo "</tr><tr>" ;}  
 
		} while ($row_rs_image = mysql_fetch_assoc($rs_image));
       ?>
    </tr>
    <?php } ?>
</table>
</body>
</html>