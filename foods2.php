<?php

require_once 'dbconfig.php';
  
  if(isset($_GET['delete_id']))
  {
    // select image from db to delete
    $stmt_select = $DB_con->prepare('SELECT userPic FROM tbl_users WHERE userID =:uid');
    $stmt_select->execute(array(':uid'=>$_GET['delete_id']));
    $imgRow=$stmt_select->fetch(PDO::FETCH_ASSOC);
    unlink("user_images/".$imgRow['userPic']);
    
    // it will delete an actual record from db
    $stmt_delete = $DB_con->prepare('DELETE FROM tbl_users WHERE userID =:uid');
    $stmt_delete->bindParam(':uid',$_GET['delete_id']);
    $stmt_delete->execute();
    
    header("Location: edittype1.php");
  }
?>


<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <title>อาหารประเภท:ต้ม</title>
  <link rel="stylesheet" type="text/css" href="./css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="css.css">
  <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>


<style >
  
.facebook:hover{
  opacity: 0.6;
  
}

footer {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}



</style>
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
      <a class="navbar-brand">  <img class="circle" src="./image/icon5.png" width="30" height="30"  border-radius="50"/></a>
      <a class="navbar-brand" href="#">ร้านลุงเพชร</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    


      
      <ul class="nav navbar-nav navbar-right">
      <li><a href="index.php">Home</a></li>
       <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">รายการอาหาร <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li ><a href="foods1.php">ประเภท:ต้ม</a></li>
            <li role="separator" class="divider"></li>
            <li class="active"><a href="foods2.php">ประเภท:ทอด</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="foods3.php">ประเภท:แกง</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="foods4.php">ประเภท:ผัด</a></li>
          </ul>
        </li>
       <li ><a href="order.php">ตารางลำดับการสั่งซื้อ</a></li>
        <li><a href="ContactUs.php">ติดต่อร้าน</a></li>
       <li><a href="document.php">คู่มือคำแนะนำ</a></li>
        

        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Login <span class="caret"></span></a>
          <ul class="dropdown-menu">
           <li><a href="#" data-toggle="modal" data-target="#myModal" >Login Facebook</a></li>
            <li><a href="login/dw-db/index.php">Login for Admin</a></li>
            
          </ul>
        </li>


      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

</div> <br><br><br><br><br>




<?php
$objConnect = mysql_connect("localhost","root","") or die("Error Connect to Database");
$objDB = mysql_select_db("admin");
$strSQL = "SELECT * FROM type2";
$objQuery = mysql_query($strSQL) or die ("Error Query [".$strSQL."]");
?>



<div class="center"> 
<center><H4>อาหารประเภท:ทอด</H4></center><br><br>
<center><table width="700" border="1">
  <tr>
    <th width="91"> <div align="center">ชื่ออาหาร </div></th>
    <th width="90"> <div align="center">ระยะเวลาในการทำ </div></th>
    <th width="80"> <div align="center">calorie </div></th>
    <th width="97"> <div align="center">ราคา/บาท </div></th>
    
    
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
    
    
  </tr>
<?php
}
?>
</table></div>
<?php
mysql_close($objConnect);
?>



<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">ขั้นตอนการสั่งอาหารเพียง 3 ขั้นตอน</h4>
      </div>
      <div class="modal-body" align="center">



     <a href="loginfacebook/index.php" class="facebook"> 
     <img src="./image/BS.jpg" width="500" height="200" >


     </a>

        
        
    
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>





<div class="container">

  <div class="page-header">
      <center><h1 class="h2">รูปรายการอาหารแต่ละชนิด</h1> </center>
    </div>
    
<br />

<div class="container">
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
        <p class="page-header"><?php echo $userName."&nbsp;/&nbsp; ".$userProfession; ?> </p>
        <img src="user_images2/<?php echo $row['userPic']; ?>" class="img-rounded" width="250px" height="250px" />
        <p class="page-header">
       
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


</div>












<footer>  </footer>
















</body>
