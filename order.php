<!DOCTYPE html>
<html lang="en" ng-app="app">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
      <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>หน้า Order</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  
  <link rel="stylesheet" type="text/css" href="./css/bootstrap.css">
 

  <script src="./js/jquery.js"></script>
  <script type="text/javascript" scr="./js/jquery.js"></script>
  <script type="text/javascript" src="./js/bootstrap.min.js"></script>

    
</head>




<style >
  
.facebook:hover{
  opacity: 0.6;

}



article {
    
    background-color: #FFEC8B;
    margin-left: 0px;
    border-left:70px ;
    padding: 1em;
    overflow: hidden;
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
      <a class="navbar-brand" href="index.php">ร้านลุงเพชร </a>
      
    </div>
   


      
      <ul class="nav navbar-nav navbar-right">
      <li  ><a href="index.php">Home</a></li>
       <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">รายการอาหาร <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="foods1.php">ประเภท:ต้ม</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="foods2.php">ประเภท:ทอด</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="foods3.php">ประเภท:แกง</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="foods4.php">ประเภท:ผัด</a></li>
          </ul>
        </li>
       <li class="active"><a href="order.php">ตารางลำดับการสั่งซื้อ</a></li>
        <li><a href="ContactUs.php">ติดต่อร้าน</a></li>
       <li><a href="document.php">คู่มือคำแนะนำ</a></li>
        

        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Login <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="loginfacebook/index.php" >Login Facebook</a></li>
            <li><a href="login/dw-db/index.php">Login for Admin</a></li>
            
          </ul>
        </li>


      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

</div>





<br><br>
<div class="">
  

<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    
  </ol>

      </div>


  <center><img src="image/icon10.png" style="width:404px;height:228px;" align="center" ></center>
    </div>
    <br>

<center><div><h1>ตารางการสั่งซื้ออาหาร</h1></div></center>
       <br><br>
<?php
  $hostname = 'localhost';
  $username = 'root';
  $password = '';
  $dbname = 'admin';

  try {
    $dbh = new PDO("mysql:host=$hostname;dbname=$dbname", $username, $password);

    $sql = $dbh->prepare("SELECT * FROM order_head order by o_id DESC ");

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
      </tr>
         </div>

      <?php } ?>
    <thead>
      <tr>
      <th>#</th>
        <th>Name</th>
        <th>Address</th>
        <th>Phone</th>
      </tr>
    </thead>
  </table>
</div>
<center>

<!-- <nav aria-label="..." >
  <ul class="pagination pagination-lg">
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"> <?php echo '<td><a href="tableorder.php?id=',$id,'">2</a></td>'; ?> </li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
      </a>
    </li>
  </ul>
</nav> -->
</center>
<center>

   </div>
</div>
</div>


</article>








<br><br><br>









<!-- ส่วนการแสดง POPUP -->
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



<br><br><br><br><br><br><br><br><br><br><br>



<footer>  </footer>



</body>
</html>


