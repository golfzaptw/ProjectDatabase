<?php
	include './session.php';
	
        if(isset($_REQUEST['p_id'])){
	$p_id = $_REQUEST['p_id']; 
        $act = $_REQUEST['act'];}
        else {
            $p_id = 0; 
	$act = 0;
        }
 
	if($act=='add' && !empty($p_id))
	{
		if(isset($_SESSION['cart'][$p_id]))
		{
			$_SESSION['cart'][$p_id]++;
		}
		else
		{
			$_SESSION['cart'][$p_id]=1;
		}
	}
 
	if($act=='remove' && !empty($p_id))  //ยกเลิกการสั่งซื้อ
	{
		unset($_SESSION['cart'][$p_id]);
	}
 
	if($act=='update')
	{
		$amount_array = $_POST['amount'];
		foreach($amount_array as $p_id=>$amount)
		{
			$_SESSION['cart'][$p_id]=$amount;
		}
	}
?>
 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ตระกร้าสินค้า</title>
 <?php include './css.php'; ?>
</head>

<body>
    
       <div class="ax" style="padding-top: 120px;"></div>
<form id="frmcart" name="frmcart" method="post" action="?act=update">
    
    <div class="container" style="background-color: #FDDDDD;">        
  <h2><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>ตะกร้าสินค้า</h2>
<button type="button" onclick="window.location.href='foods2.php'" class="btn btn-warning">เลือกสินค้าต่อ</button> 
 <div class="table-responsive">          
  <table class="table">
      <thead>
    <tr>
      <td><h3>
   

          </h3></td>
    </tr>
    <tr>
        <td bgcolor="#EAEAEA">รหัสสินค้า</td>
      <td bgcolor="#EAEAEA">สินค้า</td>
      <td bgcolor="#EAEAEA">ราคา</td>
      <td  bgcolor="#EAEAEA">จำนวน</td>
      <td bgcolor="#EAEAEA">เพิ่มจำนวน</td>
      <td  bgcolor="#EAEAEA">รวม(บาท)</td>
      <td  bgcolor="#EAEAEA">ลบ</td>
    </tr></thead><tbody>
<?php
$total=0;
if(!empty($_SESSION['cart']))
{
	include("./sqlConn.php");
	foreach($_SESSION['cart'] as $p_id=>$qty)
	{
		$sql = "select * from type2 where id=$p_id";
		$query = mysqli_query($con, $sql);
		$row = mysqli_fetch_array($query);
		$sum = $row['price'] * $qty;
		$total += $sum;
		echo "<tr>";
                echo "<td style='width: 50px;'>" . $row["id"] . "</td>";
		echo "<td >" . $row["name"] . "</td>";
		echo "<td>" .number_format($row["price"],2) . "</td>";
		echo "<td >";  
                echo '<form action="cart.php" method="post">';
		echo "<input type='text' name='amount[$p_id]' value='$qty' size='2'/></td>";
                echo '
                    <td><input class="btn btn-primary" type="submit" value="ยืนยันการเพิ่ม"></td>
                    </form>
                ';
		echo "<td >".number_format($sum,2)."</td>";
		//remove product
		echo "<td><a class='btn btn-danger' href='cart.php?p_id=$p_id&act=remove'>ลบ</a></td>";
		echo "</tr>";
	}
	echo "<tr>";
  	echo "<td colspan='5' style='color:white;' bgcolor='#FF0033' align='center'><b>ราคารวม</b></td>";
  	echo "<td align='right' style='color:white;'bgcolor='#FF0033'>"."<b>".number_format($total,2)." บาท</b>"."</td>";
  	echo "<td align='left'style='color:white;' bgcolor='#FF0033'></td>";
	echo "</tr>";
        
}
?></tbody></table></div>

</div>
<script>
function myJavascriptFunction() { 
  var javascriptVariable = document.getElementById("out").value;
  window.location.href = "buy.php?bank=" + javascriptVariable; 
}
</script>
</form>
<form id="frmcart" name="frmcart" method="post" action="?act=update">
  <table width="600" border="0" align="center" class="square">
    <tr>

<tr>
<td colspan="4" align="right">
    <input type="button" name="Submit2" value="สั่งซื้อ" onclick="window.location='confirm.php';" />
</td>
</tr>
</table>
</form>