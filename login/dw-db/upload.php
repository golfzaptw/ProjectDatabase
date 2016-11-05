<?php
// Include คลาส class.upload.php เข้ามา เพื่อจัดการรูปภาพ
require_once('class.upload.php-master/src/class.upload.php') ;
include ("Restrict.php");
include ("codefromupload.php");
include ("codefromupload2.php");
include ("codefromupload3.php");
 
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
if ((isset($_POST["MM_insert"])) && ($_POST["MM_insert"] == "form1")) {
 
    // เริ่มต้นใช้งาน class.upload.php ด้วยการสร้าง instant จากคลาส
    $upload_image = new upload($_FILES['image_name']) ; // $_FILES['image_name'] ชื่อของช่องที่ให้เลือกไฟล์เพื่ออัปโหลด
 
    //  ถ้าหากมีภาพถูกอัปโหลดมาจริง
    if ( $upload_image->uploaded ) {
 
        // ย่อขนาดภาพให้เล็กลงหน่อย  โดยยึดขนาดภาพตามความกว้าง  ความสูงให้คำณวนอัตโนมัติ
        // ถ้าหากไม่ต้องการย่อขนาดภาพ ก็ลบ 3 บรรทัดด้านล่างทิ้งไปได้เลย
        $upload_image->image_resize         = true ; // อนุญาติให้ย่อภาพได้
        $upload_image->image_x              = 400 ; // กำหนดความกว้างภาพเท่ากับ 400 pixel 
        $upload_image->image_ratio_y        = true; // ให้คำณวนความสูงอัตโนมัติ
 
        $upload_image->process( "upload_images" ); // เก็บภาพไว้ในโฟลเดอร์ที่ต้องการ  *** โฟลเดอร์ต้องมี permission 0777
 
        // ถ้าหากว่าการจัดเก็บรูปภาพไม่มีปัญหา  เก็บชื่อภาพไว้ในตัวแปร เพื่อเอาไปเก็บในฐานข้อมูลต่อไป
        if ( $upload_image->processed ) {
 
            $image_name =  $upload_image->file_dst_name ; // ชื่อไฟล์หลังกระบวนการเก็บ จะอยู่ที่ file_dst_name
            $upload_image->clean(); // คืนค่าหน่วยความจำ
 
            // เก็บชื่อภาพลงฐานข้อมูล
            $insertSQL = sprintf("INSERT INTO tbl_image (image_name) VALUES ( '%s' )", $image_name );
            echo $insertSQL ;
            mysql_select_db($database_connection, $connection);
            $Result1 = mysql_query($insertSQL, $connection) or die(mysql_error());
 
 
        }// END if ( $upload_image->processed )
 
    }//END if ( $upload_image->uploaded )
 
 
}
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

 <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <title>Admin:ร้านลุงเพชร</title>
  <link rel="stylesheet" type="text/css" href="./css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="css.css">
  <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>



<title>Upload Image To Database</title>
</head>
 
<body>


<nav id="scrollingNav" class="navbar navbar-inverse navbar-fixed-top" role= "navigation">
<div class="container">
  
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a  href="for-admin.php" class="navbar-brand"   >Admin | ร้านลุงเพชร</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      
      
      <ul class="nav navbar-nav navbar-right">
      <li><a href="upload.php">อัพโหลดสินค้า</a></li>
        <li><a href="#">รายการอาหารในร้าน</a></li>
          <li><a href="#">ตารางการสั่งอาหาร</a></li>
            <li><a href="#">รับออเดอร์</a></li>
             <li><a href="<?php echo $logoutAction ?>">logout</a></li>  <!-- /ตรงนี้คือ  logout database >
        
      </ul>
    </div><! /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<br><br><br>





<br><br><br>


<div class="jumbotron">
<div class="container">
<form action="" method="post" enctype="multipart/form-data" name="form1" id="form1">
  <p>
    <H2> อาหารประเภท ต้ม </H2> <br><br>
    <input name="image_name" type="file" id="image_name" size="40" />
  </p>
  <p>
    <input type="submit" value="Upload" />
    <input type="hidden" name="MM_insert" value="form1" />
  </p>
</form>
</div>
</div><br><br>





<div class="jumbotron">
<div class="container">
<form action="" method="post" enctype="multipart/form-data" name="form2" id="form2">
  <p>
    <H2> อาหารประเภท ทอด </H2> <br><br>
    <input name="image_name" type="file" id="image_name" size="40" />
  </p>
  <p>
    <input type="submit" value="Upload" />
    <input type="hidden" name="MM_insert" value="form2" />
  </p>
</form>
</div>
</div><br><br>



<div class="jumbotron">
<div class="container">
<form action="" method="post" enctype="multipart/form-data" name="form3" id="form3">
  <p>
    <H2> อาหารประเภท แกง </H2> <br><br>
    <input name="image_name" type="file" id="image_name" size="40" />
  </p>
  <p>
    <input type="submit" value="Upload" />
    <input type="hidden" name="MM_insert" value="form3" />
  </p>
</form>
</div>
</div><br><br>


<div class="jumbotron">
<div class="container">
<form action="" method="post" enctype="multipart/form-data" name="form4" id="form4">
  <p>
    <H2> อาหารประเภท ผัด </H2> <br><br>
    <input name="image_name" type="file" id="image_name" size="40" />
  </p>
  <p>
    <input type="submit" value="Upload" />
    <input type="hidden" name="MM_insert" value="form4" />
  </p>
</form>
</div>
</div><br><br>






</body>
 
</html>