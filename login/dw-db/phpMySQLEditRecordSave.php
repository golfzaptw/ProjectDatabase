
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
     <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">รายการอาหารภายในร้าน <span class="caret"></span></a>
          <ul class="dropdown-menu">
             <li><a href="edittype1.php">ประเภท:ต้ม</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="edittype2.php">ประเภท:ทอด</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="edittype3.php">ประเภท:แกง</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="edittype4.php">ประเภท:ผัด</a></li>
          </ul>
        </li>
          <li><a href="#">ตารางการสั่งอาหาร</a></li>
            <li><a href="#">รับออเดอร์</a></li>
            <li><a href="<?php echo $logoutAction ?>">logout</a></li>  <!-- /ตรงนี้คือ  logout database >
        
      </ul>
    </div><! /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<br><br><br><br><br><br><br><br><br>


<?php
$objConnect = mysql_connect("localhost","root","") or die("Error Connect to Database");
$objDB = mysql_select_db("admin");
$strSQL = "UPDATE type1 SET ";
$strSQL .="name = '".$_POST["txtCustomerID"]."' ";
$strSQL .=",type = '".$_POST["txtName"]."' ";
$strSQL .=",calorie = '".$_POST["txtEmail"]."' ";
$strSQL .=",price = '".$_POST["txtCountryCode"]."' ";
$strSQL .="WHERE name = '".$_GET["CusID"]."' ";
$objQuery = mysql_query($strSQL);
if($objQuery)
{
	echo "<center> <H2> บันทักเรียบร้อย  </H2></center>";
	

}
else
{
	echo "<center> <H2> บันทึกข้อมูลล้มเหลว กรุณตรวจสอบท่านตั้งชื่อรายการอาหารซ้ำกัน </H2></center> ";
}
mysql_close($objConnect);
?>





















</body>
</html>