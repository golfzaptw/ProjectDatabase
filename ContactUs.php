<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <title>ContactUs</title>
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
      <a class="navbar-brand" href="index.php">ร้านลุงเพชร</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    


      
      <ul class="nav navbar-nav navbar-right">
      <li><a href="index.php">Home</a></li>
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
       <li><a href="order.php">ตารางลำดับการสั่งซื้อ</a></li>
        <li class="active"><a href="ContactUs.php">ติดต่อร้าน</a></li>
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
      <img src="./image/logo.jpg" alt="...">
      
    </div>
    <div class="item">
      <img src="./image/index3.jpg" alt="...">
      
    </div>

    <div class="item">
      <img src="./image/index4.jpg" alt="...">
      
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

 

<div class="container">
<div class="row">
       <div class="col-md-12" >
           <div class="panel-body">
              <p>

                  <div class="row">
                   <div class="col-sm-6 col-md-4">
                   
                  <center><img src="image/icon8.png" alt="..." class="img-circle"></center>
                  <div class="caption">
                  <center><a href="https://www.facebook.com/karn.ninparwit"><h3>facesbook:ร้าน</h3></a></center>       
      
    </div>
  </div>
  <div class="row">
                   <div class="col-sm-6 col-md-4">
                  
                  <center><img src="image/icon7.png" alt="..." class="img-circle"></center>
                  <div class="caption">
                  <center><a href="#" data-toggle="modal" data-target="#myModal2" ><h3>เบอร์ติดต่อร้าน</h3></a></center>       
                  
     
    </div>
  </div>
  <div class="row">
                   <div class="col-sm-6 col-md-4">
                  
                  <center><img src="image/icon34.png" alt="..." class="img-circle"  width="150" height="150" border-radius="50"/><center>
                  <div class="caption">
                   <center><a href="#" data-toggle="modal" data-target="#myModal3" ><h3>แผนที่ร้าน</h3></a></center>    
                  
      
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



<!-- ส่วนการแสดง POPUP -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">เบอร์ติดต่อร้าน:</h4>
      </div>
      <div class="modal-body" align="center">



     <H4>089-0873063 (ลุงเพชร)</H4><br>
      <H4>083-0833363 (counter:ร้าน)</H4>

     </a>

        
        
    
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>


<!-- ส่วนการแสดง POPUP -->
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">แผนที่ร้าน:</h4>
      </div>
      <div class="modal-body" align="center">



     
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3771.8008516771065!2d99.89415341446707!3d19.02849518711525!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30d83369b9fd7285%3A0x48422f267bc2c6ec!2z4Lih4Lir4Liy4Lin4Li04LiX4Lii4Liy4Lil4Lix4Lii4Lie4Liw4LmA4Lii4Liy!5e0!3m2!1sth!2sth!4v1482462201749" width="400" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>


        
        
    
      </div>

      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>



<footer>  </footer>


</body>
