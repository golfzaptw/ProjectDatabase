<?php
include ("Restrict.php");

?>

<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <title>Admin:ร้านลุงเพชร</title>
  <link rel="stylesheet" type="text/css" href="./css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="css.css">
  <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
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
      <a href="for-admin.php" class="navbar-brand"   >Admin | ร้านลุงเพชร</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      
      
      <ul class="nav navbar-nav navbar-right">
      <li><a href="upload.php">อัพโหลดรูปสินค้า</a></li>
        <li><a href="edittype1.php">รายการอาหารในร้าน</a></li>
          <li><a href="#">ตารางการสั่งอาหาร</a></li>
            <li><a href="#">รับออเดอร์</a></li>
            <li><a href="<?php echo $logoutAction ?>">logout</a></li>  <!-- /ตรงนี้คือ  logout database >
        
      </ul>
    </div><! /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<br><br><br><br><br><br><br><br><br>









<form action="phpMySQLEditRecordSave.php?CusID=<?php echo $_GET["CusID"];?>" name="frmEdit" method="post">
<?php
$objConnect = mysql_connect("localhost","root","") or die("Error Connect to Database");
$objDB = mysql_select_db("admin");
$strSQL = "SELECT * FROM type1 WHERE name = '".$_GET["CusID"]."' ";
$objQuery = mysql_query($strSQL);
$objResult = mysql_fetch_array($objQuery);
if(!$objResult)
{
	echo "Not found name=".$_GET["CusID"];
}
else
{
?>
<div class="content">
<center><H4>แก้ไขข้อมูลอาหารประเภท:ต้ม</H4></center><br><br>
<center><table width="600" border="1">
  <tr>

    <th width="91"> <div align="center">ชื่ออาหาร </div></th>
    <th width="90"> <div align="center">ระยะเวลาในการทำ(นาที) </div></th>
    <th width="97"> <div align="center">calorie </div></th>
    <th width="97"> <div align="center">ราคา/บาท </div></th>


    
  </tr>
  <tr>
    <td><div align="center"><input type="text" name="txtCustomerID" size="5" value="<?php echo $objResult["name"];?>"></div></td>
    <td><input type="text" name="txtName" size="20" value="<?php echo $objResult["type"];?>"></td>
    <td><input type="text" name="txtEmail" size="20" value="<?php echo $objResult["calorie"];?>"></td>
    <td><div align="center"><input type="text" name="txtCountryCode" size="2" value="<?php echo $objResult["price"];?>"></div></td>
    
  </tr>
  </table></center><br><br>
  <center><input type="submit" name="submit" value="อัพเดตข้อมูล"></center></div>
  <?php
  }
  mysql_close($objConnect);
  ?>
  </form>
</body>
</html>