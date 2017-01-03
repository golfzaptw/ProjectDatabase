<?php
include ("Restrict.php");

?>


<!-- ข้างบน คือ ที่ ต่อ database ในชื่อ Admin ที่ทำ  Restrict -->
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
      <a class="navbar-brand" href="for-admin.php"  >Admin | ร้านลุงเพชร</a>
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

<center><div><h1>ตารางการสั่งซื้ออาหาร</h1></div></center>
       <br><br>
<?php
  $hostname = 'localhost';
  $username = 'root';
  $password = '';
  $dbname = 'admin';

  try {
    $dbh = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);

    $sql = $dbh->prepare("SELECT * FROM order_head order by o_id DESC LIMIT 10");

    if($sql->execute()) {
       $sql->setFetchMode(PDO::FETCH_ASSOC);
    }
  }
  catch(Exception $error) {
      echo '<p>', $error->getMessage(), '</p>';
  }



?>

<div class="container">         
  <table class="table table-hover">
  <?php while($row = $sql->fetch()) { ?>

    <tr>
      <td><?php echo $row['o_id']; ?></td>
        <td><?php echo $row['o_name']; ?></td>
        <td><?php echo $row['o_addr']; ?></td>
        <td><?php echo $row['o_phone']; ?></td>
        <td><div ><a href="delete.php?o_id=<?=$row['o_id']?>">ลบ</a></div></td>
      </tr>
         </div>

      <?php } ?>
    <thead>
      <tr>
      <th>#</th>
        <th>Name</th>
        <th>Address</th>
        <th>Phone</th>
        <th>Delete</th>
      </tr>
    </thead>
  </table>
</div>
<center>









</body></html>