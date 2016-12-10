<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
      <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>หน้า index</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  
  <link rel="stylesheet" type="text/css" href="./css/bootstrap.css">
  

  <script src="./js/jquery.js"></script>
  <script type="text/javascript" scr="./js/jquery.js"></script>
  <script type="text/javascript" src="./js/bootstrap.min.js"></script>

    
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
      <a class="navbar-brand" href="#">Ginmun_Delivery</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    


      
      <ul class="nav navbar-nav navbar-right">
      <li><a href="index.php">Home</a></li>
       <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">รายการอาหาร <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="boil.php">ต้ม</a></li>
            <li><a href="fried.php">ทอด</a></li>
            <li><a href="soup.php">แกง</a></li>
<!--             <li role="separator" class="divider"></li> -->
            <li><a href="puff.php">ผัด</a></li>
          </ul>
        </li>
       <li><a href="order.php">ตารางลำดับการสั่งซื้</a></li>
        <li><a href="ContactUs.php">ติดต่อร้าน</a></li>
       <li><a href="document.php">คู่มือคำแนะนำ</a></li>
        

        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Login <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Login Facebook</a></li>
            <li><a href="login/dw-db/index.php">Login for Admin</a></li>
            
          </ul>
        </li>


      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

</div>




<div class="">
  

<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="./image/01.jpg" alt="...">
      
    </div>
    <div class="item">
      <img src="./image/022.jpg" alt="...">
      
    </div>

    <div class="item">
      <img src="./image/03.jpg" alt="...">
      
    </div>
    




  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<br><br><br><br><br><br><br> 

</div>

<div class="container">
<div class="row">
       <div class="col-md-12" >
           <div class="panel-body">
              <p>

                  <div class="row">
                   <div class="col-sm-6 col-md-4">
                   
                  <center><img src="image/icon3.png" alt="..." class="img-circle"></center>
                  <div class="caption">
                  <center><h3>สะดวกรวดเร็ว</h3></center>       
      
    </div>
  </div>
  <div class="row">
                   <div class="col-sm-6 col-md-4">
                  
                  <center><img src="image/icon1.png" alt="..." class="img-circle"></center>
                  <div class="caption">
                  <center><h3>สินค้ามีให้เลือกเยอะ</h3></center>       
                  
     
    </div>
  </div>
  <div class="row">
                   <div class="col-sm-6 col-md-4">
                  
                  <center><img src="image/icon2.png" alt="..." class="img-circle"><center>
                  <div class="caption">
                   <center><h3>เก็บเงินปลายทาง</h3></center>    
                  
      
    </div>
  </div>
</div>
</div>

</div>
                 

                </p>
        </div>
        </div> 
        </div>
        </div>
        <br><br><br><br><br><br><br> 
</div>





<div class="jumbotron">
<div class="container">
<div class="row">
      <div class="col-md-6">
      <img src="image/1.jpg" style="width:404px;height:228px;" >
      </div>
  <div class="col-md-6">
<br><br><br>
  <?php
  //connect db
  include("connect.php");
  $sql = "select * from product order by p_id";  //เรียกข้อมูลมาแสดงทั้งหมด
  $result = mysqli_query($conn, $sql);
  while($row = mysqli_fetch_array($result))
  {
    echo "<tr>";
  echo "<td align='center'><img src='img/" . $row["p_pic"] ." ' width='80'></td>";
  echo "<td align='left'>" . $row["p_name"] . "</td>";
    echo "<td align='center'>" .number_format($row["p_price"],2). "</td>";
    echo "<td align='center'><a href='product_detail.php?p_id=$row[p_id]'>คลิก</a></td>";
  echo "</tr>";
  }
  ?>

</div>
</div>
</div>
</div>


<div class="jumbotron">
<div class="container">
<div class="row">
      <div class="col-md-6">
      
<br><br><br>
  .col-xs-6 .col-md-4  .col-xs-6 .col-md-4  .col-xs-6 .col-md-4  .col-xs-6 .col-md-4  .col-xs-6 .col-md-4  .col-xs-6 .col-md-4  .col-xs-6 .col-md-4   .col-xs-6 .col-md-4   .col-xs-6 .col-md-4   .col-xs-6 .col-md-4  col-xs-6 .col-md-4   .col-xs-6 .col-md-4   .col-xs-6 .col-md-4   

      </div>
  <div class="col-md-6">

  <img src="image/2.jpg" style="width:404px;height:228px;" align="right" >
    <div>

</div>
</div>
</div>
</div>
<div class="footer">
</div>










</body>
</html>


