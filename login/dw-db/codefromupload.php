<?php
// Include คลาส class.upload.php เข้ามา เพื่อจัดการรูปภาพ
require_once('class.upload.php-master/src/class.upload.php') ;

 
// ส่วนกำหนดการเชื่อมต่อฐานข้อมูล
$hostname_connection = "localhost";
$database_connection = "Admin";
$username_connection = "root";
$password_connection = "";
$connection = mysql_pconnect($hostname_connection, $username_connection, $password_connection)
		or trigger_error(mysql_error(),E_USER_ERROR); 
mysql_query( "SET NAMES UTF8" ) ;
 
 
//  ถ้าหากหน้านี้ถูกเรียก เพราะการ submit form  
//  ประโยคนี้จะเป็นจริงกรณีเดียวก็ด้วยการ submit form 
if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "form2")) {
 
    // เริ่มต้นใช้งาน class.upload.php ด้วยการสร้าง instant จากคลาส
    $upload_image = new upload($_FILES['image_name']) ; // $_FILES['image_name'] ชื่อของช่องที่ให้เลือกไฟล์เพื่ออัปโหลด
 
    //  ถ้าหากมีภาพถูกอัปโหลดมาจริง
    if ( $upload_image->uploaded ) {
 
        // ย่อขนาดภาพให้เล็กลงหน่อย  โดยยึดขนาดภาพตามความกว้าง  ความสูงให้คำณวนอัตโนมัติ
        // ถ้าหากไม่ต้องการย่อขนาดภาพ ก็ลบ 3 บรรทัดด้านล่างทิ้งไปได้เลย
        $upload_image->image_resize         = true ; // อนุญาติให้ย่อภาพได้
        $upload_image->image_x              = 400 ; // กำหนดความกว้างภาพเท่ากับ 400 pixel 
        $upload_image->image_ratio_y        = true; // ให้คำณวนความสูงอัตโนมัติ
 
        $upload_image->process( "upload_images2" ); // เก็บภาพไว้ในโฟลเดอร์ที่ต้องการ  *** โฟลเดอร์ต้องมี permission 0777
 
        // ถ้าหากว่าการจัดเก็บรูปภาพไม่มีปัญหา  เก็บชื่อภาพไว้ในตัวแปร เพื่อเอาไปเก็บในฐานข้อมูลต่อไป
        if ( $upload_image->processed ) {
 
            $image_name =  $upload_image->file_dst_name ; // ชื่อไฟล์หลังกระบวนการเก็บ จะอยู่ที่ file_dst_name
            $upload_image->clean(); // คืนค่าหน่วยความจำ
 
            // เก็บชื่อภาพลงฐานข้อมูล
            $insertSQL = sprintf("INSERT INTO tbl_image2 (image_name) VALUES ( '%s' )", $image_name );
            echo $insertSQL ;
            mysql_select_db($database_connection, $connection);
            $Result1 = mysql_query($insertSQL, $connection) or die(mysql_error());
 
 
        }// END if ( $upload_image->processed )
 
    }//END if ( $upload_image->uploaded )
 
 
}
?>