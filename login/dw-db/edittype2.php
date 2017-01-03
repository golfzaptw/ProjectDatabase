
<?php
include ("Restrict.php");
include("connecttype2.php");



require_once 'dbconfig.php';
  
  if(isset($_GET['delete_id']))
  {
    // select image from db to delete
    $stmt_select = $DB_con->prepare('SELECT userPic FROM tbl_users2 WHERE userID =:uid');
    $stmt_select->execute(array(':uid'=>$_GET['delete_id']));
    $imgRow=$stmt_select->fetch(PDO::FETCH_ASSOC);
    unlink("user_images2/".$imgRow['userPic']);
    
    // it will delete an actual record from db
    $stmt_delete = $DB_con->prepare('DELETE FROM tbl_users2 WHERE userID =:uid');
    $stmt_delete->bindParam(':uid',$_GET['delete_id']);
    $stmt_delete->execute();
    
    header("Location: edittype2.php");
  }

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

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" />
<title>Upload, Insert, Update, Delete an Image using PHP MySQL - Coding Cage</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">

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
            <li><a href="acceptorder.php">รับออเดอร์</a></li>
            <li><a href="<?php echo $logoutAction ?>">logout</a></li>  <!-- /ตรงนี้คือ  logout database >
        
      </ul>
    </div><! /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<br><br><br><br><br><br><br><br><br>









<div class="center"> 
<center><H4>อาหารประเภท:ทอด</H4></center><br><br>
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
    
    <td align="center"><a href="phpMySQLEditRecordForm2.php?CusID=<?php echo $objResult["name"];?>">Edit</a></td>
  </tr>
<?php
}
?>
</table></div>
<?php
mysql_close($objConnect);
?>


<br><br><br><br><br><br><br><br><br>


<div class="container">

  <div class="page-header">
      <h1 class="h2">เพิ่มรูปรายการอาหาร <a class="btn btn-default" href="addnew2.php"> <span class="glyphicon glyphicon-plus"></span> &nbsp; add new </a></h1> 
    </div>
    
<br />

<div class="row">
<?php
  
  $stmt = $DB_con->prepare('SELECT userID, userName, userProfession, userPic FROM tbl_users2 ORDER BY userID DESC');
  $stmt->execute();
  
  if($stmt->rowCount() > 0)
  {
    while($row=$stmt->fetch(PDO::FETCH_ASSOC))
    {
      extract($row);
      ?>
      <div class="col-xs-3">
        <p class="page-header"><?php echo $userName."&nbsp;|ชื่ออาหาร:&nbsp; ".$userProfession; ?> </p>
        <img src="user_images2/<?php echo $row['userPic']; ?>" class="img-rounded" width="250px" height="250px" />
        <p class="page-header">
        <span>
        <a class="btn btn-info" href="editform2.php?edit_id=<?php echo $row['userID']; ?>" title="click for edit" onclick="return confirm('sure to edit ?')"><span class="glyphicon glyphicon-edit"></span> Edit</a> 
        <a class="btn btn-danger" href="?delete_id=<?php echo $row['userID']; ?>" title="click for delete" onclick="return confirm('sure to delete ?')"><span class="glyphicon glyphicon-remove-circle"></span> Delete</a>
        </span>
        </p>
      </div>       
      <?php
    }
  }
  else
  {
    ?>
        <div class="col-xs-12">
          <div class="alert alert-warning">
              <span class="glyphicon glyphicon-info-sign"></span> &nbsp; No Data Found ...
            </div>
        </div>
        <?php
  }
  
?>
</div>  





<!-- Latest compiled and minified JavaScript -->
<script src="bootstrap/js/bootstrap.min.js"></script>



<br><br><br><br><br><br><br><br><br>


</body>
</html>