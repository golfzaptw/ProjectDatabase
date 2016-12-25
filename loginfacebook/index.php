<?php
require 'sdk/facebook.php';

$facebook = new Facebook(array(
  'appId'  => '166496443822741',
  'secret' => '2356a383baaa4a42e59a5a3899d8e99b',
));

// Get User ID
$user = $facebook->getUser();

if ($user) {
  try {
    $user_profile = $facebook->api('/me');
  } catch (FacebookApiException $e) {
    error_log($e);
    $user = null;
  }
}

if ($user) {
  $logoutUrl = $facebook->getLogoutUrl();
} else {
  $loginUrl = $facebook->getLoginUrl();
}

// Save to mysql
if ($user) {
  if($_GET["code"] != "")
  {
        $objConnect = mysql_connect("localhost","root","") or die(mysql_error());
        $objDB = mysql_select_db("mydb");
        mysql_query("SET NAMES UTF8");
        $strSQL ="  INSERT INTO  tb_facebook (FACEBOOK_ID,NAME,LINK,CREATE_DATE) 
          VALUES
          ('".trim($user_profile["id"])."',
          '".trim($user_profile["name"])."',
          '".trim($user_profile["link"])."',
          '".trim(date("Y-m-d H:i:s"))."')";
        $objQuery  = mysql_query($strSQL);
        mysql_close();
        header("location:index.php");
        exit();
  }
}

// Logout
if($_GET["Action"] == "Logout")
{
  $facebook->destroySession();
  header("location:../index.php");
  exit();
}

?>

<!-- ข้างบนคือการเชื่อมต่อกับ facebook -->

<!DOCTYPE html>

<html lang="en" ng-app="app">
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


<style>
.circle{ /* ชื่อคลาสต้องตรงกับ <img class="circle"... */
    height: auto;  /* ความสูงปรับให้เป็นออโต้ */
    width: auto;  /* ความสูงปรับให้เป็นออโต้ */
    border: 3px solid #fff; /* เส้นขอบขนาด 3px solid: เส้น #fff:โค้ดสีขาว */
    border-radius: 50%; /* ปรับเป็น 50% คือความโค้งของเส้นขอบ*/
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2); /* เงาของรูป */
}
</style>






<body>


       
<nav id="scrollingNav" class="navbar navbar-inverse navbar-fixed-top" role= "navigation">

 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">

      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
<br>
     <li><?php if ($user): ?>
      <?php else: ?>
      <div><br><br>
       
         <?php endif ?>
         <?php if ($user):?><img class="circle" src="https://graph.facebook.com/<?php echo $user; ?>/picture" >
            <a href="?Action=Logout">   Logout </a>
        <?php endif ?>







        </li>

      
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    






      
      
   


<?php if ($user): ?>
      <?php else: ?>

      <div><br><br><br><br><br><br><br>

        <center><img src="./image/Facebook_icon.png" alt="..." width="120" height="120"></center>
        <center><H1><a href="<?php echo $loginUrl; ?>">Login Facebook</a > </div></H1></center><br>
        <br><br>
<div class="row">
  <center><div class="col-xs-6 col-md-4"><img  src="./image/bc.jpg" width="500" height="270"  /></div></center>
  <center><div class="col-xs-6 col-md-4"><img  src="./image/bc3.jpg" width="500" height="270"  /></div></center>
  <center><div class="col-xs-6 col-md-4"><img  src="./image/bc4.jpg" width="500" height="270"  /></div></center>
</div>
      
         <?php endif ?>
         <?php if ($user):?>
          <ul class="nav navbar-nav navbar-right">
         
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
        <li><a href="ContactUs.php">ติดต่อร้าน</a></li>
       <li><a href="document.php"></a></li><br><br><br><br>

      </ul>
    </div><!-- /.navbar-collapse -->
  <!-- /.container-fluid -->
</nav>

</div>
 <?php endif ?>















</body>
</html>


