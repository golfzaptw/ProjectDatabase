
<?php
include ("Restrict.php");
include("connecttype4.php");
include ("codefromupload3.php");

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









<div class="center"> 
<center><H4>อาหารประเภท:ผัด</H4></center><br><br>
<center><table width="700" border="1">
  <tr>
    <th width="91"> <div align="center">ชื่ออาหาร </div></th>
    <th width="90"> <div align="center">ระยะเวลาในการทำ(นาที) </div></th>
    <th width="97"> <div align="center">calorie </div></th>
    <th width="97"> <div align="center">ราคา/บาท </div></th>
    
    <th width="30"> <div align="center">Edit </div></th>
  </tr></center>
<?php
while($objResult = mysql_fetch_array($objQuery))
{
?>
  <tr>
    <td><div align="center"><?php echo $objResult["name"];?></div></td>
    <td><?php echo $objResult["type"];?></td>
    <td><?php echo $objResult["calorie"];?></td>
    <td><div align="center"><?php echo $objResult["price"];?></div></td>
    
    <td align="center"><a href="phpMySQLEditRecordForm4.php?CusID=<?php echo $objResult["name"];?>">Edit</a></td>
  </tr>
<?php
}
?>
</table></div>
<?php
mysql_close($objConnect);
?>


<br><br><br><br><br><br><br><br><br>


<div class="jumbotron">
<div class="container">
<form action="" method="post" enctype="multipart/form-data" name="form2" id="form4">
  <p>
    <H2> อัพโหลดรูปอาหารประเภท:ผัด</H2> <br><br>
     
    <input name="image_name" type="file" id="image_name" size="40" />
  </p>
  <p>
    <input type="submit" value="Upload" />
    <input type="hidden" name="MM_insert" value="form4" />
  </p>
</form>
</div>


<br><br><br><br><br><br><br><br><br>


</body>
</html>