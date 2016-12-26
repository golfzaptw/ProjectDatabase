<?php include './session.php'; ?>
<html>
    <head>
       <head> <title>Crystal Home รายการสินค้า</title>
         <link rel="shortcut icon" href="pic.titles.png"/>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <?php include './css.php'; ?><link rel="stylesheet"href="product.css">
    </head>
    <body>
       <div class="ax" style="padding-top: 120px;"></div>
      
       <?php
       
       
      
        include './sqlConn.php';
       
      $sql = "SELECT * FROM type1";
$result = mysqli_query($con, $sql);
                $i =0;
    while($row = mysqli_fetch_assoc($result)) {
        $id[$i] = $row["id"];
        $name[$i] = $row["name"];
        $price[$i] = $row["price"];
        $type[$i] = $row["type"];
        $i++;
    }
  //  $cart ->id[$x];
   
     $checkOK=1;
  
 echo '<div style="padding-left : 30px;"><h3><span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>  รายการสินค้า</h3><hr>';
    for($j =0 ;$j< count($id);$j++){
        
       echo '
          
       <div class="imgx">
     <div class="img">
 
      <img src="1.jpg" width="20vh" height="20vh">
    <div class="desc"><h5 style="color:black; font-size:14px;">'.$id[$j].'&nbsp;'.$name[$j].'</h5>ราคา '.$price[$j].' บาท<br>';
if($status[$j] = true){
    
     if(isset($_SESSION['UserID'])){ echo '<a class="btn btn-warning" href="cart.php?p_id='.$id[$j].'&act=add"> <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>เพิ่มในรถเข็น</a> ';}
else echo '<a class="btn btn-warning lnv" href="login.php"> <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true">เพิ่มในรถเข็น</a>';
     }
else if($status[$j] == "out.png"){
        echo '<h5 style="color:red;">ขออภัย สินค้าหมด</h5>';}
        else {
        echo 'คุณเลือกสินค้านี้แล้ว';}
    
       
 echo '</div></div></div> '; }
 
?>
    </body>
</html>
